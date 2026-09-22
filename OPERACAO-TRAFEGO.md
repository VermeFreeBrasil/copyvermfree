# OPERAÇÃO DE TRÁFEGO — VermeFree

> Documento de trabalho. Aqui ficam as **regras de decisão** (matar, manter, graduar, escalar) e a estrutura de campanhas.
> O contexto de marca e as regras de claim estão no `CLAUDE.md`. O protocolo de dados (3 fontes) é o §12 de lá; o sistema de gate por gasto é o §13.
> Última revisão: 22/09/2026

---

## 1. ESTRUTURA — 2 ESCALA + 1 TESTE + TOPO

Verba: **R$2.000/dia**.

| Campanha | Estrutura | Verba/dia |
|---|---|---|
| **ESCALA FRIO** | 1 campanha · 1 conjunto · X campeões | R$750 |
| **ESCALA QUENTE** | 1 campanha · 1 conjunto · X campeões | R$500 |
| **TESTE** | 1 campanha · 3 conjuntos · anúncios novos | R$600 |
| **TOPO DE FUNIL** | video view — alimenta o público quente de daqui a 30 dias | R$150 |

**Os mesmos criativos campeões rodam nas duas campanhas de escala.** Pode, porque os públicos são diferentes e não disputam o mesmo leilão. O que **não** pode é o mesmo anúncio em dois conjuntos do **mesmo** público (§13.4 do CLAUDE.md).

### Os 3 conjuntos da campanha de teste
| Conjunto | Público |
|---|---|
| **ADV** | Advantage / aberto |
| **SITE + ENG IG VERMEFREE** | visitantes do site + engajamento do @vermefree |
| **ENG DR WILLIAM** | engajamento do perfil do Dr. William |

> O público de engajamento do Dr. William é **objeto de segmentação**, não conteúdo. O nome fica dentro do gerenciador e nunca aparece em anúncio, legenda ou fala — a regra dura do §4 do CLAUDE.md continua valendo integralmente.

### Regras duras dessa estrutura
1. **A campanha de teste é ABO — orçamento no conjunto, nunca CBO.** Em CBO o Meta joga quase tudo no conjunto mais barato e os outros dois nunca cruzam o gate de R$450. O teste morre sem dado.
2. **Excluir os públicos quentes do conjunto ADV.** Sem exclusão, o ADV absorve as mesmas pessoas dos outros dois conjuntos e você paga caro por gente que já era sua — e o dado dos três fica impossível de comparar.
3. **Máximo 3 anúncios por conjunto de teste.** Com R$200/dia e 3 anúncios, cada um pega ~R$67/dia e cruza o gate em ~7 dias. Com 5 anúncios são 13 dias e o ciclo de decisão quebra.
4. **Mínimo 3 anúncios com ROAS ≥ 2,2 em cada campanha de escala.** Caiu pra 2, o problema está na esteira de teste, não na escala.

### O que o público de site ainda não entrega
Os públicos de site **não retroagem** — só acumulam a partir da data de criação. O conjunto SITE + ENG IG vai rodar praticamente só com o engajamento do Instagram até os públicos de site encherem. Contar com isso na leitura dos primeiros 30 dias.

## 2. O MODELO MENTAL

> **Teste descobre → escala colhe → régua limpa → fadiga recicla.**
> Escala nunca testa criativo novo. Teste nunca vira motor de faturamento. É uma esteira, não dois silos.

### A regra que organiza tudo o resto
> **MATA por GASTO. GRADUA por CONVERSÃO.**

Ausência de sinal só é confiável depois de gastar — por isso matar exige gasto acumulado. Presença de sinal se mede em **conversão**, não em dinheiro queimado. Gate de gasto pra graduar pune o anúncio mais eficiente: com gate de R$450, um ad de CPA R$37 precisa de 12 vendas pra provar o que um de CPA R$144 prova com 3.

---

## 3. AS TRÊS DECISÕES

### 3.1 GRADUAR (teste → escala)
As três condições juntas:

- [ ] **≥ 5 compras** no período — é o sinal principal
- [ ] **Gasto ≥ R$150** — piso de sanidade, evita graduar sorte
- [ ] **ROAS Meta ≥ 2,2**

