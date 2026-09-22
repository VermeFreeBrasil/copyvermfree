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

## 2. AS TRÊS DECISÕES E SEUS CRITÉRIOS

### 2.1 MATAR
Só depois do gate de **R$450 gastos** (§13.1). Antes disso, só os três sinais de morte precoce (§13.3): CTR <1,0% com 2.000+ impressões · zero ATC com R$200 · rejeitado/WITH_ISSUES.

| Situação (≥ R$450 gastos) | Ação |
|---|---|
| 0 vendas | MATA |
| ROAS Meta < 2,0 | MATA |
| ROAS Meta 2,0–2,2 | Sobrevive, mas não escala |
| ROAS Meta ≥ 2,2 | Mantém |
| ROAS Meta ≥ 3,5 **e** ≥5 vendas | GRADUA |

### 2.2 Por que o piso é ROAS 2 no Meta — e por que 2,2 é o número melhor
AOV atual: **R$568,73**. O pixel do Meta captura ~74% das vendas reais (188 no Shopify vs ~140 no Meta, janela 15–21/09).

| ROAS Meta | CPA Meta | CPA real | **ROAS blended** |
|---|---|---|---|
| 2,0 | R$284 | R$212 | 2,68 |
| **2,2** | R$258 | R$192 | **3,02** ← meta da conta |
| 3,5 | R$162 | R$121 | 4,70 |

Ou seja: **ROAS 2 no Meta é o piso de não perder dinheiro, mas não chega na meta 3.** Pra bater ROAS 3 blended, o piso de manutenção tem que ser **2,2 no Meta**. Recalcular essa tabela sempre que o AOV mudar mais de 10%.

### 2.3 GRADUAR (teste → escala)
Condições, **todas** juntas:
- [ ] Gastou ≥ R$450
- [ ] ROAS Meta ≥ 3,5 (ou CPA ≤ R$150)
- [ ] **Mínimo 5 vendas** — abaixo disso é sorte, não sinal. Uma venda de Kit Família sozinha faz ROAS 10 e não significa nada.
- [ ] Frequência < 2,0 — se já saturou no teste, não vai aguentar público maior
- [ ] Não está rejeitado nem com issue

**Como graduar, na prática:**
1. **Não mova o anúncio.** Crie um anúncio **novo** com o mesmo criativo dentro do conjunto de escala.
2. **Pause o original no teste** no mesmo dia. Deixar os dois rodando canibaliza o leilão e libera verba de teste que devia estar indo pro próximo criativo.
3. Entre com o ad na escala e **não mexa por 5 dias.**

**Expectativa realista:** o CPA na escala **sempre vem pior** que no teste — público maior é público menos qualificado. **Tolerância: até +40%.** Um ad que fez CPA R$100 no teste e faz R$140 na escala está normal. Se passar de +40%, o criativo dependia do público pequeno — volta pro teste ou morre.

---

## 3. FADIGA — quando um criativo que performava para de performar

Esse é o caso mais caro de errar, porque a reação instintiva (matar) costuma ser a errada.

### 3.1 Como detectar: 3 dias contra os 7 anteriores
Nunca comparar contra lifetime — lifetime esconde o presente. A leitura é:

> **CPA dos últimos 3 dias ÷ CPA dos 7 dias anteriores**

| Razão | Leitura |
|---|---|
| < 1,2 | normal, é ruído |
| 1,2 – 1,5 | observar, não agir |
| **> 1,5** | queda real — diagnosticar |

**Piso de amostra: R$300 gastos na janela de 3 dias.** Abaixo disso não existe queda, existe ruído.

### 3.2 Diagnóstico — três causas, três remédios diferentes
| Sintoma | Causa | O que fazer |
|---|---|---|
| **Frequência subindo + CPA subindo** | Saturação de **público** | **Não mata o criativo.** Troca o público / amplia o conjunto. O criativo está bom, a lista acabou. |
| **Frequência estável + CPA subindo + CTR caindo >30%** | Fadiga real do **criativo** — o hook queimou | Pausa. Não deleta. |
| **CPM subindo sozinho, CTR e freq estáveis** | Leilão/concorrência (data comemorativa, concorrente entrando) | Não é culpa do criativo. Espera ou reduz verba temporariamente. |

### 3.3 Reanimação
Criativo pausado por fadiga **volta em 21–30 dias**, preferencialmente em outro público. **Nunca deletar anúncio** — deletar joga fora o histórico social (curtidas, comentários, compartilhamentos), que é ativo de conversão.

### 3.4 Prevenção
Se a ESCALA depende de 2 criativos, ela vai quebrar. Regra: **cada campanha de escala tem que ter no mínimo 3 anúncios com ROAS ≥ 2,2** rodando. Quando cair pra 2, é sinal de que o teste não está entregando criativo suficiente — o problema está na esteira, não na escala.

---

## 4. RECORTES DE TEMPO — qual janela pra qual pergunta

| Pergunta | Janela | Por quê |
|---|---|---|
| "Esse anúncio novo já pode ser julgado?" | **Acumulado desde o início** (gasto, não dias) | O gate é R$450 gastos. Dia não é critério. |
| "Esse anúncio ainda está bom?" | **Últimos 7 dias** | Aguenta a variação de dia de semana |
| "Esse anúncio está caindo?" | **3 dias vs os 7 anteriores** | Detecta fadiga antes de queimar verba |
| "Como está a conta?" | **Mês**, com os dias de evento isolados | §12 — Dia D e Semana do Cliente inflam a média |
| "Quanto faturamos de verdade?" | **Shopify, sempre** | O Meta subreporta ~26% |

**Nunca usar lifetime pra decidir nada.** Lifetime só serve pra achar criativo antigo que vale reanimar.

---

## 5. ROTINA

| Quando | O quê |
|---|---|
| **Todo dia (5 min)** | Anomalia só: campanha parada, gasto travado, anúncio rejeitado. **Não otimizar.** |
| **Terça e sexta** | Revisão de gate nas 4 campanhas de teste: quem passou de R$450? Gradua, mata ou segue. |
| **Segunda** | Leitura completa das 3 fontes (§12) + verba da semana + checagem de fadiga (3d vs 7d) em toda a escala |
| **Todo mês** | Recalcular a tabela de ROAS/CPA da seção 2.2 com o AOV fechado do mês |

> Nos outros dias: **não mexer.** Cada edição em conjunto ativo reinicia aprendizado.

---

## 6. CONTROLE — tabela de decisão da semana

Preencher na terça e na sexta. Uma linha por anúncio em teste.

| Anúncio | Campanha | Gasto acum. | Vendas | ROAS Meta | Freq | 3d÷7d | Decisão |
|---|---|---|---|---|---|---|---|
| | | | | | | | |

Decisões possíveis: `SEGUE` (não cruzou o gate) · `MATA` · `MANTÉM` · `GRADUA` · `FADIGA-PÚBLICO` · `FADIGA-CRIATIVO`

---

## 7. O QUE AINDA TRAVA A LEITURA

- **Cobertura de UTM em 14,2%** (413 rastreados / 2.486 não rastreados). Enquanto não subir, o Utmify não serve pra decisão de anúncio — só o Meta e o Shopify. Faltam UTMs nos anúncios antigos, e isso só dá pra corrigir na mão no Ads Manager.
- **Públicos de site não retroagem** — precisam ser recriados e acumular do zero. Cada dia parado atrasa a ESCALA QUENTE.
- **O filtro de data do Utmify não está sendo aplicado** nas puxadas de 21–22/09 (devolve lifetime). Enquanto isso, reportar Utmify só como taxa de rastreio.
