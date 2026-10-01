-- =====================================================================
-- LISTA DE CICLO — OUTUBRO/26
-- Clientes que compraram UMA vez, entre 90 e 200 dias atrás,
-- e nunca voltaram. São as pessoas na janela do 2º ciclo.
--
-- COMO USAR:
--   Supabase > SQL Editor > cola e roda > botão "Download CSV"
--   (ou pelo n8n, alimentando o SendFlow direto — sem baixar nada)
--
-- Conferido em 01/10/2026: 796 clientes · 785 com telefone
--   ADULTO 427 · KIDS 331 · FAMÍLIA 38
--   compras entre 20/04 e 03/07
-- =====================================================================

WITH c AS (
  SELECT lower(trim(email)) AS em,
         count(*)  AS compras,
         max(data) AS ultima
  FROM compra_aprovada
  WHERE email IS NOT NULL AND email <> ''
  GROUP BY 1
),
alvo AS (
  SELECT em, ultima
  FROM c
  WHERE compras = 1                                  -- nunca repetiu
    AND current_date - ultima BETWEEN 90 AND 200     -- janela do 2º ciclo
)
SELECT DISTINCT ON (a.em)
  CASE WHEN ca.produto ILIKE '%Fam%'                               THEN 'FAMILIA'
       WHEN ca.produto ILIKE '%2 a 4%'                             THEN 'KIDS_2A4'
       WHEN ca.produto ILIKE '%5 a 9%'                             THEN 'KIDS_5A9'
       WHEN ca.produto ILIKE '%Kids%' OR ca.produto ILIKE '%Infantil%' THEN 'KIDS'
       ELSE 'ADULTO' END                                   AS linha,
  ca.nome,
  regexp_replace(COALESCE(ca.telefone,''),'[^0-9]','','g')  AS telefone,
  ca.email,
  ca.data                                                   AS ultima_compra,
  (current_date - ca.data)                                  AS dias_desde,
  round(ca.valor::numeric,2)                                AS valor_ultima,
  ca.produto
FROM alvo a
JOIN compra_aprovada ca
  ON lower(trim(ca.email)) = a.em
 AND ca.data = a.ultima
ORDER BY a.em, ca.id;


-- =====================================================================
-- VARIAÇÃO: quem entra na janela DURANTE outubro (60-89 dias hoje)
-- 474 pessoas. Útil pro 2º disparo, depois do Dia D.
-- Troque a linha do BETWEEN acima por:
--     AND current_date - ultima BETWEEN 60 AND 89
-- =====================================================================


-- =====================================================================
-- CONFERÊNCIA (roda isso antes, não traz dado pessoal nenhum)
-- =====================================================================
-- WITH c AS (
--   SELECT lower(trim(email)) AS em, count(*) AS compras, max(data) AS ultima
--   FROM compra_aprovada WHERE email IS NOT NULL AND email <> '' GROUP BY 1
-- )
-- SELECT CASE
--          WHEN current_date - ultima BETWEEN 60 AND 89   THEN 'aquecendo'
--          WHEN current_date - ultima BETWEEN 90 AND 200  THEN 'NA JANELA'
--          WHEN current_date - ultima > 200               THEN 'frio'
--          ELSE 'recente' END AS janela,
--        count(*) AS clientes
-- FROM c WHERE compras = 1 GROUP BY 1 ORDER BY 1;
