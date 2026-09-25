# OPERAÇÃO DE TRÁFEGO — VermeFree

> Documento de trabalho. Aqui ficam as **regras de decisão** (matar, manter, graduar, escalar) e a estrutura de campanhas.
> O contexto de marca e as regras de claim estão no `CLAUDE.md`. O protocolo de dados (3 fontes) é o §12 de lá; o sistema de gate por gasto é o §13.
> Última revisão: 22/09/2026

---

## 1. ESTRUTURA NO AR — 25/09/2026

Verba: **R$2.675/dia**.

| Campanha | Estrutura | Verba/dia |
|---|---|---|
| **VF \| ESCALA FRIO \| ADV** | CBO · 1 conjunto · 10 campeões | R$750 |
| **VF \| ESCALA QUENTE** | ABO · 1 conjunto · os mesmos campeões | R$500 |
| **VF \| TESTE 1 \| SET26 \| ABO** | ABO · 3 conjuntos · inconclusivos | R$575 |
| **VF \| TESTE 2 \| CRIATIVOS NOVOS** | ABO · 3 conjuntos · criativos nunca usados | R$600 |
| **VF \| TOPO DE FUNIL \| VIDEO VIEWS \| ABO** | ABO · VIDEO_VIEWS · frio aberto | R$150 |
| **[CTWA] RECUPERACAO \| QUASE COMPROU** | ABO · 2 conjuntos · destino WhatsApp | R$100 |
| *VF \| RECONHECIMENTO* | *CBO · REACH · pausada, esperando os posts* | *(150)* |

**Escala R$1.250 · Teste R$1.175 · Topo R$150 · Recuperação R$100.** O teste ficou em 46% da verba — alto, mas é a fase: a conta tem 20 criativos sem leitura e só 10 provados.

### CTWA — recuperação pro WhatsApp (R$100) — subiu 25/09
Objetivo Envolvimento · otimização **CONVERSATIONS** · `destination_type: WHATSAPP` · Advantage+ Audience **desligado** (pra não vazar do público). Sem Direct e sem Messenger.

| Conjunto | Público | R$/dia | Anúncios |
|---|---|---|---|
| **A \| SITE — VIU PRODUTO + CHECKOUT 180D** | os dois públicos de pixel, excluindo COMPRADORES 180D | 60 | AD_CTWA_DUVIDAS · AD_CTWA_UNBOX_KIT |
| **B \| ENG IG VERMEFREE 30D** | ENG 30D + ENG 7D @vermefree (25–29 mil) | 40 | os mesmos dois |

**Por que dois conjuntos:** o A é o público que o Pedro pediu; o B existe porque os públicos de pixel podem estar vazios (§10.1). Se o A não entregar em 48h, a verba dele vai pro B. Mesmo criativo nos dois — assim o público é a única variável.

**O número do WhatsApp não é escolhível por API.** O anúncio usa o número conectado à Página VermeFree (`1077262318812256`). Conferir nas configurações da Página que é o 31 3157-3845 (suporte Poly).

**Fila pra quando a lista destravar:** público de **checkout abandonado do Shopify** — 1.273 abandonos em 180 dias, com nome, e-mail ou telefone. É a versão literal de "preencheu formulário e não comprou", e não depende do pixel. Trava: regra de PII do ambiente + termos de lista de clientes não aceitos.

### TESTE 1 — inconclusivos (R$575)
| Conjunto | Público | R$/dia | Anúncios |
|---|---|---|---|
| **ADV** | Advantage / mulheres 30–50 | 200 | 12SINAIS · DUVIDAS |
| **ENG IG VERMEFREE + SITE** | ENG 180D @vermefree (89–105 mil) + site | 200 | JULIANA_UNBOX · UGC_TAYLOU · CUIDADO |
| **KIDS** | mulheres 28–45 BR | 175 | KIDS_AMAMENTACAO · KIDS_PET · AD_TD_RANGER_02 |

Conjunto **LAL 1% CLIENTES pausado** no corte de 22/09. Fila: UNBOX_02 (1 venda) · UGC_LUDI (0).

