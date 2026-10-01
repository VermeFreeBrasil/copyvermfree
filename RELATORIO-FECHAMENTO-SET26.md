# FECHAMENTO AGOSTO + SETEMBRO 2026 — e o plano de outubro

> Puxado em 01/10/2026. Fontes: Shopify, Meta Ads, Utmify, **Supabase** (`compra_aprovada`, `meta_whatsapp`, `emails`, `produtos_cogs`, `produtos_estoque`, `cupons_influencers`, `instagram_stats`) e **n8n** (mapa de integrações).
>
> **Dois meses fechados, não amostra.** Todo número abaixo tem fonte declarada.

---

## 0. A CORREÇÃO QUE MUDA TODOS OS MEUS RELATÓRIOS ANTERIORES

O §12 manda cruzar três fontes e calcular `blended = Shopify ÷ gasto total de mídia`. **Eu vinha usando só o Meta Ads como "gasto total de mídia". Estava errado.**

O Supabase tem `public.meta_whatsapp`, alimentado diariamente pelo n8n (`[VermeFree] Report - Meta API`), com o custo real das WABAs:

| | Agosto | Setembro |
|---|---|---|
| Meta Ads | R$33.700,30 | R$59.140,88 |
| **WhatsApp API** | **R$424,19** | **R$7.604,42** |
| **Mídia total** | **R$34.124,49** | **R$66.745,30** |

Em agosto o WhatsApp custava 1,2% da mídia — dava pra ignorar. Em setembro virou **11,4%**, porque ligaram disparo de **marketing** (R$5.611,73; em agosto era R$0, só utility).

**Blended real de setembro: 6,17 — não 6,96 como eu vinha reportando.**

> **Regra nova pro §12: mídia = Meta Ads + WhatsApp API.** Puxar `meta_whatsapp` do Supabase em toda leitura mensal.

---

## 1. O PLACAR DOS DOIS MESES

| Indicador | Agosto | Setembro | Δ |
|---|---|---|---|
| **Faturamento** (Shopify) | R$355.748,84 | R$411.588,19 | **+15,7%** |
| Pedidos | 613 | 756 | +23,3% |
| AOV | R$577,11 | R$540,10 | −6,4% |
| Desconto / receita bruta | 8,98% | **13,31%** | +48% |
| Sessões | 28.315 | 40.579 | +43,3% |
| Taxa de ATC | 8,03% | 7,71% | −4,0% |
| Conversão | 2,14% | **1,84%** | −14,0% |
| **Mídia total** | R$34.124,49 | R$66.745,30 | **+95,6%** |
| **Blended** | **10,43** | **6,17** | **−40,9%** |
| CPA blended | R$55,67 | R$88,29 | +58,6% |
| Custo por sessão | R$1,21 | R$1,64 | +36% |
| CPM Meta | R$11,64 | **R$27,27** | **+134%** |
| CTR Meta | 2,86% | 2,14% | −25,2% |
| Impressões | 2.895.058 | 2.169.028 | **−25,1%** |
| Novos clientes | 576 | 696 | +20,8% |
| Taxa de recompra | 5,97% | 7,61% | +27,5% |

### 1.1 O número que resume setembro

**Faturamento marginal ÷ mídia marginal:**

```
Δ faturamento = R$411.588,19 − R$355.748,84 = R$55.839,35
Δ mídia       = R$ 66.745,30 − R$ 34.124,49 = R$32.620,81
ROAS MARGINAL = 1,71
```

**Cada real extra de mídia em setembro comprou R$1,71.** Com desconto médio de 13,3% e COGS desconhecido, isso quase certamente destruiu margem.

Pra ter rodado setembro no blended de agosto, a mídia teria que ter sido R$39.462. Foi R$66.745. **Excesso: R$27.283.**

---

## 2. POR QUE: o CPM dobrou, e ele dobra com a verba

Semana a semana (Meta Ads, `time_increment: 7`):

