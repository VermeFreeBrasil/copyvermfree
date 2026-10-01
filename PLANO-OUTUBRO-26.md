# PLANO DE OUTUBRO 2026 — rotina diária

> Montado em 01/10 sobre o fechamento de ago+set (`RELATORIO-FECHAMENTO-SET26.md`) e o dado de custo que o Gabriel passou: **COGS não passa de 20% do valor de vendas.**
>
> **Este documento é pra aplicar, não pra ler.** A parte 1 é a conta. A parte 2 é o que fazer todo dia.

---

# PARTE 1 — A CONTA, AGORA QUE DÁ PRA FAZER

## 1.1 Margem de contribuição

Com COGS em 20%, sobram **80% de cada real faturado** antes de mídia. Mas COGS não é o único custo variável. Como não temos os outros números, a tabela abaixo mostra o que acontece em cada cenário:

| Além do COGS (frete, gateway, imposto) | Margem de contribuição | **Breakeven ROAS** | A R$1,71 de ROAS marginal, cada real de mídia rendeu |
|---|---|---|---|
| 0% | 80% | **1,25** | **+R$0,37** |
| 10% | 70% | 1,43 | +R$0,20 |
| **20%** (cenário provável) | **60%** | **1,67** | **+R$0,03** |
| 25% | 55% | 1,82 | **−R$0,06** |

### ⚠️ Correção do que eu disse ontem

Eu afirmei que o gasto extra de setembro "quase certamente destruiu margem". **Com 20% de COGS isso está errado.** O ROAS marginal de 1,71 ficou em algum ponto entre **+R$0,37 e −R$0,06 por real** — ou seja, **de levemente lucrativo a empatado**, não destrutivo.

O que continua verdade: **foi trabalho e risco pra ganhar quase nada.** Esse é o argumento pro teto, não "estamos perdendo dinheiro".

## 1.2 A conta é lucrativa na média — o problema é o último real

| | Setembro |
|---|---|
| Faturamento | R$411.588 |
| COGS (20%) | −R$82.318 |
| **Contribuição antes de mídia** | **R$329.271** |
| Mídia total | −R$66.745 |
| **Contribuição após mídia** | **R$262.525** |

Ainda faltam frete, gateway e imposto — mas a folga é grande.

**CPA blended de setembro: R$88,29. CPA máximo que o AOV suporta: ~R$324** (AOV R$540 × 60% de contribuição).

> **Conclusão que muda a postura: não é hora de cortar com medo.** É hora de parar de comprar o leilão caro. A diferença importa — corte por pânico mata campeão, teto por disciplina não.

## 1.3 Teto de CPA por produto (referência de bolso)

Contribuição a 60% (COGS 20% + 20% de outros custos):

| Produto | Preço | CPA máximo | CPA "confortável" (metade do teto) |
|---|---|---|---|
| Kids 5–9 | R$389 | R$233 | **R$117** |
| Protocolo Adulto | R$347 | R$208 | **R$104** |
| Kids 2–4 | R$270 | R$162 | **R$81** |
| Óleo de Alho | R$67 | R$40 | **R$20** |

As faixas do §13.2 (campeão ≤R$90 · saudável R$90–150 · cinza R$150–200 · corta >R$200) continuam válidas como regra de operação — agora sabemos que elas são **conservadoras de propósito**, e que o teto real do Adulto é R$208.

---

# PARTE 2 — A ROTINA

## 2.1 Verba de outubro

**Alvo do mês: faturar R$410–430 mil com R$45–50 mil de mídia → blended ≥ 8,5.**

| | Valor |
|---|---|
| Dia normal (27 dias) | **R$1.200/dia** |
| Dia de evento (4 dias) | **R$2.400/dia** |
| Meta Ads no mês | ~R$42.000 |
| WhatsApp API no mês | ~R$5.000 |
| **Mídia total** | **~R$47.000** |

### Distribuição do R$1.200/dia

| Conjunto | Hoje | **Outubro** |
|---|---|---|
| ESCALA FRIO \| ADV | R$600 | **R$550** |
| ESCALA QUENTE | R$350 | **R$280** |
| TESTE \| ADV | R$300 | **R$200** ← vira a verba de teste |
| TESTE \| KIDS Maes | R$110 | **R$70** |
| CTWA QUENTE CONSOLIDADO | R$100 | **R$100** (recém-montado, precisa de dado) |
| **Total** | R$1.460 | **R$1.200** |

Os R$200/dia do TESTE|ADV fazem **2 criativos cruzarem o gate de R$450 por semana** (§13.4).

---

## 2.2 TODO DIA — 10 minutos, de manhã

### Passo 1 · Taxa de carrinho de ontem (Shopify)

```
FROM sessions SHOW sessions, sessions_with_cart_additions, conversion_rate TIMESERIES day SINCE -3d UNTIL today
```

`ATC = sessions_with_cart_additions ÷ sessions`

| ATC de ontem | **Verba de hoje** |
|---|---|
| ≥ 7% | **R$1.200** — patamar cheio |
| 5 – 7% | R$1.200, mas **não sobe nada** |
| 3 – 5% | **R$850** (70%) |
| < 3% por 2 dias seguidos | **R$480** (40%) e segura até voltar |
| Dia de evento | **R$2.400** |

### Passo 2 · O alarme de CPM — a regra nova de outubro

```
Meta Ads · nível conta · últimos 7 dias · campo cpm
```

| CPM 7 dias | Ação |
|---|---|
| ≤ R$18 | tudo certo |
| R$18 – 22 | atenção, não sobe verba |
| **> R$22** | **corta 20% da verba, mesmo com ATC bom** |