### TESTE 2 — criativos novos (R$600)
| Conjunto | Público | R$/dia | Anúncios |
|---|---|---|---|
| **VIDEO VIEW 25%** | 802–944 mil | 200 | Quando foi sua última limpeza natural? · Três sinais pra prestar atenção · Seu corpo pode estar pedindo isso |
| **HOOK RATE 15D** | 129–152 mil | 200 | Abrindo o kit VermeFree · Suas dúvidas respondidas com calma · O que vem no kit por dentro |
| **LAL 1% ENG IG 180D** | lookalike | 200 | Desparasitação natural com calma · Por que fazer em ciclos · Cuidar da família de forma natural |

> **Por que TESTE 2 usa públicos diferentes do TESTE 1:** duas campanhas de teste nos mesmos públicos leiloam entre si — CPM sobe e o dado das duas fica impossível de ler. Video View, Hook Rate e o LAL do ENG IG estavam parados e não encostam no TESTE 1.

> **Por que 9 conceitos distintos e não 9 variações:** a biblioteca tem 11 conceitos com 2 a 10 cortes cada. Testar corte antes de saber qual conceito vende é queimar verba na ordem errada. Primeiro o conceito, depois os cortes dele.

**O conjunto do Dr. William não existe.** Nenhum ativo dele está vinculado a esta conta — só a página VermeFree e o `@vermefree`.

### Regras duras dessa estrutura
1. **Campanha de teste é ABO, nunca CBO.** Em CBO o Meta joga quase tudo no conjunto mais barato e os outros nunca cruzam o gate.
2. **Máximo 3 anúncios por conjunto de teste.** Com R$200/dia e 3 anúncios, cada um pega ~R$67/dia e cruza o gate em ~7 dias. Abaixo de R$200/conjunto o ciclo de decisão quebra.
3. **Mínimo 3 anúncios com ROAS ≥ 2,2 em cada campanha de escala.**
4. **Os mesmos campeões rodam nas duas campanhas de escala** — públicos diferentes, leilões diferentes.
5. **Duas campanhas de teste nunca compartilham público.**

### Kids precisa de conjunto próprio — regra

**Kids é 24% do faturamento** (R$83 mil de R$354 mil em 30 dias). Em 22/09 o conjunto KIDS FRIO foi pausado na reestruturação e a conta ficou **sem nenhum público dedicado a mães** — o KIDS_AMAMENTACAO foi jogado na ESCALA FRIO pra disputar com 9 criativos de adulto e entregou **R$2,27 num dia inteiro**.

Corrigido em 23/09 com o conjunto KIDS no TESTE 1. **Criativo de Kids em conjunto de adulto não entrega** — o algoritmo escolhe o que já converte naquele público, e Kids nunca é.

### Otimização de topo de funil: VIDEO_VIEWS, não THRUPLAY

A primeira campanha de topo (CBO + THRUPLAY + ON_VIDEO) ficou **36 horas ACTIVE sem gastar um centavo**, sem erro reportado por `ads_get_errors`. THRUPLAY exige 15 segundos assistidos; com vídeos de 53 a 100 segundos e R$150/dia em público aberto, a Meta não acha volume e simplesmente não entrega.

Refeita em ABO com **`VIDEO_VIEWS`** (2 segundos), que é o que alimenta os públicos de video view de qualquer forma.

> **CBO trava a otimização:** todos os conjuntos de uma campanha CBO precisam ter o mesmo `optimization_goal`. Pra trocar, só criando campanha nova. Por isso o topo virou ABO.

---

## 1.A INVENTÁRIO DE CRIATIVOS — classificado

### CONVERTE → escala
| Criativo | Vendas (lifetime) | CPA | Tipo |
|---|---|---|---|
| AD_TD_SINAIS_01 | 166 · 19 em 30d | R$77 | VIDEO |
| AD_TD_JATOMEI_01 | 159 | R$77 | VIDEO |
| AD_TD_JATOMEI_02 | 133 | R$78 | VIDEO |
| AD_TD_8H02 | 22 | **R$44** | VIDEO |
| SINAIS_02 | 12 | R$105 | SHARE |
| 3SINAIS | 12 | R$153 | SHARE |
| SINAIS_01 | 9 | R$122 | SHARE |
| ROTINA_CICLOS | 9 | R$54 | SHARE |
| AD_TD_SINAIS_02 | 8 | **R$36** | VIDEO |
| KIDS_AMAMENTACAO | 5 | R$130 | SHARE |