| Semana | Gasto | **CPM** | CTR | Compras | **CPA** | ROAS Meta | Blended¹ |
|---|---|---|---|---|---|---|---|
| 03–09/08 | R$13.542 | R$16,54 | 2,25% | 155 | R$87 | 6,41 | 9,39 |
| 10–16/08 | R$7.664 | R$11,57 | 2,74% | 66 | R$116 | 5,30 | 10,74 |
| **17–23/08** | **R$5.412** | **R$9,36** | **2,91%** | 69 | **R$78** | **7,39** | **13,89** |
| 24–30/08 | R$4.967 | R$8,83 | 3,79% | 30 | R$166 | 3,17 | 7,74 |
| 31/08–06/09 | R$6.575 | R$11,34 | 3,13% | 57 | R$115 | 3,97 | 9,11 |
| 07–13/09 ²| R$13.299 | R$23,42 | 2,35% | 168 | R$79 | 6,34 | 8,11 |
| 14–20/09 ²| **R$17.708** | **R$41,94** | 1,83% | 141 | R$126 | 4,31 | 7,45 |
| **21–27/09** | R$16.651 | R$28,72 | **1,47%** | 88 | **R$189** | 3,20 | **4,99** |

¹ Shopify ÷ Meta da semana (WhatsApp não rateado por semana). ² semana com evento (Dia D 09/09 · Semana do Cliente 14–19/09).

**O CPM da semana mais cara foi 4,5x o da mais barata.** E não é sazonalidade: é a conta comprando leilão mais caro pra entregar volume que o público quente não comporta. As impressões caíram 25% enquanto o gasto subiu 75% — **pagamos mais caro por menos gente.**

### 2.1 A leitura correta (e ela refina o §14)

Cruzando gasto × evento:

| | Com evento | Sem evento |
|---|---|---|
| **Gasto alto** | 07–13/09: CPA R$79 ✅ | **21–27/09: CPA R$189** ❌ |
| **Gasto baixo** | — | **17–23/08: CPA R$78** ✅ |

> **A regra não é "gaste menos". É: verba alta só se paga em dia de evento.** Em dia normal, verba alta compra leilão caro e CPA ruim. O §14 dizia "a última faixa do mês é fraca" — com dois meses, o mecanismo real é o CPM, e ele responde à verba, não ao calendário.

---

## 3. DE ONDE VIERAM AS VENDAS (Supabase `compra_aprovada`)

| Fonte | Ago pedidos | Ago receita | Set pedidos | Set receita |
|---|---|---|---|---|
| `ig` (pago) | 167 | R$90.693 | 152 | R$80.901 |
| `FB` (pago) | 93 | R$53.721 | 113 | R$63.414 |
| `instagram` | — | — | 25 | R$15.959 |
| **`(sem utm)`** | **116** | **R$75.231** | **278** | **R$149.062** |
| `whatsapp_org` | 29 | R$18.148 | **63** | **R$37.676** |
| `insta_org` | 19 | R$9.347 | **62** | **R$29.466** |
| `whatsapp_api` | 9 | R$7.477 | **44** | **R$22.422** |
| `google` | 29 | R$16.567 | 7 | R$3.362 |
| `email_org` | 6 | R$2.964 | 12 | R$6.657 |
| `areademembros_org` | 8 | R$3.478 | 8 | R$3.713 |
| `equipe_vendas` | 7 | R$8.953 | 5 | R$3.917 |

### 3.1 O achado central do relatório

**Mídia paga (`ig` + `FB`):**
- Agosto: **260 pedidos · R$144.415**
- Setembro: **265 pedidos · R$144.314**
- Verba: **+75,5%**

**Praticamente o mesmo resultado com 75% mais verba.** (Contando também `instagram`, 290 pedidos / R$160.274 — +11%, ainda muito abaixo do +75% de verba.)

**Orgânico (`whatsapp_org` + `insta_org` + `email_org` + `areademembros_org`):**
- Agosto: **62 pedidos · R$33.937**
- Setembro: **145 pedidos · R$77.512**
- **+134% em pedidos, +128% em receita, custo ≈ zero**

> **O crescimento de setembro não veio da mídia. Veio do orgânico.** O WhatsApp de grupos sozinho (`whatsapp_org`) fez R$37.676 sem custo de mídia — mais que o dobro de agosto.

### 3.2 WhatsApp API: o único canal pago com conta fechável

R$22.422 de receita ÷ R$7.604 de custo = **ROAS 2,95**. Não é bom, mas é mensurável e cresceu 5x. Diferente do CTWA (§17 do playbook), aqui a UTM existe.

---

## 4. PRODUTO E MIX