Vendas confirmadas cruzando Shopify (venda real) + Utmify (atribuição) quando a cobertura permitir. **Meta sozinho não promove ninguém.**

**Como subir, na prática:**
1. **Recria o anúncio dentro da campanha de escala** — não move o objeto. Novo ad, mesmo vídeo, UTM correto já na criação (criativo é imutável na Meta).
2. **Deixa o original rodando no teste por 3 dias**, até o clone pegar tração. Não corta a fonte antes da cópia aquecer.
3. **No 4º dia pausa o original** — a partir daí ele só canibaliza leilão e prende verba de teste que devia estar bancando o próximo criativo.
4. **Sobe verba devagar: +20% a cada 2–3 dias** enquanto segurar o ROAS. Salto grande reseta aprendizado.

**Expectativa calibrada:** o CPA na escala **sempre vem pior** que no teste — público maior é público menos qualificado. **Tolerância: +40%.** Ad que fez R$100 no teste e faz R$140 na escala está normal. Passou disso, dependia do público pequeno: volta pro teste.

### 3.2 MATAR — CPA-morto (nunca performou)
> **Gastou R$450 e fez 0 compra = corta na hora**, não importa a janela. Já provou que não converte.

R$450 = 3× o CPA-alvo de R$150. Antes disso, só os três sinais de morte precoce: CTR <1,0% com 2.000+ impressões · zero ATC com R$200 · rejeitado/WITH_ISSUES.

### 3.3 MANTER — a régua de corte por ROAS (7 dias)
| ROAS 7d | Gasto | Ação |
|---|---|---|
| **≥ 2,2** | qualquer | Mantém. Se ≥ 4 e estável, candidato a +20% de verba |
| **2,0 – 2,2** | qualquer | Sobrevive mas não escala — está abaixo da meta da conta |
| **< 2,0** | ainda não bateu R$150 | Espera. Pode ser cedo |
| **< 2,0 por 3 dias** | já gastou | Corta |

### 3.4 Por que o piso é 2,2 e não 2,0
AOV atual **R$568,73**. O pixel do Meta captura ~74% das vendas reais (188 Shopify vs ~140 Meta, 15–21/09).

| ROAS Meta | CPA Meta | CPA real | **ROAS blended** |
|---|---|---|---|
| 2,0 | R$284 | R$212 | 2,68 |
| **2,2** | R$258 | R$192 | **3,02** ← meta da conta |
| 3,5 | R$162 | R$121 | 4,70 |

**ROAS 2 no Meta não perde dinheiro, mas não bate a meta 3.** Recalcular esta tabela sempre que o AOV mudar mais de 10%.

> ⚠️ **Falta o breakeven.** Sem a margem de contribuição da VermeFree (custo de produto + frete + taxas) não dá pra dizer onde a conta empata. A Botanika opera com breakeven blended 1,8 (margem ~56%). **Preencher quando o Gabriel passar a margem** — até lá o piso de 2,2 é meta, não guardrail de sobrevivência.

---

## 4. FADIGA — o campeão que funcionou e caiu

Diferente do CPA-morto (nunca funcionou). Aqui é **ativo valioso cansado** — e a reação instintiva (matar) é a errada.

### 4.1 Detecção: 3 dias contra os 7 anteriores
> **CPA dos últimos 3 dias ÷ CPA dos 7 dias anteriores**

| Razão | Leitura |
|---|---|
| < 1,2 | ruído |
| 1,2 – 1,5 | observar, não agir |
| **> 1,5** | queda real — diagnosticar |

**Piso de amostra: R$300 gastos na janela de 3 dias.** Abaixo disso não existe queda, existe ruído.

### 4.2 Sinais, em ordem de importância
1. **ROAS caindo 3 dias seguidos** e já abaixo do que era — cruzar Shopify pra confirmar que é venda real caindo, não tracking
2. **Frequência subindo (>2,5) com ROAS caindo junto** — assinatura clássica de saturação
3. **CTR caindo + CPM subindo** — o criativo cansou e a Meta cobra mais pra entregar o mesmo
4. **CPA subindo acima do alvo de forma consistente**