### INCONCLUSIVO → teste (menos de 5 vendas)
12SINAIS (4 · R$57) · JULIANA_UNBOX (4 · R$44) · DUVIDAS (3 · R$52) · KIDS_PET (2 · R$126) · CUIDADO (2 · R$168) · AD_TD_RANGER_02 (5 lifetime · R$67, mas 2 em 30d) · UGC_TAYLOU (1) · UNBOX_02 (1) · UGC_LUDI (0) · AD_TD_8H01 (2) · AD_TD_RANGER_01 (0)

### DESCARTE
**DIFERENCAS** — R$486 gastos, **0 vendas**. Único descarte limpo pela régua.

### NUNCA USADO → TESTE 2
Biblioteca de ~65 criativos de **vídeo** criados em 22/09, sem nenhum anúncio associado (confirmado por API). **11 conceitos**, 2 a 10 cortes cada:

`Por que fazer em ciclos` (6) · `Suas dúvidas, respondidas com calma` (10) · `Quando foi sua última limpeza natural?` (9) · `Abrindo o kit VermeFree` (8) · `Desparasitação natural, com calma` (8) · `Seu corpo pode estar pedindo isso` (6) · `O que vem no kit, por dentro` (4) · `Cuidar da família, de forma natural` (4) · `Três sinais pra prestar atenção` (4) · `Cuidar por dentro é rotina` (2) · `Rotina de cuidado pra casa toda` (2)

**São `object_type: VIDEO` — carregam UTM.** Primeiros anúncios da conta que vão aparecer direito no Utmify.

Em teste: 9 conceitos. Fora: `Cuidar por dentro é rotina` e `Rotina de cuidado pra casa toda`.

### Fila (sem vaga ainda)
UNBOX_02 · UGC_LUDI · AD_TD_RANGER_02 · AD_TD_8H01 · AD_TD_RANGER_01 · os cortes alternativos dos 9 conceitos · os dois vídeos novos (adulto e kids) quando vierem montados.

> **Inconclusivo não é ruim — é não-testado.** O caso RANGER_02 prova: CPA R$67 na Lista 100Verme, R$233 em KIDS QUENTE DR, R$370 em KIDS PROSPECT. Mesmo criativo, três estruturas. Criativo julgado em estrutura ruim volta pro teste, não pro lixo.

---

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

### 3.5 Guardrails da conta (blended)

| Nível | Valor | O que significa |
|---|---|---|
| **Alvo** | **4,5** | Onde a conta deve operar. Abaixo disso, revisa o mix de criativo e público |
| **Piso de ação** | **3,0** | Para de escalar verba e investiga. É a meta declarada da conta |
| **Breakeven** | *a calcular* | Onde a conta empata — bloqueado pelo COGS ausente (ver abaixo) |

**Por que o piso de ação não é 4,5** (o número da Botanika): blended cai conforme a verba sobe — você compra leilão mais caro na margem. É aritmética de escala, não piora.

| Janela | Gasto/dia | Blended |
|---|---|---|
| 30 dias (23/08–21/09) | R$1.504 | 7,84 |
| Semana 15–21/09 | R$2.529 | 6,04 |
| 21/09 | R$1.856 | 4,46 |

Um piso em 4,5 teria disparado em 21/09 — e o diagnóstico correto daquele dia era **falta de entrega**, não excesso de gasto: sobraram 7 anúncios rodando, com o CPA no melhor nível do mês. Piso alto demais faz cortar justamente quando o certo é abrir.

### 3.6 ⚠️ Breakeven — bloqueado por dado faltando

O `unitCost` está **`null` em todos os produtos do Shopify**, então `gross_profit` e `cost_of_goods_sold` voltam zero. Sem isso não dá pra dizer onde a conta empata.

**O que o Shopify já entrega** (30 dias, 23/08–21/09):

| Linha | Valor |
|---|---|
| Vendas brutas | R$416.045,00 |
| Descontos | −R$58.514,29 (14,1%) |
| Devoluções | −R$3.594,22 (**0,86%** — não é linha de preocupação) |
| Vendas líquidas | R$353.936,49 |
| Frete cobrado | +R$6.386,73 (1,5% — o resto é frete grátis, custo da casa) |
| Impostos | R$0 (não configurado no Shopify) |