| Produto | Ago pedidos | Ago receita | Set pedidos | Set receita | Δ receita |
|---|---|---|---|---|---|
| Protocolo Adulto | 438 | R$217.191 | 565 | R$277.875 | +27,9% |
| Kids 5–9 | 121 | R$47.971 | 129 | R$53.548 | +11,6% |
| Kids 2–4 | 168 | R$47.621 | 185 | R$45.086 | −5,3% |
| Kit Família | 26 | R$28.348 | 22 | R$24.139 | −14,8% |
| **Óleo de Alho** | **88** | **R$9.209** | **215** | **R$4.131** | **−55,1%** |

**Participação:** Adulto 64,5% → **68,6%** · Kids 28,3% → **24,3%** · Família 8,4% → **6,0%**

Duas coisas pra olhar:

1. **O Kids encolheu em participação** apesar de todo o esforço de setembro (campanha Kids, Dia D Kids). O §2 trata a mãe como núcleo do ICP, mas a receita está concentrando no Adulto.
2. **O Óleo de Alho virou outra coisa.** 88 pedidos a R$104,65 médios viraram 215 pedidos a **R$19,21** médios. O produto é R$67 (§6). Ou virou brinde/order bump com desconto pesado, ou tem erro de preço. **Vendeu 144% mais unidades e faturou 55% menos.** Precisa de explicação.

---

## 5. E-MAIL (Supabase `public.emails` · ActiveCampaign)

| | Agosto | Setembro |
|---|---|---|
| Campanhas | 27 | 27 |
| Envios | 94.078 | **295.580** (+214%) |
| Aberturas | 8.580 | 18.947 |
| **Taxa de abertura** | **9,12%** | **6,41%** |
| Cliques | 125 | 398 |
| **Taxa de clique (s/ envios)** | **0,13%** | **0,13%** |

Triplicou o volume, a abertura caiu 30% e o clique ficou em **0,13%** nos dois meses. E-mail trouxe 12 pedidos atribuídos em setembro (`email_org`, R$6.657).

> **Diagnóstico:** 0,13% de clique em 295 mil envios é base sendo queimada, não canal funcionando. O §9 desenha cadências boas — elas não estão produzindo. Isso é da Sarah, mas o número precisa estar na mesa.

---

## 6. INSTAGRAM (Supabase `instagram_stats`)

| Data | Seguidores | Alcance | Visitas ao perfil |
|---|---|---|---|
| 25/09 | 29.579 | 65.763 | 636 |
| 27/09 | 29.731 | **72.627** | 493 |
| 28/09 | 29.910 | 39.478 | 939 |
| 29/09 | 30.047 | 19.243 | 807 |
| 30/09 | 30.090 | **15.340** | 386 |
| 01/10 | 30.157 | 16.512 | 359 |

**Seguidores subindo (+578 em 7 dias), alcance despencando 79%** (72.627 → 15.340). Só temos 7 dias de histórico nessa tabela — não dá pra saber se é ciclo normal ou queda de entrega. **Vale acompanhar: o `insta_org` fez R$29.466 em setembro, é o 2º melhor canal orgânico.**

---

## 7. BLOQUEIOS ABERTOS — todos com dono e tamanho

| # | Bloqueio | Evidência | Custo de não resolver |
|---|---|---|---|
| 1 | **COGS vazio** | `produtos_cogs` tem as 6 categorias criadas e **`custo_unitario` NULL em todas** | Sem breakeven. Com blended 6,17 e desconto 13,3%, não sabemos se outubro dá lucro |
| 2 | **Atribuição sem UTM** | `(sem utm)` saiu de 18,5% → **36,9%** dos pedidos | R$149 mil de receita em setembro sem origem conhecida |
| 3 | **Cupom sem dono** | 18 cupons em `cupons_influencers`, **todos com influencer "(a definir)"** | JULIANA, BRUNA, VICTORIA rodando sem saber o retorno de cada uma |
| 4 | **Estoque negativo** | `produtos_estoque`: Adulto **−2.936**, Óleo **−481**, `estoque_base` = 0 em tudo | Ou a sincronia quebrou, ou está vendendo sem lastro |
| 5 | **Cobertura Utmify 6–10%** | 111 de 126 vendas não rastreadas (30/09) | Utmify inutilizável pra decisão de anúncio |
| 6 | **Dívida de criativo** | CTR 2,86% → 2,14% → **1,47%** na última semana | Todo inventário é de agosto. A preço cheio roda CPA R$142–521 (§19) |
| 7 | **RLS desligado** | 5 tabelas `_backup_*` no Supabase expostas à chave anon | Qualquer um com a chave anon lê e escreve. **Segurança, não marketing.** |