> **Por que essa regra existe:** em setembro o CPM dobrou (R$11,64 → R$27,27) e as impressões caíram 25%. Pagamos mais caro por menos gente. O CPM é o aviso que chega antes do CPA.

### Passo 3 · Checagem de anomalia (2 min)

- [ ] Alguma campanha parada ou com gasto travado?
- [ ] Algum anúncio **rejeitado** ou `WITH_ISSUES`?
- [ ] **Algum conjunto ficou sem nenhum anúncio ativo?** ← o erro de 30/09, R$690/dia apontado pro vazio
- [ ] O gasto de ontem bateu com o planejado?

**Nos outros dias: não otimizar.** Cada edição em conjunto ativo reinicia aprendizado (§13.6).

---

## 2.3 SEGUNDA — 30 minutos

1. **As cinco fontes** (§12 corrigido): Shopify · Meta · Utmify · **Supabase** · n8n
   - Blended da semana = Shopify ÷ (**Meta + WhatsApp**)
   - Taxa de rastreio da Utmify — **abaixo de 30% não decide anúncio**
   - `compra_aprovada` por `utm_source`: pago vs orgânico
2. **Revisão de gate** (§13.1) — quem passou de R$450? Gradua, mata ou segue
3. **Decisão de verba da semana** com a tabela de ATC + o alarme de CPM
4. **Isolar dias de evento do baseline** antes de comparar qualquer coisa

## 2.4 QUINTA — 15 minutos

Só revisão de gate. Sem mexer em verba.

## 2.5 FIM DO MÊS (31/10)

- Recalcular as faixas de CPA com o mês fechado (§13.2)
- Recalcular o calendário de verba (§14)
- Fechar o mês nas cinco fontes

---

## 2.6 Antes de matar qualquer anúncio — a checklist corrigida

- [ ] Já gastou **R$450**?
- [ ] A janela que estou olhando **tem dia de evento dentro**? (se tem, separa — foi o erro de 30/09)
- [ ] O CPA está acima de R$200 **no Meta** e acima de **R$130** no blended (Meta × 0,64)?
- [ ] Ele roda em mais de um conjunto (canibalizando o próprio dado)?
- [ ] **Se eu matar, sobra anúncio ativo nesse conjunto?**

Qualquer resposta que comprometa a leitura: **não mata — corrige e espera o gate.**

---

# PARTE 3 — O CALENDÁRIO DE OUTUBRO

## 3.1 Dois eventos, não mais

O Dia D de 09/09 fez blended **21,88** — o melhor dia dos dois meses. O Dia D Kids de 28–30/09 gastou R$807 de mídia e fez 2 compras.

**A diferença:** o de 09/09 tinha oferta própria e lista avisada antes. O de 28–30/09 era uma campanha nova no Meta em cima de uma oferta que o site inteiro já dava.

> **Regra: evento é oferta + lista avisada. Campanha nova no Meta não cria evento.**

| Semana | O que fazer |
|---|---|
| **01–05/10** | Patamar normal. Subir criativo novo no TESTE. Primeira semana é historicamente forte (§14) — aproveitar sem subir verba |
| **06–12/10** | **Evento 1** (2 dias a R$2.400). Lista avisada 48h antes |
| **13–19/10** | Normal. Gate na segunda e quinta |
| **20–26/10** | Normal. **Vigiar o CPM** — foi nessa faixa que setembro quebrou |
| **27–31/10** | **Evento 2** (2 dias a R$2.400) + fechamento do mês |

## 3.2 O que não é mídia e vale mais que mídia

O orgânico dobrou em setembro e **não tem dono formal**:

| Canal | Set | Custo |
|---|---|---|
| `whatsapp_org` (grupos) | **R$37.676** | zero |
| `insta_org` | **R$29.466** | zero |
| `email_org` | R$6.657 | zero |

**R$73.799 — 18% do faturamento — vindo de canal sem orçamento.** Enquanto isso R$66.745 de mídia paga comprou o mesmo número de pedidos que agosto.

**A alavanca de outubro não é o Gerenciador.** Se o `whatsapp_org` crescer mais 50% (R$18 mil), isso vale mais que qualquer otimização de anúncio que eu faça no mês — e custa zero de mídia.

---

# PARTE 4 — AS 5 PENDÊNCIAS, EM ORDEM DE RETORNO

| # | O quê | Tamanho | Por quê |
|---|---|---|---|
| 1 | **Números da Sarah no CTWA** | 3 números por semana | Único jeito de saber se R$100/dia ali vale. Sem isso o canal fica no escuro |
| 2 | **Óleo de Alho: R$104 → R$19 por pedido** | 1 investigação | Vendeu 144% mais e faturou 55% menos. Ou virou brinde, ou tem erro de preço |
| 3 | **UTM: 37% dos pedidos sem origem** | correção de rastreio | R$149 mil em setembro sem saber de onde veio |
| 4 | **Cupons sem dono** (18 cadastrados, todos "(a definir)") | preencher planilha | JULIANA, BRUNA, VICTORIA rodando sem medir retorno |
| 5 | **RLS desligado em 5 tabelas** `_backup_*` | decisão de quem cuida do banco | Qualquer um com a chave anon lê e escreve. **Segurança, não marketing** |

---

## O resumo de uma linha

**Outubro não é pra crescer. É pra faturar o mesmo gastando 30% menos, parar de comprar leilão caro, e descobrir se o orgânico aguenta ser o motor.**

Se der certo: R$420 mil com R$47 mil de mídia = blended **8,94** contra 6,17 de setembro.