**Para destravar, faltam 5 números:** custo do kit Adulto · custo Kids 2–4 · custo Kids 5–9 · custo Óleo de Alho · frete médio pago por pedido + taxa de gateway (%) + % de imposto.

Com eles, preencher o `unitCost` de cada produto no Shopify (via API) — aí `gross_profit` e o breakeven passam a sair sozinhos de qualquer consulta, sem depender de planilha paralela. O Kit Família se calcula a partir dos componentes.

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

### Causa raiz da cobertura em 14%
Os criativos da geração nova (SINAIS_01, SINAIS_02, 3SINAIS, ROTINA_CICLOS, KIDS_AMAMENTACAO, DUVIDAS, 12SINAIS…) são **`object_type: SHARE`** — post impulsionado. **Post impulsionado não carrega `url_tags`**, então a venda nunca chega ao Utmify.

A geração anterior (`AD_TD_*`) é `object_type: VIDEO` e carrega UTM normalmente.

Não dá pra corrigir por API: criativo é imutável na Meta e `url_tags` não é editável. **Para o anúncio ser rastreável ele precisa nascer como criativo de VÍDEO, não como boost de post.**

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

## 10. O QUE AINDA TRAVA — bloqueios abertos

| Bloqueio | Efeito | Como destravar |
|---|---|---|
| **Termos de público personalizado não aceitos** | `[LISTA] Leads` (46–55 mil) e `[LISTA] Clientes` (13–15 mil) não podem ser usados. O teste roda com o LAL 1% no lugar da lista real. | Também bloqueia excluir `[LISTA] Clientes` de qualquer conjunto novo (erro 1870092). Aceitar em facebook.com/customaudiences/value_based/tos/?act=1317272150350067 |
| **Sem permissão de `instagram_media_id`** | Não dá pra impulsionar post do Instagram pela API. Os boosts antigos foram feitos pelo post do **Facebook** (`object_story_id`), não pela mídia do IG. | Fazer pelo Gerenciador, ou liberar a permissão |
| **Públicos de site em 20 pessoas** | SITE\|TODOS, VIU PRODUTO, CHECKOUT, COMPRADORES — **todos** leem 20 pessoas, e o 7D lê igual ao 180D. Vale também pros criados em junho e julho (VISITANTES DO SITE 90D, RMKT KIDS, InitiateCheckout 90D, COMPRADORES DO SITE 60D). Sem público de site, não existe remarketing de site nessa conta. | Ver §10.1 — diagnóstico feito, causa ainda em aberto |
| **Cobertura de UTM em 14,2%** | Utmify não serve pra decisão de anúncio. Decidir com Meta + Shopify. | Criativos novos como VÍDEO, não como boost (§7) |
| **COGS vazio no Shopify** | `unitCost` null em todos os produtos → sem breakeven real. | 5 números do §3.6 |
| **Filtro de data do Utmify não aplica** | Puxadas via API devolvem lifetime. | — |
| **A interface religa a expansão de público ao reescrever a segmentação** | Ao editar a localização pelo Gerenciador, o conjunto volta com `targeting_relaxation_types.custom_audience: 1` e ganha `expanded_implicit_custom_audiences` (semelhantes 1% gerados sozinho). Isso autoriza o Meta a entregar **fora** do público personalizado. Num conjunto de remarketing com público vazio, ele gasta a verba inteira em tráfego frio e o relatório lê como remarketing. **`targeting_automation.advantage_audience: 0` não protege disso — é outro botão.** | Reescrever o `targeting` por API com `targeting_relaxation_types: {"lookalike":0,"custom_audience":0}`. Isso funciona e não regride o `location_types`. Conferir sempre depois de qualquer edição feita pela interface |
| **`location_types` obsoleto grudado no conjunto** | Todo conjunto criado por API sai com `geo_locations.location_types: ["frequently_in","home"]` — opções que o Meta aposentou. Não atrapalha quem já está no ar, mas **trava a publicação de rascunho** no Gerenciador com o erro **#1870194** ("direcionamento por localização que foi removida"). Reescrever o `targeting` por API **não tira**: o update volta `success: true` e o campo reaparece na releitura. | Só pela interface: abrir o conjunto → Localizações → "Editar" → remover e re-selecionar Brasil → publicar |