### 4.3 Diagnóstico: três causas, três remédios opostos
| Sintoma | Causa | O que fazer |
|---|---|---|
| **Freq subindo + CPA subindo** | Saturação de **público** | **Não mata o criativo.** Amplia/troca o público. O criativo está bom, a lista acabou. |
| **Freq estável + CPA subindo + CTR −30%** | Fadiga do **criativo** — o hook queimou | Refresca o ângulo (novo gancho nos 3 primeiros segundos, mesmo núcleo) ou baixa verba. Só pausa se não responder. |
| **CPM subindo sozinho**, CTR e freq estáveis | Leilão / concorrência | Não é culpa do criativo. Espera ou reduz verba temporariamente. |

### 4.4 Banco de campeões
**Nunca deletar anúncio.** Deletar joga fora o histórico social (curtidas, comentários, compartilhamentos), que é ativo de conversão. Campeão em fadiga **revive em 21–30 dias** com público renovado. Arquiva, não apaga.

### 4.5 Os três destinos de um criativo
| Situação | Diagnóstico | Ação |
|---|---|---|
| Gastou R$450, 0 venda | Nunca performou | **Mata** (CPA-morto) |
| ROAS ≥ 2,2 estável | Campeão ativo | **Mantém / escala** |
| Foi bom, ROAS caindo 3d + freq alta | **Fadiga** | Refresca ângulo, baixa verba, arquiva pra reviver |

---

## 5. RECORTES DE TEMPO

| Pergunta | Janela |
|---|---|
| "Esse anúncio já pode graduar?" | Acumulado desde o início — conta **conversões**, não dias |
| "Esse anúncio ainda está bom?" | **7 dias** (padrão) |
| "Esse anúncio está caindo?" | **3 dias vs os 7 anteriores** |
| "Como está a conta?" | **Mês**, com os dias de evento isolados (§12 do CLAUDE.md) |
| "Quanto faturamos de verdade?" | **Shopify, sempre** |

**Quando encurtar pra 3 dias:** produto em promoção, lua nova, ou anúncio gastando muito rápido — pega o sangramento cedo.

**Quando alongar pra 14 dias:** volume baixo e poucas conversões em 7 dias — evita cortar campeão por azar de amostra.

> **A VermeFree alonga mais que a Botanika.** AOV R$568 contra ticket de suplemento significa menos conversões por anúncio na mesma verba. Menos conversão = mais ruído = janela mais longa. Na dúvida entre 7 e 14 dias aqui, é 14.

**Nunca cortar no susto de 1 dia ruim.** Foi exatamente o que derrubou as sessões do site em 21/09: sobraram 7 anúncios entregando, o alcance encolheu e o faturamento caiu 65% — com o CPA no melhor nível do mês. Decisão de corte = janela + gasto mínimo + 3 fontes. Nunca o Meta de ontem sozinho.

---

## 6. ROTINA

O sistema só funciona com ritmo fixo. Sempre cruzando Shopify + Meta + Utmify.

### Diário (~9h, 10 min)
- **Blended do dia anterior** (Shopify total ÷ gasto Meta) contra a meta de 3.
- **Caçar sangramento óbvio:** anúncio que gastou e fez 0 venda ontem → **marca, não corta.** Um dia não decide.
- **Conferir que a verba total bate R$2.000 e que nenhuma campanha se pausou sozinha.** Editar orçamento de conjunto ativo força pausa na Meta — sempre reativar depois de mexer.

### A cada 2–3 dias
- **Graduação:** anúncio de teste que bateu as 3 condições (§3.1) → recria na escala.
- **Escala de verba:** campeão estável com ROAS ≥ 4 → **+20%**.
- **Corte:** anúncio < 2,0 por 3 dias com gasto feito → corta.

### Semanal — segunda (recorte 7 dias, a fonte da verdade)
- Ranking de anúncios por ROAS 7d → aplica a régua (§3.3).
- Ranking de produtos por faturamento no Shopify → confere se o mix ainda é o mesmo.
- **Checa fadiga de todos os campeões** (3d vs 7d anteriores, §4.1) → refresca ângulo.
- Garante que todo anúncio novo subiu com UTM correto.
- Verba da semana.

### Mensal
Recalcular a tabela de ROAS/CPA do §3.4 com o AOV fechado do mês.