---

## 8. PLANO DE OUTUBRO

### 8.1 Teto de verba — a mudança principal

O dado diz que a faixa eficiente é **≤ R$8.000/semana** (CPM ≤R$12, CPA ≤R$116, blended ≥10). Acima de R$13.000/semana o CPM dobra.

| Cenário | Verba/semana | Verba/dia | Blended esperado |
|---|---|---|---|
| Dia normal | **R$7.000–8.400** | **R$1.000–1.200** | 9–13 |
| Semana com evento | até R$14.000 | 2x no dia D | 6–8 (mas volume alto) |
| ❌ Evitar | >R$13.000 sem evento | — | 3–5 (foi 21–27/09) |

**Hoje a conta está em R$1.500/dia = R$10.500/semana.** Proposta: **baixar pra R$1.150/dia** em dia normal e **concentrar o que sobra em 2 eventos de outubro**.

Economia estimada mantendo faturamento: ~R$10.000 no mês.

### 8.2 Calendário de evento (§14 refinado)

Dois eventos, não mais. O Dia D de 09/09 fez blended **21,88** — é o melhor dia dos dois meses. O Dia D Kids de 28–30/09 fez R$807 de mídia e 2 compras, porque não tinha nada a dizer que a oferta do site já não dizia.

**Regra: evento precisa de oferta própria e lista avisada antes — não de campanha nova no Meta.**

### 8.3 Onde colocar esforço que não é mídia

O orgânico cresceu 134% e não tem orçamento nem dono formal:

1. **`whatsapp_org` — R$37.676 em setembro, custo zero.** É o melhor canal da operação. Merece meta e cadência, não improviso.
2. **`insta_org` — R$29.466, triplicou.** Mas o alcance caiu 79% na última semana. Olhar antes que vire problema.
3. **WhatsApp API — ROAS 2,95, mensurável.** Único canal pago com conta fechável além do Meta. Dá pra otimizar com dado.

### 8.4 Criativo — a dívida que trava tudo

A preço cheio o inventário inteiro roda entre CPA R$142 e R$521 (§19.3). Setembro foi segurado por desconto: a intensidade de desconto subiu 48% (8,98% → 13,31% da receita bruta).

**Outubro precisa de criativo novo testado com verba que cruze o gate** (§13.4: R$450 por anúncio em 5–7 dias). Com R$1.150/dia, reservar **R$200/dia pra teste** cobre 2 criativos por semana cruzando gate.

### 8.5 Os 6 números que destravam o resto

Preencher `produtos_cogs.custo_unitario` — **6 linhas**: Protocolo Adulto, Kids 2–4, Kids 5–9, Kit Família, Óleo de Alho, Outros.

Com isso sai: margem de contribuição real, breakeven ROAS por produto, e a resposta pra "esse desconto de 13,3% cabe?". **Sem isso, todo o resto desse relatório é receita, não lucro.**

---

## 9. METAS SUGERIDAS PRA OUTUBRO

| Indicador | Setembro | Meta outubro | Como |
|---|---|---|---|
| Faturamento | R$411.588 | **R$410–430 mil** | manter, não crescer na marra |
| Mídia total | R$66.745 | **R$45–50 mil** | teto semanal (8.1) |
| **Blended** | **6,17** | **≥ 8,5** | consequência dos dois acima |
| CPM Meta | R$27,27 | ≤ R$18 | menos pressão de leilão |
| CTR Meta | 2,14% | ≥ 2,5% | criativo novo (8.4) |
| Conversão | 1,84% | ≥ 2,1% | menos tráfego frio comprado caro |
| Desconto/receita | 13,31% | ≤ 10% | oferta em evento, não contínua |
| `(sem utm)` | 36,9% | ≤ 20% | corrigir rastreio |
| Recompra | 7,61% | ≥ 9% | §9 (protocolo é 2–4x/ano) |

> **A meta não é faturar mais. É faturar o mesmo gastando 30% menos** — porque o dado mostra que o real extra de setembro comprou R$1,71.