### 10.1 O caso dos públicos de site vazios (25/09)

**O que já foi descartado como causa** — com dado, não com palpite:

| Hipótese | Verificação | Resultado |
|---|---|---|
| Pixel parado | `last_fired_time` 25/09 06:17 (web) e 06:13 (servidor) | Vivo |
| Evento não chega | `ads_get_dataset_stats`, 7 dias. Só na hora das 05:00 de 25/09: PageView 299 · ViewContent 82 · AddToCart 24 · InitiateCheckout 21 · AddPaymentInfo 11 · Purchase 7 | Chega em volume |
| Nome de evento errado | Os eventos do pixel batem exatamente com os das regras | Bate |
| Regra malformada | `VISITORS_BY_URL` + filtro `event eq InitiateCheckout` é o padrão documentado pra evento padrão | Regra correta |
| Casamento ruim (EMQ) | `ads_get_dataset_quality`: Purchase 9,2 · AddPaymentInfo 8,9 · InitiateCheckout 7,2 · ViewContent 6,8 · AddToCart 6,9. `fbp` e `external_id` em **100%** em todos. Upload horário. | Casamento ótimo |
| Só os públicos novos | Os de junho/julho também estão em 20 | Não é idade do público |
| Só a leitura da API | Os públicos de IG (PLATFORM, mesmo subtipo) devolvem número real: ENG 180D 90–106 mil, ENG 7D 4,6–5,4 mil | A API reporta de verdade |
| Criados sem `prefill` | `creation_params` dos públicos lê `{"prefill":"true"}` | Foram criados com backfill ligado |

**O que sobra:** o evento é aceito pra mensuração mas **não pode ser usado pra montar público**. Isso é o comportamento de consentimento negado pra marketing (LGPD/consent mode — o dataset lista `gtm.init_consent`, ou seja, o GTM roda com consent mode) ou de `data_processing_options: ["LDU"]` sendo enviado junto do evento. Nos dois casos a conversão reporta normal e o público nunca enche — que é exatamente o quadro aqui.

**Isso não se resolve pelo Gerenciador de Anúncios.** É configuração do site: banner de consentimento / Customer Privacy do Shopify / consent mode do GTM.

**Antes de mexer no site, checar 30 segundos no Gerenciador:** Públicos → olhar o tamanho de `VIU PRODUTO | 180D`. Se a interface mostrar número real, o problema é só de leitura da API e o remarketing de site está de pé. Se mostrar "Abaixo de 1.000", está confirmado.

**Enquanto isso:** o remarketing quente da conta se apoia em público de **engajamento de IG e de vídeo**, que enchem normalmente — esses não passam pelo pixel.

---

## 11. COMPLIANCE — a régua do §4 vale para post impulsionado

Post orgânico que vira anúncio **é anúncio**. O §4 do `CLAUDE.md` se aplica inteiro à legenda.

Auditoria dos 7 posts mais engajados do `@vermefree` (22/09):

| Post | Engajamento | Veredito |
|---|---|---|
| "Criança agitada, irritada, chorosa" (oxiúros) | **283** | ❌ "mais de 100 tipos de parasitas" |
| "Insônia, bruxismo, vontade de doce" (lua nova) | 147 | ⚠️ afirmação causal + lista de sintomas beirando diagnóstico |
| "12 sinais" (reels) | 120 | ❌ "agindo contra mais de 100 tipos" |
| **"Desparasitar é o primeiro passo"** (hábitos + pet) | 112 | ✅ |
| "Eixo intestino-cérebro" | 77 | ❌ "elimina mais de 100 tipos" |
| **"Contaminação pelo prato"** (5 cuidados) | 62 | ✅ |
| "TDAH / estudo" | 57 | ❌ "combate mais de 100 tipos" |

Também reprovados por comparação com farmácia (§4): "3 motivos caminho natural" e "Somos 90% água" — ambos usam *"muito além do vermífugo comum"*.

> **Regra: antes de impulsionar qualquer post, rodar o checklist do §11 do `CLAUDE.md` na legenda.** Os posts que mais engajam organicamente são justamente os de claim mais forte — é o que os torna mais arriscados como anúncio.