> Nos outros dias: **não mexer.** Cada edição em conjunto ativo reinicia aprendizado. A conta perde mais por excesso de mão do que por falta.

---

## 7. PADRÃO DE UTM

Criativo é **imutável** na Meta — a UTM tem que entrar certa **na criação do anúncio**. Não dá pra corrigir depois via API.

```
utm_source=MetaAds
utm_campaign={{campaign.id}}
utm_medium={{adset.id}}
utm_content={{ad.id}}
utm_term={{placement}}
```

**Só IDs, nunca nomes.** Os nomes de campanha da VermeFree usam pipe (`|`) e isso quebrou as UTMs em agosto — o `utm_term` truncou "Instagram_Stories" em "Instag", depois "In", depois "I".

**`utm_source=MetaAds`, nunca `FB`** — é o padrão da Botanika e alinha as duas contas no Utmify. Vale pra todo anúncio novo daqui pra frente.

---

## 8. O QUE MUDA DA BOTANIKA PRA VERMEFREE

O playbook foi trazido inteiro. Estes são os pontos onde a mecânica **tem** que ser diferente, e o porquê:

| Dimensão | Botanika | VermeFree | Consequência |
|---|---|---|---|
| **Estrutura de teste** | 4 campanhas, 1 por produto | **1 campanha, 3 conjuntos por público** | A VermeFree tem 1 produto valendo 69% do faturamento. Testar por produto aqui fragmentaria o aprendizado sem ganho. |
| **CBO vs ABO no teste** | CBO (funciona: 1 conjunto só) | **ABO obrigatório** | Com 3 conjuntos, CBO concentra tudo no mais barato e os outros dois nunca acumulam conversão. Com 1 conjunto dá no mesmo — por isso a Botanika pode usar CBO. |
| **Ticket** | suplemento | **AOV R$568** | Menos conversões por anúncio na mesma verba → **janelas mais longas** (§5). |
| **Gate de graduação** | ~1 CPA + 3–5 compras | **5 compras + R$150 + ROAS 2,2** | Mesma lógica, calibrada pro CPA-alvo daqui (R$150). |
| **Públicos de remarketing** | site 30d, ATC, checkout funcionando | **vazios** | Públicos de site não retroagem. O quente da VermeFree roda quase só em engajamento de Instagram até encherem. |
| **Compliance** | — | **ANVISA + regra dura do Dr. William** | O criativo tem restrição de claim (§4 do CLAUDE.md). O público de engajamento do Dr. William pode ser usado como segmentação; o nome nunca aparece em peça. |
| **Cobertura de UTM** | operante | **14,2%** | Utmify ainda não serve pra decisão de anúncio na VermeFree. Decidir com Meta + Shopify até subir. |

**Onde as duas contas aprenderam a mesma lição:** cortar quente demais derruba conversão. A Botanika registrou isso no playbook; a VermeFree viveu em 21/09 — sessões de 3.240 → 2.038 e faturamento de R$23.550 → R$8.269, com o CPA no melhor nível do mês.

---

## 9. CONTROLE — tabela de decisão

Preencher a cada 2–3 dias. Uma linha por anúncio em teste.

| Anúncio | Conjunto | Gasto | Vendas | ROAS 7d | Freq | 3d÷7d | Decisão |
|---|---|---|---|---|---|---|---|
| | | | | | | | |

Decisões: `SEGUE` · `MATA` (CPA-morto) · `MANTÉM` · `GRADUA` · `FADIGA-PÚBLICO` · `FADIGA-CRIATIVO` · `ARQUIVA`

---

## 10. O QUE AINDA TRAVA A LEITURA

- **Cobertura de UTM em 14,2%** (413 rastreados / 2.486 não). Até subir, o Utmify só serve como taxa de rastreio — decisão de anúncio sai de Meta + Shopify.
- **Públicos de site não retroagem** — precisam ser recriados e acumular do zero. Cada dia parado atrasa a ESCALA QUENTE.
- **Filtro de data do Utmify não está sendo aplicado** nas puxadas via API (devolve lifetime).
- **Margem de contribuição desconhecida** — sem ela não dá pra fixar o breakeven blended (§3.4).
