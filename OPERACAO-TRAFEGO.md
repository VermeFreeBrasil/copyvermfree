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

### Limpeza e graduação de 25/09

**Mortos por sinal precoce (§13.3 — CTR abaixo de 1% com 2.000+ impressões):**

| Anúncio | Gasto | CTR | Impressões |
|---|---|---|---|
| N_ABRINDO_KIT | R$154,63 | 0,77% | 12.681 |
| AD_TD_SINAIS_01 (ESCALA FRIO) | R$102,83 | 0,78% | 2.566 |
| CUIDADO | R$88,94 | 0,70% | 2.274 |
| N_O_QUE_VEM_NO_KIT | R$49,46 | 0,63% | 3.996 |

**A régua de CTR não vale pro TOPO DE FUNIL.** O TOPO_AD_TD_8H02 roda CTR 0,39% e está certo — ele é otimizado pra `VIDEO_VIEWS`, clique não é o objetivo. Aplicar §13.3 lá mataria o topo inteiro por engano.

**Canibalização corrigida:** `KIDS_AMAMENTACAO` rodava ao mesmo tempo na ESCALA FRIO e no TESTE|KIDS — leiloando contra si e sujando o dado do teste. Pausado na escala, mantido no teste (§13.4).

**Graduado:** `DUVIDAS` — R$474,95 · 6 compras · CPA R$79 · ROAS Meta 10,97. Passou o gate do §3.1, subiu pra ESCALA FRIO e ESCALA QUENTE e saiu do TESTE|ADV.

**Achado estrutural:** a ESCALA FRIO tinha 9 anúncios e a ESCALA QUENTE 8 — mas **só 3 tinham graduado de verdade**. Os outros entraram sem passar por gate nenhum. O algoritmo concentra sozinho (o JATOMEI_02 comeu R$6,8k), mas isso é sorte, não sistema. A escala só recebe anúncio graduado — revisar na segunda.

**`3SINAIS` — cortado e religado no mesmo dia. Fica como lição.**

Eu propus cortar o da ESCALA QUENTE por causa do **CPA de R$169 no Meta**, contra R$72 do JATOMEI_01 no mesmo conjunto. O Pedro questionou, e ele estava certo: **o §13.2 manda não matar no limite sem olhar o blended, e eu não olhei.**

A conta: o pixel está capturando **58% das vendas** (112 compras no Meta contra 193 pedidos na Shopify, semana 18–24/09). Então as 12 vendas que o Meta mostra são provavelmente **~21 de verdade** → **CPA real ≈ R$98**, que é faixa **saudável**, não zona cinza. O ROAS de 4,01 do Meta também está acima do piso de ação de 3,0.

**Os dois `3SINAIS` seguem no ar.** O erro não foi de execução, foi de leitura: usei o número pessimista do Meta como se fosse o real, exatamente o que a régua proíbe.

> **Regra reforçada:** antes de matar por CPA, dividir o CPA do Meta pela cobertura do pixel da semana. Com cobertura em ~58%, o CPA real é cerca de **0,58x** o que o Meta mostra.

**Próximo no gate:** `AD_TD_SINAIS_01` na ESCALA QUENTE — R$409,05 com 1 venda, CPA R$409. Cruza os R$450 nas próximas horas e morre pela regra. Com o 3SINAIS fora, a verba da QUENTE redistribui e ele acelera.

### Onde entram os criativos novos
Regra: **criativo novo nunca entra em escala e nunca ganha campanha própria.** Campanha de teste nova exigiria um 7º público distinto — não existe um que seja grande e distinto ao mesmo tempo, e duas campanhas de teste nunca compartilham público (§13.4). Entram nos **slots que a limpeza libera**, todos no **mesmo conjunto**, pra o criativo ser a única variável. Conjunto padrão: **TESTE | ADV** — frio aberto, mesmo público da ESCALA FRIO, então o que graduar transfere sem surpresa.

Subiu em 25/09: `N_A2_DIRETO` (vídeo "AD - A2_ DIRETO", 46s) no TESTE|ADV. Os outros três do lote (A1, A3, A4) ainda não apareceram na conta — vídeo grande demora a processar.

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
| ~~**Públicos de site em 20 pessoas**~~ **RESOLVIDO 26/09** | SITE\|TODOS, VIU PRODUTO, CHECKOUT, COMPRADORES — **todos** leem 20 pessoas, e o 7D lê igual ao 180D. Vale também pros criados em junho e julho (VISITANTES DO SITE 90D, RMKT KIDS, InitiateCheckout 90D, COMPRADORES DO SITE 60D). Sem público de site, não existe remarketing de site nessa conta. | Ver §10.1 — diagnóstico feito, causa ainda em aberto |
| **Cobertura de UTM em 14,2%** | Utmify não serve pra decisão de anúncio. Decidir com Meta + Shopify. | Criativos novos como VÍDEO, não como boost (§7) |
| **COGS vazio no Shopify** | `unitCost` null em todos os produtos → sem breakeven real. | 5 números do §3.6 |
| ~~**Filtro de data do Utmify não aplica**~~ **RESOLVIDO 25/09** | O `dateRange` **funciona** em `get_meta_ad_objects` quando vai junto com `metaAdAccountIds`. Conferido: 19–25/09 devolveu R$14.287,57 contra R$14.303,02 da API do Meta — 0,1% de diferença. A puxada anterior que voltou lifetime foi feita sem o filtro de conta. | — |
| **A interface religa a expansão de público ao reescrever a segmentação** | Ao editar a localização pelo Gerenciador, o conjunto volta com `targeting_relaxation_types.custom_audience: 1` e ganha `expanded_implicit_custom_audiences` (semelhantes 1% gerados sozinho). Isso autoriza o Meta a entregar **fora** do público personalizado. Num conjunto de remarketing com público vazio, ele gasta a verba inteira em tráfego frio e o relatório lê como remarketing. **`targeting_automation.advantage_audience: 0` não protege disso — é outro botão.** | Reescrever o `targeting` por API com `targeting_relaxation_types: {"lookalike":0,"custom_audience":0}`. Isso funciona e não regride o `location_types`. Conferir sempre depois de qualquer edição feita pela interface |
| **`location_types` obsoleto grudado no conjunto** | Todo conjunto criado por API sai com `geo_locations.location_types: ["frequently_in","home"]` — opções que o Meta aposentou. Não atrapalha quem já está no ar, mas **trava a publicação de rascunho** no Gerenciador com o erro **#1870194** ("direcionamento por localização que foi removida"). Reescrever o `targeting` por API **não tira**: o update volta `success: true` e o campo reaparece na releitura. | Só pela interface: abrir o conjunto → Localizações → "Editar" → remover e re-selecionar Brasil → publicar |
| **`ObjectStorySpecRedundant` (erro 1443051) ao publicar rascunho** | Passar `image_url` pro `ads_create_creative` num criativo de VÍDEO faz o Meta gravar **`image_hash` E `image_url` ao mesmo tempo** no `object_story_spec`. O criativo é criado sem reclamar, o anúncio também — e o rascunho **trava na publicação**. | Criar o criativo passando **só `image_hash`**. O hash aparece no `spec` do criativo que falhou, dá pra reaproveitar. Conferir `active_errors: []` no retorno de `ads_create_ad` antes de seguir |
| **Vídeo com oferta queimada na imagem** | Vários vídeos da conta têm o selo da promoção **gravado no vídeo** (ex.: "12% OFF em todos os produtos", "compras acima de R$700 ganham 1 Protocolo Infantil"). Montar campanha de oferta nova em cima deles faz o anúncio prometer uma coisa e a página entregar outra — risco de CDC art. 37 (publicidade enganosa), não só de conversão. | **Rodar `ads_get_ad_preview` em todo criativo ANTES de montar o anúncio**, e ler o que está escrito na tela. Pra campanha de oferta: usar vídeo perpétuo (sem selo) e deixar a oferta só na legenda/título |
| **Zerar orçamento com `0` não limpa — tem que ser `null`** | Trocar orçamento diário por total (ou vice-versa) mandando `{"lifetime_budget": 0}` deixa os dois campos gravados e trava o rascunho com **erro 1487164 "More than one budget specified"**. O `0` conta como valor definido. | Mandar `{"lifetime_budget": null, "daily_budget": X}` na mesma chamada. O `null` apaga o campo de verdade e o `active_errors` volta vazio. |
| **Não dá pra trocar diário↔total em campanha no ar** | A campanha aceita o update, mas ele fica no rascunho e não aplica. Só o mesmo tipo de orçamento atualiza ao vivo. | Se precisa de teto total, converter em diário: `total ÷ nº de dias`. Ex.: R$1.000 até quarta = R$333/dia em 3 dias. |
| **`ads_create_ad_set` mente sobre CBO em campanha publicada** | Ao criar conjunto novo numa campanha CBO que já está no ar, o erro diz "the parent campaign does not use CBO" mesmo com `daily_budget` e `bid_strategy` confirmados na leitura ao vivo. | Não forçar orçamento de conjunto dentro de CBO (cria estrutura imprevisível). Fazer campanha separada com orçamento próprio. |
| **Preview de vídeo mostra a thumbnail, não o vídeo** | Se o criativo tem um `image_hash` que não é frame do próprio vídeo, o `ads_get_ad_preview` renderiza **essa imagem**, e parece que o preview "não funciona". Com a capa correta, ele mostra o primeiro frame do vídeo. | Pegar a capa real em `ads_get_ad_videos` com o campo `picture`, passar como `image_url` no criativo, colher o `image_hash` que o Meta gera (aparece no spec do anúncio) e remontar passando **só o hash**. |
| **O preview nunca mostra o áudio nem os frames seguintes** | Dá pra confirmar que não tem oferta errada queimada na abertura — não dá pra saber o que é falado. Claim de §4 (comparar com farmácia, diagnosticar o espectador) vive na fala. | Quem assiste o vídeo confere. Anúncio com risco de claim não sobe sem alguém ter visto até o fim. |


### 10.1 Os públicos de site NÃO estavam vazios — conclusão errada, corrigida em 26/09

> **A entrega derrubou a tese.** O conjunto `A | SITE - VIU PRODUTO + CHECKOUT 180D` da campanha CTWA rodou ~21h e entregou: **R$54,83 gastos, 1.268 impressões, alcance de 662 pessoas.** E rodou com a expansão **desligada** (`targeting_relaxation_types: {lookalike:0, custom_audience:0}` e `advantage_audience: 0`, ambos reconferidos depois da entrega). Sem expansão, o Meta **não pode** entregar fora do público personalizado. Logo: os públicos `VIU PRODUTO | 180D` e `CHECKOUT | INITIATE | 180D` têm gente dentro — no mínimo 662 pessoas alcançáveis, quase certamente muito mais.
>
> **O que eu errei:** li `approximate_count_lower_bound/upper_bound = 20` da API como tamanho real e construí em cima disso uma tese de consentimento negado (consent mode / LDU) que mandava mexer no site. **O 20 é placeholder da API, não tamanho.** A pista já estava na mesa e eu não puxei: os lookalikes devolvem `1000/1000`, que é obviamente impossível — se a API inventa número pra um subtipo, inventa pra outro.
>
> **Regra que fica:** tamanho de público personalizado **não se lê pela API dessa conta**. Se precisar saber se um público funciona, o teste é **entrega com expansão desligada** — ou o número na interface do Gerenciador.
>
> O remarketing de site **está de pé**. Não precisa mexer em consent mode, Customer Privacy do Shopify nem GTM por causa disso.

O diagnóstico abaixo fica registrado porque a parte de saúde do pixel continua válida e útil — o que caiu foi só a conclusão.


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

**Sobre a saúde do pixel:** tudo acima segue valendo — pixel vivo, eventos em volume, nomes certos, regra no padrão e EMQ de 6,7 a 9,2. Era um pixel saudável o tempo todo, e os públicos estavam cheios.

---

---

## 14. CALENDÁRIO DE VERBA — o mês não é plano

> **Descoberto em 27/09.** A conta vinha gastando o mesmo todo dia do mês. A demanda não é a mesma todo dia do mês. Essa diferença custou caro em setembro.

### 14.1 O caso que abriu os olhos

| | Ago 25–26 | Set 25–26 |
|---|---|---|
| Gasto | R$1.413,52 | **R$5.223,17** |
| Faturamento | R$11.869,94 | **R$10.990,15** |
| Blended | **8,40** | **2,10** |

**3,7x mais gasto, 7% menos faturamento.** Mesmos dois dias do mês, meses seguidos. O gasto extra comprou faturamento negativo.

### 14.2 O mês por faixa (dias de evento isolados, §12)

**Agosto/26**
| Faixa | Fat/dia | Gasto/dia | Blended |
|---|---|---|---|
| 01–07 | R$13.428 | R$756 | **17,77** |
| 08–14 | R$12.783 | R$1.546 | 8,27 |
| 15–21 | R$10.960 | R$871 | **12,58** |
| **22–28** | **R$6.542** | R$690 | 9,48 |
| 29–31 | R$7.312 | R$706 | 10,35 |

**Setembro/26 (até dia 26)**
| Faixa | Fat/dia | Gasto/dia | Blended |
|---|---|---|---|
| 01–07 | R$7.366 | R$1.026 | 7,18 |
| 08–14 | R$7.122 | R$1.809 | 3,94 |
| 15–21 | **R$16.532** | R$2.356 | 7,02 |
| **22–28** | R$11.823 | R$2.486 | **4,76** |

### 14.3 O que é sólido e o que não é

**Sólido — vale operar em cima:**
1. **A última faixa do mês é a mais fraca nos dois meses.** Agosto caiu de R$12.338/dia (01–21) pra R$6.773/dia (22–31) — **45% a menos**. Setembro despencou de R$16.532/dia (15–21) pra R$5.495/dia (25–26) — **67% a menos**.
2. **Em agosto o gasto ficou plano em ~R$700 o mês inteiro e o blended nunca caiu abaixo de 8.** Em setembro o gasto subiu pra R$2.500 justamente na descida e o blended foi pra 1,55. **Não foi a demanda que quebrou o mês — foi gastar como se ela não tivesse mudado.**
3. **Dia de evento é onde o dinheiro rende de verdade:**

| Evento | Faturamento | Gasto | **Blended** |
|---|---|---|---|
| **09/09 · Dia D** | R$63.984 | R$2.925 | **21,88** |
| 14/09 · Semana do Cliente | R$31.461 | R$3.072 | 10,24 |
| 07/08 | R$41.250 | R$5.295 | 7,79 |

O Dia D de 09/09 é **o melhor dia dos dois meses, disparado** — 21,88 de blended com o gasto de um dia normal de setembro.

**Não é sólido — não operar em cima ainda:**
- **A data exata do corte muda.** Em agosto a queda começa por volta do dia 20–22; em setembro só no dia 25. Não dá pra cravar um dia fixo.
- **O formato do mês não se repete igual.** Agosto teve pico no 01–07; setembro teve pico no 15–21. São dois meses de amostra — é padrão, não é lei.
- **A leitura certa é a taxa de carrinho, não o calendário.** Em 26/09 as sessões ficaram iguais (1.187 → 1.213) e o carrinho caiu pela metade (5,6% → 2,5%). **Esse é o gatilho — ele avisa antes do faturamento.**

### 14.4 A regra de operação

**O gatilho não é a data, é a taxa de adicionar ao carrinho.**

| Taxa de ATC (sessões → carrinho) | Verba |
|---|---|
| **≥ 5%** | Patamar cheio |
| **3–5%** | 70% do patamar |
| **< 3% por 2 dias seguidos** | **40% do patamar** — e segura até voltar |
| **Dia de evento (Dia D, Semana do Cliente)** | **2x o patamar** — é onde o retorno dobra |

Puxar a taxa de ATC no Shopify:
```
FROM sessions SHOW sessions, sessions_with_cart_additions, conversion_rate TIMESERIES day SINCE -14d UNTIL today
```

**Por que ATC e não conversão:** conversão cai por motivo de checkout também. ATC isola a intenção — é a pessoa dizendo se quer ou não comprar. E vira dois dias antes do faturamento.

**Checar toda segunda**, junto com a leitura das três fontes (§6). E **recalcular esse calendário todo mês fechado**, junto com as faixas de CPA.


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

---

## 15. DIA D KIDS · 28–30/09 (registro da operação)

**Oferta:** 10% OFF nos protocolos Kids já na 1ª unidade · frete grátis · Guia da Imunidade Infantil de brinde. Sem cupom — o desconto entra no preço. Encerra **30/09 23h59**.

**Estrutura:** duas campanhas, **R$999 no total** (R$333/dia × 3 dias), por cima da base de R$1.400/dia.

| Campanha | Verba | Conjuntos | Criativos |
|---|---|---|---|
| `DIA D KIDS \| VENDAS` | R$233/dia | QUENTE (site+IG 30D+vídeo 25%) · COMPRADORES 180D+RMKT Kids · MÃES FRIO (LAL 1%) | 6 estáticos, um par por conjunto |
| `DIA D KIDS \| VIDEOS ADV` | R$100/dia | 1 conjunto ADV (Advantage+ ligado, BR 25–50, excl. compradores) | 5 vídeos A1–A5 |

**Por que os vídeos em campanha separada:** em CBO o ADV tem o CPM mais barato e puxa a verba, deixando COMPRADORES 180D — a lista que mais converte — sem entrega. Separado, cada um tem a sua. (A tentativa de pendurar como 4º conjunto esbarrou no bug de CBO do §10.)

**Limite reconhecido:** com R$300 divididos entre 5 vídeos dá **R$60 por anúncio**. Pelo §13 isso não cruza gate nenhum — o que dá pra ler em 3 dias é hook rate e CTR, não conversão. **Não tratar como teste de criativo.** Teste de verdade dos vídeos fica pra campanha de TESTE depois da virada do mês.

### 15.1 O que a conferência dos criativos pegou

Preview rodado nos 7 estáticos antes de montar (regra do §10). A oferta estava certa em todos e os preços batiam (R$270→R$243, R$389→R$350,10). Três achados:

1. **`adkids7` ficou de fora** — o rótulo do 3º frasco lê **"FINTURA! PE DESPARASITTAÇÃO"**. Defeito de geração de imagem, e é o criativo onde os frascos aparecem maiores.
2. **Texto de rótulo embaralhado em mais peças** — `adkids2` ("POTENCIALIZADO**A**", "das **tormas** dos parasitas"), `adkids4` ("Auxilia **no** eliminação", "**tornas**"), `adkids6` (logo "Verme kids", sem o "Free"). Invisível em tamanho de feed, mas é dívida pra uma marca que se vende como séria. **Refazer os packshots com o rótulo real.**
3. **Parcelamento com juros não declarado** — "R$243 ou 10x de R$28,66" dá R$286,60 no total (~17,9% a.p.). Se é o parcelamento real do checkout o número está certo, mas o CDC art. 52 exige informar o total. Ou tirar o "10x de" da arte, ou escrever o total.

**Ponto cego que fica:** o preview mostra o primeiro frame, nunca o áudio. Claim de §4 (comparar com farmácia, diagnosticar o espectador) vive na fala — **vídeo com risco de claim não sobe sem alguém ter assistido até o fim.**

---

## 16. OTIMIZAÇÃO DO PERPÉTUO · 30/09 (virada de mês)

> Aplicada em 30/09 a pedido do Gabriel ("pra amanhã já estar forte"). Um dia antes do gate de quinta do §13.6 — a antecipação é consciente, pra 01/10 começar já ajustado.

### 16.1 O contexto que autorizou mexer

**ATC em 8,1% (28/09) e 9,5% (29/09)** — dois dias seguidos acima do gatilho de patamar cheio do §14.4. E 01/10 abre a primeira semana do mês, a faixa historicamente mais forte (§14.2: Ago 01–07 blended **17,77**).

Detalhe que vale guardar: em **29/09 as sessões foram as MENORES da janela (855)** e a conversão a **MAIOR (3,74%)**. Não veio tráfego novo — veio tráfego certo. Volume de sessão não é o indicador; ATC é.

### 16.2 O que mudou

| Objeto | De | Para | Motivo |
|---|---|---|---|
| **`AD_TD_8H02`** (2 conjuntos) | ATIVO | **PAUSADO** | R$774 · 2 compras · **CPA R$387** — §13.1 (≥R$450 · CPA >R$200) |
| `VF \| TESTE \| ADV` | R$200/dia | **R$300/dia** | CPA R$100,31 · ROAS 5,36 · 31 compras — graduado com folga |
| `VF \| TESTE \| KIDS \| Maes 28-45` | R$75/dia | **R$110/dia** | CPA R$117 · **freq 1,57** — tem espaço, e Kids é o lado fraco do mix |
| `VF \| TESTE \| ENG IG + SITE` | R$75/dia | **R$40/dia** | **freq 3,33** · CPA R$177 — público torrado |

Líquido: **+R$100/dia** (R$1.400 → R$1.500). Os R$333/dia do Dia D morrem hoje 23:59 e cobrem com sobra.

**Não mexido de propósito:** ESCALA FRIO (R$600/dia, CPA R$105, ROAS 5,46 — o motor, e o Gabriel mandou manter) e CTWA (ver 16.4).

### 16.3 Três decisões de NÃO matar — e por quê

O gate não é gatilho automático. Três anúncios passaram perto e ficaram:

1. **`3SINAIS` — R$2.935 · CPA R$209 · ROAS 3,00.** Pela tabela do §13.1 seria corte (≥R$450 · CPA >R$200). **Não cortei.** O CPA do Meta é pessimista nessa conta por fator conhecido: **CPA Meta R$122,59 vs CPA blended R$79 no mês = 0,64x**. R$209 × 0,64 ≈ **R$134 real** — faixa saudável. É exatamente o aviso do §13.2: *não matar no limite sem olhar o blended*. Reavaliar na segunda.
2. **`JULIANA_UNBOX` — R$1.061 · CPA R$177 · CTR 0,97% · freq 2,90.** Passou dos R$900 da zona cinza. **Não é o criativo que morreu, é o público:** o conjunto inteiro está em **freq 3,33**. Matar o anúncio não resolve um problema de conjunto. Cortei a verba do conjunto pra 40 e deixo a frequência cair antes de julgar o criativo.
3. **`AD_TD_SINAIS_02` — R$271 combinado · CPA R$242.** Abaixo dos R$450. CTR 1,36% e tem ATC — nenhum dos três sinais do §13.3. Não existe dado ainda.

### 16.4 O que ficou parado esperando gente

**CTWA: R$504,61 no mês, ZERO compras, ZERO ATC, freq 2,24.** Pela letra do §13.1 é MATA sem discussão. **Não matei** — e a razão é o §13.7: a conversão do CTWA acontece no WhatsApp, **fora do pixel e fora do UTM**. O gate não sabe ler esse canal. Precisa do número de atendimento/venda da Sarah antes.

> **Regra que fica:** gate de gasto só decide canal cuja conversão o gate consegue ver. Pra canal que converte fora do site, o gate mede o custo — não mede o resultado. Sem o dado do outro lado, a decisão não é minha.

### 16.5 O caso `AD_TD_8H02` — por que a canibalização não salvou ele

O §13.7 manda não matar anúncio rodando em mais de um conjunto, porque o leilão contra si mesmo suja o dado. O 8H02 estava em dois (ESCALA QUENTE e ESCALA FRIO) — então o dado **estava** sujo.

Matei mesmo assim, e o teste que usei foi: **a melhor leitura possível ainda reprova?** Isolando só a metade boa (QUENTE: R$686 · 2 compras) o CPA é **R$343** — 1,7x acima da linha de corte. Canibalização explica CPM inflado e alguns pontos de CPA; não explica errar o alvo por 70%.

> **Regra que fica:** dado sujo por canibalização adia o corte quando o anúncio está **perto** da linha. Quando ele está longe dela na leitura mais generosa possível, a sujeira é irrelevante — corta.

---

## 17. CTWA · O público frio não vinha do público — vinha do posicionamento

> Reorganizado em 30/09, depois do retorno da Sarah: *"chegou bastante gente, mas o público ainda frio... pessoal que não conhece o produto ainda"*, e *"aquele pessoal que chega 'oi, preciso de ajuda' converte bem melhor"*.

### 17.1 O diagnóstico — três hipóteses, duas descartadas com dado

| Hipótese | Verificação | Resultado |
|---|---|---|
| A expansão de público religou (§10) | `targeting_relaxation_types: {lookalike:0, custom_audience:0}` e `targeting_automation.advantage_audience: 0` nos **dois** conjuntos | ❌ Descartada — estava desligada |
| O Gabriel mexeu sem querer na atualização | Mesma leitura acima, conferida ao vivo | ❌ Descartada — não foi ele |
| **Posicionamento** | `effective_publisher_platforms` incluía **`audience_network`** com as posições **`classic` e `rewarded_video`**, mais `whatsapp-status`, `mobile_fb_notifs_jewel`, `marketplace_search_ads`, `search_serp_ads`, `watch_search_ads_mobile` | ✅ **É isso** |

**O mecanismo:** `optimization_goal: CONVERSATIONS` manda o Meta caçar a conversa mais barata que existir. **Audience Network `rewarded_video` é onde a pessoa toca no anúncio pra ganhar recompensa dentro de um joguinho.** Ela abre o WhatsApp, manda qualquer coisa, e a Sarah recebe um "oi" de alguém que nunca ouviu falar de VermeFree. Conversa baratíssima, intenção zero.

**Agravante:** os dois conjuntos rodavam em **18–65, todos os gêneros**. O ICP do §2 é **mulher 30–50**.

> **Regra que fica:** em campanha de conversa (CTWA), **posicionamento é filtro de intenção, não de alcance.** Audience Network e posições de busca/notificação entregam o clique mais barato e a pior conversa. Objetivo CONVERSATIONS sem placement manual é um pedido pra receber lixo.

### 17.2 O que a Sarah ensinou sobre criativo

*"Aquele pessoal que chega 'oi, preciso de ajuda', eles são mais quentes, a conversão deles tá bem melhor."*

**Quem chega com pergunta converte melhor que quem chega com intenção de compra.** Então o criativo de CTWA não deve vender — deve **provocar uma dúvida**. Os 5 novos foram escolhidos por isso: todos abrem uma pergunta e prometem explicação, nenhum promete desconto.

### 17.3 A estrutura nova

Dois conjuntos (R$60 + R$40, freq 2,79 e 1,82) viraram **um só**, `VF | CTWA | QUENTE CONSOLIDADO | OUT26`, R$100/dia:

- **Públicos:** ENG 7D + ENG 30D + ENG 180D (IG) + Seguidores + VIU PRODUTO 180D + CHECKOUT 180D. Exclui COMPRADORES 180D.
- **Por que consolidar:** os dois conjuntos antigos disputavam o mesmo público pequeno e a frequência subiu. Pool somado (~140 mil) derruba a frequência sem perder temperatura.
- **Mulheres, 28–55.** `advantage_audience: 0` pra segurar a faixa (§10).
- **Posicionamento manual:** só Facebook (feed, reels, story) e Instagram (feed, story, reels). **Sem Audience Network, sem busca, sem notificações.**

**Os 5 vídeos** — escolhidos por CTR e CPA reais, todos em formato de pergunta:

| Anúncio | Vídeo de origem | Histórico |
|---|---|---|
| `AD_CTWA_3SINAIS` | Três sinais pra prestar atenção | CTR 3,95% · 4 compras · CPA R$107 |
| `AD_CTWA_DESPARASITACAO_CALMA` | Desparasitação natural, com calma | **CTR 4,23%** (melhor da conta com vídeo próprio) |
| `AD_CTWA_ULTIMA_LIMPEZA` | Quando foi sua última limpeza natural? | CPA **R$80** · ROAS 12,59 |
| `AD_CTWA_POR_QUE_CICLOS` | Por que fazer em ciclos | CTR 2,64% |
| `AD_CTWA_QUAL_E_O_SEU` | Desparasitação natural, na rotina | CPA R$96 · ROAS 4,31 |

### 17.4 Como medir isso — o gate normal não serve

O CTWA converte **no WhatsApp**, fora do pixel e fora do UTM. O gate de gasto do §13.1 mede o custo e não enxerga o resultado. **O placar do CTWA é a Sarah**, não o Gerenciador:

- **quantas conversas chegaram** (Meta entrega isso)
- **quantas viraram atendimento de verdade** (só a Sarah tem)
- **quantas viraram venda** (só a Sarah tem)

> **Regra que fica:** enquanto não houver o número do outro lado, **CTWA não entra em gate de corte por gasto.** Canal que converte fora do site se mede fora do site. Pedir esse número é parte da rotina, não um favor.

---

## 18. BLOQUEIOS NOVOS DA API (descobertos em 30/09)

| Bloqueio | Efeito | Como destravar |
|---|---|---|
| **Vídeo sem capa explícita não publica** — erro **1443226** "Your ad needs a video thumbnail" | A documentação do `ads_create_ad` afirma que o Meta gera a capa sozinho a partir do primeiro frame quando `image_hash`/`image_url` são omitidos. **Não gera.** O anúncio é criado, mas nasce com `active_errors` e trava a publicação. | Sempre passar `image_url` dentro de `video_data`, com a capa real do próprio vídeo. |
| **`image_hash` não é legível nos criativos desta conta** | `ads_get_creatives` devolve `thumbnail_url` mas **nunca** `image_hash`, mesmo pedindo o campo explicitamente. A `thumbnail_url` é um recorte 64×64 (`p64x64` na URL) e não serve de capa. Então **não dá pra reaproveitar a capa de um criativo existente**. | Pegar a capa em `ads_get_ad_videos` no campo **`picture`** (vem em 160×160, `p160x160`) e passar como `image_url`. |
| **Refinamento do `ObjectStorySpecRedundant` (§10)** | O erro 1443051 é do **`ads_create_creative`**. Passar `image_url` dentro de `video_data` num `object_story_spec` inline do **`ads_create_ad`** **não** dispara o erro — conferido nos 5 anúncios do §17, todos com `active_errors: []` e só `image_url` gravado. | Pra vídeo, montar o anúncio com `object_story_spec` inline no `ads_create_ad`, não com `ads_create_creative`. Poupa o vai-e-volta de colher hash. |
| **`ads_create_ad` devolve INTERNAL esporádico** | Um dos 5 anúncios falhou com `error_category: INTERNAL`, `is_retryable: true`. Repetir a mesma chamada funcionou na primeira tentativa. | Repetir. Conferir depois se não criou duplicado. |

---

## 19. O DIA EM QUE A CONTA FOI MEXIDA TRÊS VEZES — 30/09

> Registro honesto de um dia com três ondas de edição nos mesmos conjuntos. Vale mais pela lição de método que pelo resultado.

### 19.1 As três ondas

1. **Manhã — minha otimização (§16).** 4 mudanças: 8H02 morto, TESTE|ADV pra R$300, KIDS Maes pra R$110, ENG IG+SITE pra R$40.
2. **Tarde — o Gabriel pausou 15 anúncios** olhando a tela da Utmify, que mostrava a conta inteira em ROAS 0,78 e lucro −R$3.925.
3. **Noite — 4 religados** depois de cruzar com o Meta.

### 19.2 O erro de método que eu cometi duas vezes no mesmo dia

**Escolhi a janela de data depois de saber o que queria provar.**

- Defendi o `3SINAIS` com o CPA do **mês** (R$209 → R$134 corrigido). Nos **últimos 7 dias** ele estava em **R$325**. O Gabriel matou certo.
- Apresentei 9 anúncios como "campeões a CPA R$118" usando uma janela de 7 dias que **incluía os 3 dias de Dia D com desconto no site inteiro**. A preço normal (24–27/09) os mesmos anúncios liam **R$135 a R$204**.

> **Regra que fica: escolher a janela ANTES de olhar o resultado.** E toda leitura de criativo tem que declarar se a janela contém dia de evento — §12 já mandava isolar, e eu não isolei.

### 19.3 A descoberta que o erro revelou

Separando preço normal de dia de desconto, **todo anúncio da conta melhorou ~2x nos 3 dias de Dia D**:

| Anúncio | 24–27/09 (preço cheio) | 28–30/09 (10% OFF) |
|---|---|---|
| `AD_TD_JATOMEI_01` | CPA **R$521** | CPA **R$87** |
| `AD_TD_JATOMEI_02` | CPA R$294 | CPA R$145 |
| `AD_TD_RANGER_02` | CPA R$204 | CPA R$55 |
| `AD_TD_SINAIS_01` | CPA R$142 | CPA R$104 |

**Criativo não melhora 6x sozinho. Foi a oferta, não a mídia.**

> **A conclusão desconfortável:** a preço cheio o inventário inteiro roda entre R$142 e R$521 de CPA — cinza a morto. **Setembro foi segurado por desconto, não por mídia.** A conta não tem problema de quais anúncios estão ligados; tem **dívida de criativo**. E os 5 vídeos novos do Dia D, que eram a chance de renovar isso, gastaram R$10 a R$115 cada — nenhum cruzou gate nenhum.

### 19.4 O buraco que as 15 pausas abriram

Depois da onda 2, **dois conjuntos ficaram com zero anúncio ativo** e um terceiro com só um que não converte:

| Conjunto | Verba/dia | Anúncios ativos |
|---|---|---|
| `VF \| TESTE \| ADV` | R$300 | **0** |
| `VF \| TESTE \| ENG IG + SITE` | R$40 | **0** |
| `VF \| ESCALA QUENTE` | R$350 | 1 (`DUVIDAS`, 0 compras) |

**R$690/dia apontado pro vazio.** Não é dinheiro queimado — é poder de compra que para.

> **Regra que fica:** toda vez que se pausa anúncio em lote, **conferir quantos anúncios ativos sobraram por conjunto.** Conjunto sem anúncio não gasta e não avisa. É o tipo de dano que não aparece em nenhum relatório de performance — só na receita que não veio.

### 19.5 Estado final do dia (conferido ao vivo)

| Conjunto | Verba/dia | Anúncios ativos |
|---|---|---|
| `ESCALA FRIO \| ADV` | R$600 | 6 (JATOMEI 01/02, ROTINA_CICLOS, 3SINAIS, SINAIS_02, DUVIDAS) |
| `ESCALA QUENTE` | R$350 | 3 (**ROTINA_CICLOS** ↩, **AD_TD_SINAIS_01** ↩, DUVIDAS) |
| `TESTE \| ADV` | R$300 | 2 (**12SINAIS** ↩, **N_A2_DIRETO** ↩) |
| `TESTE \| KIDS Maes` | R$110 | 2 (KIDS_PET, KIDS_AMAMENTACAO) |
| `CTWA QUENTE CONSOLIDADO` | R$100 | 5 (§17) |
| `TESTE \| ENG IG + SITE` | — | **conjunto pausado** (freq 3,33, sem anúncio provado) |

↩ = religado na onda 3.

**Ficaram mortos, por decisão apoiada em dado:** `3SINAIS` (CPA R$325 em 7d), `JULIANA_UNBOX` (CPA R$172, freq 2,90), `AD_TD_RANGER_02` (CPA R$204 a preço cheio), `SINAIS_02` (histórico inteiro vem dos dias de desconto), `AD_TD_8H02` (CPA R$387), os dois `AD_CTWA_DUVIDAS` antigos.

### 19.6 O que esperar de 01/10 — previsão registrada pra ser conferida depois

Religar consertou a **entrega**, não a **economia**. A previsão que dei:

- CPA Meta na faixa **R$150–250** (não os R$118 que eu tinha apresentado)
- **Blended 2,5 a 4,5** — não os 8+ de 28–29/09, que eram dia de evento
- Primeiros 2–3 dias piores por ruído de aprendizado (três ondas de edição em 24h, §13.6)
- Única alavanca real de alta: o calendário (§14, primeira semana do mês)

> **O risco a evitar:** 01/10 ler ROAS baixo por ruído + fim do desconto, parecer que religar deu errado, e cortar de novo. Foi assim que setembro quebrou.

---

## 20. CORREÇÃO DO §12 — mídia não é só Meta Ads

> Descoberto em 01/10 ao puxar o Supabase pela primeira vez. Invalida o blended de todos os relatórios anteriores.

`public.meta_whatsapp` (alimentada pelo n8n, workflow `[VermeFree] Report - Meta API`, coleta diária 07:05) guarda o custo real das WABAs:

| | Agosto | Setembro |
|---|---|---|
| Meta Ads | R$33.700,30 | R$59.140,88 |
| **WhatsApp API** | R$424,19 | **R$7.604,42** |

Em agosto era 1,2% da mídia. Em setembro virou **11,4%**, porque ligaram disparo de **marketing** (R$5.611,73 — em agosto era R$0, só utility).

**O blended de setembro que eu vinha reportando (6,96) estava errado. O real é 6,17.**

> **Regra corrigida do §12: `mídia total = Meta Ads + WhatsApp API`.** Puxar `meta_whatsapp` do Supabase em toda leitura mensal, e em leitura diária quando houver disparo de marketing no dia.

### 20.1 As outras fontes que existiam e eu não usava

O Supabase tem muito mais que isso, e nada disso estava no protocolo:

| Tabela | O que tem | Pra que serve |
|---|---|---|
| `compra_aprovada` | 3.149 linhas · venda com `utm_source`, `cupom`, `plataforma`, `produto` | **Atribuição real por canal** — melhor que Utmify, que está em 6–10% de cobertura |
| `meta_whatsapp` | custo/volume por dia e por tipo (marketing, utility, auth, service) | Mídia de WhatsApp (acima) |
| `emails` | 94 campanhas AC com envios, abertura, clique | Performance de e-mail |
| `produtos_cogs` | 6 categorias — **`custo_unitario` NULL em todas** | Breakeven, quando preenchida |
| `produtos_estoque` | estoque por SKU | Ruptura |
| `cupons_influencers` | 18 cupons — **todos com influencer "(a definir)"** | ROI por influenciadora, quando preenchida |
| `instagram_stats` | seguidores, alcance, visitas (só 7 dias) | Saúde do orgânico |
| `meta_ads` | 3.821 linhas de métrica diária por anúncio | Histórico próprio, independente da API |

> **Regra que fica:** leitura mensal puxa **cinco** fontes, não três — Shopify, Meta, Utmify, **Supabase** e **n8n** (pra saber o que está alimentando o quê). A Utmify é a fonte mais fraca das cinco nessa conta; `compra_aprovada` cobre o que ela não cobre.

### 20.2 O erro de método por trás disso

Eu operei dois meses com um protocolo de três fontes sem nunca ter perguntado **quais fontes existem**. O `meta_whatsapp` estava sendo preenchido diariamente desde julho por um workflow que já rodava.

**Regra: antes de confiar num protocolo de medição, inventariar o que a operação já coleta.** Custou um blended 13% otimista em todo relatório de setembro.

---

## 21. FECHAMENTO DE SETEMBRO — o que os dois meses mostraram

Relatório completo em **`RELATORIO-FECHAMENTO-SET26.md`**. O essencial:

### 21.1 O número que decide outubro

```
Δ faturamento (ago→set) = R$55.839
Δ mídia        (ago→set) = R$32.621
ROAS MARGINAL            = 1,71
```

**Cada real extra de mídia em setembro comprou R$1,71.** Faturamento +15,7%, mídia +95,6%, blended 10,43 → 6,17.

### 21.2 O mecanismo: CPM responde à verba

| Semana | Gasto | CPM | CTR | CPA |
|---|---|---|---|---|
| 17–23/08 | R$5.412 | **R$9,36** | 2,91% | **R$78** |
| 14–20/09 | R$17.708 | **R$41,94** | 1,83% | R$126 |
| 21–27/09 | R$16.651 | R$28,72 | **1,47%** | **R$189** |

Gasto +75% no mês, impressões **−25%**. Pagamos mais caro por menos gente.

**Mas verba alta em dia de evento funciona:** 07–13/09 (Dia D) gastou R$13.299 com CPA R$79. A mesma verba sem evento (21–27/09) deu CPA R$189.

> **Regra que fica: verba alta só se paga em dia de evento.** Em dia normal, verba alta compra leilão caro. Isso substitui a leitura de calendário do §14 — o gatilho é o CPM, não a data.

### 21.3 O crescimento não veio da mídia

| | Agosto | Setembro | Δ |
|---|---|---|---|
| Mídia paga (`ig`+`FB`) | 260 pedidos · R$144.415 | 265 pedidos · R$144.314 | **0%** |
| Orgânico (`whatsapp_org`+`insta_org`+`email_org`+`areademembros`) | 62 pedidos · R$33.937 | **145 pedidos · R$77.512** | **+128%** |

**75% mais verba comprou o mesmo número de pedidos pagos.** Quem cresceu setembro foi o orgânico, que não tem orçamento nem dono formal. `whatsapp_org` sozinho fez R$37.676 com custo zero.

> **Regra que fica:** quando o blended cai e o faturamento sobe, **conferir se o crescimento é da mídia antes de creditar à mídia.** Eu passei setembro inteiro otimizando anúncio num mês cujo crescimento veio de outro lugar.

---

## 22. MARGEM — o número que o Gabriel destravou em 01/10

> *"Eu não tenho exatamente o custo por produtos, mas não passa de 20% do valor total de vendas."*

Não é o COGS por SKU que a `produtos_cogs` pediria, mas **é suficiente pra fechar a conta** — e muda uma conclusão minha.

### 22.1 Correção: eu exagerei no diagnóstico de setembro

Eu afirmei que o gasto extra de setembro (ROAS marginal **1,71**) "quase certamente destruiu margem". **Com COGS a 20%, isso está errado.**

| Custos além do COGS | Margem de contribuição | Breakeven ROAS | A 1,71 de marginal |
|---|---|---|---|
| 0% | 80% | 1,25 | **+R$0,37/real** |
| 10% | 70% | 1,43 | +R$0,20 |
| 20% | 60% | 1,67 | +R$0,03 |
| 25% | 55% | 1,82 | −R$0,06 |

O real extra de setembro rendeu entre **+R$0,37 e −R$0,06**. Isso é **de levemente lucrativo a empatado**, não destrutivo.

**O que continua verdade:** foi trabalho e risco pra ganhar quase nada. Esse é o argumento pro teto de verba — não "estamos perdendo dinheiro".

> **Regra que fica:** antes de chamar um gasto de destrutivo, **fazer a conta de margem.** "ROAS caiu" e "está dando prejuízo" são afirmações diferentes, e eu tratei uma como a outra. Com contribuição de 60% e AOV de R$540, o **CPA máximo é ~R$324** — o CPA blended de setembro foi R$88,29. A conta tem folga grande; o problema é o **último** real gasto, não a média.

### 22.2 Teto de CPA por produto (contribuição a 60%)

| Produto | Preço | CPA máximo | Confortável |
|---|---|---|---|
| Kids 5–9 | R$389 | R$233 | R$117 |
| Protocolo Adulto | R$347 | R$208 | R$104 |
| Kids 2–4 | R$270 | R$162 | R$81 |
| Óleo de Alho | R$67 | R$40 | R$20 |

As faixas do §13.2 continuam valendo como regra de operação — agora sabemos que são **conservadoras de propósito**.

### 22.3 A regra nova de outubro: alarme de CPM

A descoberta do §21.2 (CPM responde à verba) virou gatilho operacional, ao lado do ATC do §14.4:

| CPM 7 dias | Ação |
|---|---|
| ≤ R$18 | normal |
| R$18–22 | não sobe verba |
| **> R$22** | **corta 20%, mesmo com ATC bom** |

**O CPM avisa antes do CPA.** Em setembro ele dobrou enquanto as impressões caíam 25% — e eu só percebi no fechamento.

**Rotina diária completa em `PLANO-OUTUBRO-26.md`.**

---

## §23 — O DIA EM QUE A PERGUNTA DO GABRIEL ESTAVA CERTA E A MINHA CONTA ESTAVA ERRADA (02/10)

O Gabriel chegou com uma tese: *"o número de sessões caiu demais e a taxa de
conversão tá boa"*. Eu entrei achando que era artefato aritmético — tirar o
tráfego ruim do denominador sobe a média sem nada melhorar de verdade.

**Testei a minha própria hipótese e ela se provou quase toda errada.** Fica
registrado porque o método importa mais que o acerto.

### 23.1 Onde as sessões caíram (Shopify, por origem)

| Origem | 24–27/09 média/dia | 01/10 | Δ |
|---|---|---|---|
| Instagram | 723 | 377 | **−48%** |
| Facebook | 157 | 71 | −55% |
| Direct | 264 | 312 | +18% |
| Google | 46 | 38 | −17% |
| **Total** | **1.201** | **809** | **−33%** |

### 23.2 Onde o tráfego PAGO caiu (Meta, landing page views)

| Campanha | 24–27/09 LPV/dia | 01/10 | O que aconteceu |
|---|---|---|---|
| TESTE 2 \| CRIATIVOS NOVOS | 195 | 0 | pausada (CPM R$15–20, CPA R$200–600) |
| TOPO DE FUNIL \| VIDEO VIEWS | 44 | 0 | pausada (CPM R$3,52–4,12) |
| FRIO + QUENTE + TESTE | 370 | 320 | segue |
| **Total LPV pago** | **~611** | **~324** | **−287/dia** |

A queda de sessões (−392/dia) é **73% explicada pela queda de LPV pago**
(−287/dia). Não foi o orgânico que secou: foi a limpeza da conta.

### 23.3 O teste que eu errei

Hipótese: a conversão subiu porque saiu do denominador o tráfego que convertia
mal. Se fosse só isso, recalcular a baseline SEM esse tráfego daria o mesmo
número de hoje.

```
24–27/09 cheio            : 4.803 sessões · 58 pedidos = 1,21%
24–27/09 sem TESTE2+TOPO  : 3.847 sessões · 51 pedidos = 1,33%
01/10                     :   809 sessões · 18 pedidos = 2,22%
```

**O mix explica 0,12 ponto dos 1,01 que subiram. 12%.** Os outros 88% são
melhora real de qualidade de tráfego. A tese do Gabriel estava certa; a minha
desconfiança estava errada.

> **Regra nova: antes de chamar um número de "artefato de mix", recalcular a
> baseline removendo o mesmo tráfego.** Se o número velho não encosta no novo,
> não é artefato — é melhora.

### 23.4 A correção de verdade do dia: R$5.400 de WhatsApp em 30/09

O §20 mandou somar `meta_whatsapp` na mídia total. Eu somei no fechamento do
mês e **esqueci de somar na leitura diária**. Resultado:

| Dia | Shopify | Meta | WhatsApp (Supabase) | Mídia total | Blended REAL | Blended que eu reportei |
|---|---|---|---|---|---|---|
| 24/09 | 14.589 | 2.722 | 88 | 2.810 | 5,19 | — |
| 25/09 | 6.713 | 2.471 | 2 | 2.474 | 2,71 | — |
| 26/09 | 4.277 | 2.752 | 1 | 2.753 | 1,55 | — |
| 27/09 | 8.592 | 2.365 | 1 | 2.366 | 3,63 | — |
| 28/09 | 17.276 | 1.952 | 1 | 1.953 | 8,85 | 8,85 |
| 29/09 | 15.298 | 1.871 | 2 | 1.873 | 8,17 | 8,18 |
| **30/09** | **12.976** | **1.807** | **5.402** | **7.210** | **1,80** | **7,18** ❌ |
| 01/10 | 10.138 | 2.019 | 23 | 2.042 | 4,97 | 5,02 |

**30/09 não foi um dia de ROAS 7. Foi o PIOR dia da semana, a 1,80.** Saíram
16.786 mensagens de marketing por R$5.400 e eu reportei o dia como se elas não
existissem.

> **Regra: a leitura diária puxa `meta_whatsapp` igual puxa o Meta. Dia com
> disparo em massa não é dia normal — isola igual dia de evento (§12).**

### 23.5 O preço real da mensagem (e o erro de 3x que eu tinha na cabeça)

Tarifas medidas na própria conta, não estimadas:

| Template | R$/mensagem | Fonte |
|---|---|---|
| **Marketing** | **R$0,32–0,35** | `marketing_custo ÷ marketing_volume`, 30/09 e 01/10 |
| **Utility** | **R$0,035** | `utility_custo ÷ utility_volume`, todos os dias |

**Utility é 9x mais barato que marketing.** Eu vinha usando R$0,0976 — errado
nas duas pontas.

Impacto na lista de ciclo (796 pessoas, ~3.184 mensagens em 4 toques):

| Como template | Custo | O que eu tinha dito |
|---|---|---|
| Marketing | **R$1.019** | R$311 |
| Utility | **R$111** | R$311 |

E o comparativo que importa: o disparo de 30/09 gastou **R$5.400 para falar com
16.786 pessoas sem recorte**. A lista de ciclo fala com as 796 que estão na
janela de recompra por R$1.019 no pior caso. Mesmo no caso caro, **5x mais
barato para um público 21x mais qualificado.**

### 23.6 Utmify: cobertura quebrada, gasto confiável

| Janela | Pedidos Shopify | Rastreados Utmify | Taxa |
|---|---|---|---|
| 24–30/09 | 148 | 25 | **16,9%** |
| 01–02/10 | 24 | 2 | **8,3%** |

**Gasto bate exato nas duas janelas** (24–30/09: R$15.940,76 nos dois lados;
01–02/10: R$2.724,61). Então a integração está viva — o que quebrou é a UTM na
venda, não o pixel de gasto.

> Por §12, com 8–17% de cobertura o Utmify **não decide nada** este mês. Serve
> só como conferência de gasto. Consertar a UTM é tarefa, não análise.

### 23.7 Google orgânico: o canal que ninguém está olhando

24/09–02/10, Shopify, pedidos por origem:

```
search/google : 31 pedidos · ~393 sessões = 7,9% de conversão
ticket médio  : R$960 (vs R$545 da conta)
custo de mídia: R$1 na semana (conta Google Ads praticamente parada)
```

**6x a conversão média do site, ticket 76% maior, custo zero.** Não é a decisão
de hoje, mas é a maior assimetria aberta na conta.

### 23.8 A decisão aplicada em 02/10

Teste de rampa limpo, por campanha, 29/09 → 01/10:

| Campanha | Gasto | CPM | CTR | Freq | CPA | Veredicto |
|---|---|---|---|---|---|---|
| ESCALA FRIO | 566 → **731** | 69,40 → **65,60** ↓ | 2,39 → **2,92%** ↑ | 1,48 → 1,41 | 283 → 183 | **absorve** |
| ESCALA QUENTE | 375 → **428** | 54,74 → 56,54 | 1,74 → 2,10% | 1,41 → 1,50 | 188 → **143** | **absorve** |
| TESTE SET26 | 354 → **548** | 48,23 → 54,26 | 1,08 → 1,31% | 1,48 → **2,07** | 118 → **274** | **saturou** |

Verba total mantida em R$1.800/dia, redistribuída para quem absorve:

| Objeto | Antes | Depois |
|---|---|---|
| ESCALA FRIO \| ADV (CBO) | 750 | **800** |
| ESCALA QUENTE \| ENG IG + VIDEO VIEW | 400 | **460** |
| TESTE \| ADV | 350 | **300** |
| TESTE \| KIDS \| Maes 28-45 | 200 | **140** |
| CTWA \| QUENTE CONSOLIDADO | 100 | 100 |

### 23.9 A matemática que autoriza a escala — e o que a desautoriza

```
custo por sessão   = 2.042 ÷ 809   = R$2,52
receita por sessão = 10.138 ÷ 809  = R$12,53
margem de contrib. = 12,53 × 0,80  = R$10,02   (COGS 20%, §22)
lucro por sessão   = 10,02 − 2,52  = R$7,50
```

Cada sessão marginal comprada a R$2,52 devolve R$7,50 de contribuição —
**desde que converta como a média.** Ela não vai. O teste de rampa (§23.8) mostra
onde ainda converte e onde já não.

**Dois contrafatos que eu não tenho como descartar hoje:**
1. **01/10 é dia 1 do mês.** Salário caiu. Um dia não é tendência.
2. 02/10 parcial segura a tese (284 sessões, 2,11%), mas é meio dia.

Por isso a rampa é de +13%, não de dobrar.

### 23.10 Gatilhos de parada da rampa (checar antes de cada aumento)

- [ ] CPM do ESCALA FRIO > **R$75** → para a rampa
- [ ] Frequência de qualquer conjunto > **1,8** → para
- [ ] Conversão do site, média de 2 dias, < **1,8%** → volta a verba
- [ ] `meta_whatsapp` com disparo em massa no dia → **não lê o blended desse dia**

> **Correção do meu próprio alarme (§22):** o gatilho de CPM R$22 veio da média
> mensal, inflada por boost de live barato que não existe mais. A linha de base
> do perpétuo é **R$48–69**. Alarme útil: **CPM > R$75 ou +20% em 3 dias.**

---

## §24 — REFAZENDO SÓ COM CAMPANHA DE SITE (02/10) — e a correção que enfraquece o §23

O Gabriel mandou refazer: **fora a campanha de WhatsApp (CTWA), fora o custo da
API, só campanha pro site.** Refiz do zero, classificando por `objective` puxado
da API, não pelo nome da campanha.

> **Nota sobre o §23:** o §23.4 (R$5.400 de API em 30/09) e o §23.5 (tarifa real
> de R$0,32 marketing / R$0,035 utility) seguem válidos como fato. O que o §24
> corrige é a **conclusão** do §23.3: a melhora é real, mas a causa que eu dei
> estava incompleta.

### 24.1 Classificação por objetivo (API, 24/09–02/10)

| Campanha | `objective` | Gasto | Entra? |
|---|---|---|---|
| ESCALA FRIO \| ADV | OUTCOME_SALES | 5.902,33 | ✅ site |
| TESTE \| SET26 \| ABO | OUTCOME_SALES | 4.089,46 | ✅ site |
| ESCALA QUENTE | OUTCOME_SALES | 3.666,27 | ✅ site |
| TESTE 2 \| CRIATIVOS NOVOS | OUTCOME_SALES | 2.026,39 | ✅ site (pausada 28/09) |
| DIA D KIDS \| VENDAS | OUTCOME_SALES | 571,21 | ✅ site |
| DIA D KIDS \| VIDEOS ADV | OUTCOME_SALES | 235,95 | ✅ site |
| Boost Lives (24,25,28,29,30/09, 01/10) | OUTCOME_SALES | 1.013,73 | ✅ site |
| **Subtotal SITE** | | **17.505,34** | |
| [CTWA] RECUPERACAO (+ cópia errada) | OUTCOME_ENGAGEMENT | 675,82 | ❌ WhatsApp |
| TOPO DE FUNIL \| VIDEO VIEWS | OUTCOME_ENGAGEMENT | 507,12 | ❌ não é site |
| **Total conta** | | **18.688,28** | |

**Cada dia fecha ao centavo contra o gasto da conta** (ex.: 01/10 — conta
R$2.018,76 − site R$1.928,65 = R$90,11, que é exatamente o CTWA do dia).
Dá para conferir linha por linha.

### 24.2 A tabela (só site, Shopify contra gasto de site)

| Dia | Gasto site | CPM site | R$/LPV | LPV | Sessões | Conv. | ROAS site |
|---|---|---|---|---|---|---|---|
| 24/09 | 2.598,69 | 40,26 | 4,47 | 582 | 1.254 | 1,75% | 5,61 |
| 25/09 | 2.249,86 | 36,44 | 4,35 | 517 | 1.188 | 1,09% | 2,98 |
| 26/09 | 2.518,58 | 32,99 | 3,69 | 683 | 1.213 | 0,66% | 1,70 |
| 27/09 | 2.225,28 | 46,10 | 4,63 | 481 | 1.148 | 1,31% | 3,86 |
| 28/09 | 1.808,89 | 81,15 | 5,46 | 331 | 1.192 | 2,52% | 9,55 |
| 29/09 | 1.743,80 | 70,03 | 5,79 | 301 | 855 | 3,74% | 8,77 |
| 30/09 | 1.714,24 | 73,10 | 5,83 | 294 | 1.029 | 2,72% | 7,57 |
| **01/10** | **1.928,65** | **57,11** | **5,92** | **326** | **809** | **2,22%** | **5,26** |
| 02/10 parcial | 717,68 | 48,90 | 5,83 | 123 | 295 | 2,03% | 3,01 |

Agrupado, isolando o Dia D Kids (§12):

| Janela | Gasto/dia | CPM | R$/LPV | LPV/dia | Sessões/dia | Conv. | **ROAS site** |
|---|---|---|---|---|---|---|---|
| 24–27/09 preço cheio | 2.398,10 | 38,23 | 4,24 | 566 | 1.201 | 1,208% | **3,56** |
| 28–30/09 Dia D Kids | 1.755,64 | 74,56 | 5,69 | 309 | 1.025 | 2,926% | 8,65 |
| **01/10 preço cheio** | **1.928,65** | **57,11** | **5,92** | **326** | **809** | **2,225%** | **5,26** |

**Preço cheio contra preço cheio, só site: ROAS 3,56 → 5,26. +48%.** Sem API,
sem CTWA, sem dia de promoção na média.

### 24.3 O teste de mix refeito — o número aguenta

```
base 24-27/09 como está : 4.803 sessões / 58 pedidos = 1,208%
base sem TESTE2 + TOPO  : 3.846 sessões / 51 pedidos = 1,326%
01/10                   :   809 sessões / 18 pedidos = 2,225%

mix explica 0,118 pt de 1,017 pt  =  11,6%
```

Dois contra-testes que eu rodei e que **reforçam** o número em vez de derrubar:

- **Desconto.** 01/10 deu 7,9% de desconto sobre o bruto. A base 24–27/09 deu
  9,7%. O dia melhor é o dia com MENOS desconto.
- **Ticket.** 01/10 ficou em R$544,53. A base ficou em R$589,15. O ticket CAIU.
  A alta de conversão não veio de carrinho maior.

### 24.4 A causa que eu errei no §23: foi CPM, não poda

Eu te disse que as sessões caíram porque você parou de comprar sessão ruim.
Está só parcialmente certo. A conta de verdade:

```
gasto de site : 2.398/dia → 1.929/dia  =  −19,6%
LPV comprado  :   566/dia →   326/dia  =  −42,4%
```

**Gastei 20% menos e comprei 42% menos sessão.** Os 22 pontos de diferença são
preço: **o CPM de site saiu de R$38,23 para R$57,11 (+49%)** e o custo por
sessão de R$4,24 para R$5,92 (+40%).

E por quê o CPM subiu? **Pelo mesmo efeito de mix que eu acusei na conversão —
só que agora contra mim.** O que foi pausado era o inventário barato:

| Campanha pausada | CPM dela |
|---|---|
| TOPO DE FUNIL \| VIDEO VIEWS | **R$3,91** |
| TESTE 2 \| CRIATIVOS NOVOS | **R$19,30** |
| (o que sobrou: FRIO / QUENTE / TESTE) | R$49,88–62,26 |

Tirar inventário de CPM R$4 e R$19 da média sobe o CPM da conta sozinho. Não é
o leilão piorando — é a composição mudando.

**Prova de que o leilão não piorou:** o CPM do ESCALA FRIO, dele mesmo, dia a dia:

```
24/09  53,72   28/09  69,70   01/10  65,60
25/09  57,27   29/09  68,39   02/10  53,86
26/09  59,37   30/09  69,40
27/09  67,36
```

Picou em R$69,70 no Dia D Kids (a própria conta leiloando contra ela mesma, §13.4)
e **voltou para R$53,86 hoje — o mesmo nível de 24/09.** As campanhas que
sobraram não estão ficando mais caras.

### 24.5 O que isso muda na decisão

A boa notícia e a má são a mesma frase: **a conta trocou volume barato por
volume caro que converte muito melhor, e a troca está pagando.**

```
receita por sessão paga : R$14,00 → R$30,91   (+121%)
custo  por sessão paga  : R$ 4,24 → R$ 5,92   (+40%)
```

A receita por sessão subiu 3x mais rápido que o custo. É isso que autoriza
escalar.

**Mas tem um limite aritmético que eu não tinha enxergado:** a R$5,92/sessão,
voltar aos 566 LPV/dia da base custa **R$3.351/dia**, não R$1.929. Você não
volta ao volume antigo com a verba atual — só com mais dinheiro, ou re-abrindo
o inventário barato que você acabou de matar (e que convertia a 0,9%).

Então a pergunta não é "escala ou não". É **quanto volume você quer comprar a
R$5,92** — e a resposta vem do teste de rampa (§23.8), que é o único dado que
diz onde a verba extra ainda não piora o preço:

| Campanha | 29/09 → 01/10 | Veredicto |
|---|---|---|
| ESCALA FRIO | +29% de verba, CPM **caiu** 69,40→65,60, CTR subiu 2,39→2,92% | **absorve** |
| ESCALA QUENTE | +14% de verba, CPA R$188→R$143 | **absorve** |
| TESTE SET26 | +55% de verba, frequência →2,07, CPA R$118→R$274 | **saturou** |

### 24.6 O que eu não consigo descartar

- **02/10 está em 3,01 de ROAS site.** Parcial (pedido entra ao longo do dia),
  mas é o número de hoje e é mais fraco que 01/10. **Não é dado de decisão
  ainda.**
- **Resíduo do Dia D Kids.** Gente que viu 28–30/09 e comprou em 01/10. Não
  tenho como separar.
- **01/10 é dia 1º.** Testei contra 01–03/09 (554/409/418 sessões, 2,17/2,20/2,15%):
  a conversão dos dias 2 e 3 segurou igual à do dia 1, então **não é efeito de
  salário**. Mas 01–03/09 também foram dias de verba baixa — o que, de novo,
  aponta para a mesma relação: menos verba, melhor conversão.

> **Regra que sai daqui: antes de explicar uma queda de sessão por "pausei
> anúncio", dividir o gasto pelo LPV.** Se o gasto caiu menos que o LPV, a causa
> é preço, não poda — e preço e poda pedem decisões opostas.

---

## §25 — 02/10 FECHOU E DERRUBOU METADE DA MINHA TESE (03/10)

**Não subi a verba.** Pedi aval no fim do §24 e fiquei parado. Foi sorte: o
fechamento de 02/10 tirou a razão do aumento que eu tinha proposto.

### 25.1 Dois dias cheios valem menos que um

| | Gasto site | Faturamento | **ROAS site** | Conversão | AOV |
|---|---|---|---|---|---|
| Base 24–27/09 (preço cheio) | 9.592,41 | 34.170,88 | **3,56** | 1,208% | 589,15 |
| **Só 01/10** | 1.928,65 | 10.138,24 | **5,26** | 2,225% | 544,53 |
| **02/10** | 2.121,53 | 7.040,04 | **3,32** | 1,847% | 452,32 |
| **01+02/10 juntos** | 4.050,18 | 17.178,28 | **4,24** | 2,036% | 520,55 |
| 03/10 parcial | 1.002,62 | 3.482,25 | 3,47 | 1,714% | 569,00 |

```
com 1 dia : +47,6% de ROAS sobre a base
com 2 dias: +19,1%
```

**02/10 fechou em 3,32 — ABAIXO da base de 3,56.** O 01/10 não era o novo
patamar, era o topo da faixa.

O que sobrevive e o que morre da tese:

| Afirmação do §24 | Com 2 dias |
|---|---|
| Conversão melhorou de verdade | **sobrevive** — 2,036% vs 1,208% = +68,6% |
| Entrega ficou mais barata | **sobrevive** — R$/LPV do núcleo 5,34 → 4,65 → 4,97 |
| ROAS +48% justifica escalar | **morre** — virou +19,1%, e um dos dois dias ficou abaixo da base |

A causa do buraco entre conversão (+69%) e ROAS (+19%) é o **ticket: −11,6%**
(R$589 → R$521). Mais gente comprando, carrinho menor. Converter melhor não
é a mesma coisa que faturar melhor.

> **Regra: nunca autorizar aumento de verba com 1 dia de dado.** Eu
> quantifiquei esse risco no §24.6 e mesmo assim propus o aumento. O gate é
> 2 dias cheios no mesmo regime de preço, mínimo.

### 25.2 Meus próprios gatilhos de parada, conferidos

| Gatilho | Leitura | |
|---|---|---|
| CPM do FRIO > R$75 | 02/10 **42,55** · 03/10 **42,48** | ✅ folgado |
| Frequência de conjunto > 1,8 | **TESTE 02/10 = 1,905** | 🚨 **disparou** |
| Conversão 2 dias < 1,8% | 01+02/10 = 2,036% · 02+03/10 = 1,807% | ⚠️ na linha |

Um disparou e outro está encostando. **Isso não é cenário de aumentar verba.**

Detalhe que importa: o CPM do FRIO caiu de R$65,60 (01/10) para R$42,48 — bem
abaixo do nível de 24/09 (R$53,72). O inflacionamento do §24.4 era mesmo o
Dia D Kids leiloando contra a própria conta, e passou.

### 25.3 Duas campanhas entraram na conta e não fui eu

| Campanha | Gasto 02+03/10 | Impressões | CTR | LPV | ATC | Compras |
|---|---|---|---|---|---|---|
| **QUIZ PARASITOSE \| OUT26** | 268,80 | 10.676 | 0,76–1,93% | 84 | **0** | **0** |
| **Boost Live 02/10** | 249,65 | 7.271 | **0,73%** | 3 | 1 | 0 |

Pelos sinais de morte precoce do §13.3, **as duas já estouraram gatilho**:

- QUIZ → sinal 2 (**zero ATC com R$200 gastos**). Está em R$268,80 com ATC zero.
- Boost Live 02/10 → sinal 1 (**CTR < 1,0% com 2.000+ impressões**). 0,73% em 7.271.

Não matei nenhuma das duas: foram subidas por outra pessoa, podem ter objetivo
que eu não conheço (a QUIZ é teste de criativo novo; o boost é alcance de live).
**Fica registrado que o gate já pegou as duas** — decisão do Gabriel.

### 25.4 O que eu faço agora (verba total PARADA)

TESTE contra FRIO, só o dado:

| | Gasto 02/10 | CPM | Freq | CTR | CPA Meta |
|---|---|---|---|---|---|
| **ESCALA FRIO** | 814,78 (teto 800) | **42,55** | **1,42** | **2,11%** | **162,96** |
| **TESTE SET26** | 483,66 | 44,18 | **1,905** | 1,21% | 161,22 |
| ESCALA QUENTE | 417,94 | 36,06 | 1,49 | 1,74% | sem compra |

03/10 parcial: FRIO CPA **R$141,17** · TESTE CPA **R$233,18**.

O FRIO está estourando o próprio teto (gastou R$814,78 contra R$800) com
frequência 1,42 e CPM R$42 — tem apetite e não está saturado. O TESTE está em
frequência 1,905 com CPA indo para R$233.

**Proposta: TESTE de R$440 para R$300, FRIO de R$800 para R$940. Total de site
fica nos mesmos R$1.700/dia.** Zero verba nova até ter dois dias cheios acima
de 4,0 de ROAS site.

---

## §26 — AS TRÊS FONTES INVERTEM DUAS DECISÕES MINHAS (03/10)

O Gabriel autorizou R$2.000/dia e perguntou o que fazer com o teto. Eu
respondi com uma distribuição montada **só com métrica do Meta** — CPM,
frequência, CTR, CPA do pixel. Ele me parou: *"voce consultou somente meta?"*

Estava certo. Isso fere o §12, e o cruzamento mudou duas decisões.

### 26.1 A descoberta de método: o Supabase atribui melhor que o Utmify

A tabela `compra_aprovada` tem `utm_campaign`, `utm_content`, `utm_term` **e uma
coluna `quiz`**. Eu nunca tinha usado para atribuição. Mesma janela, 01–03/10,
48 pedidos:

| Fonte | Pedidos atribuídos | Cobertura |
|---|---|---|
| Utmify | 11 | 22,9% |
| **Supabase `compra_aprovada`** | **21** | **43,8%** |

**Quase o dobro.** E a linha Shopify do Supabase bate exato com o Shopify
Analytics (39 pedidos · R$20.660,53), então a tabela é confiável. O Guru entra
com mais 9 pedidos · R$967,10 que o Shopify não vê.

> **Correção do protocolo (§12 e §20): a atribuição por objeto sai do Supabase,
> não do Utmify.** O Utmify fica para conferência de gasto, onde bate ao centavo.

### 26.2 Erro 1 — eu ia cortar a campanha mais rentável da conta

Ontem eu propus **ESCALA QUENTE de R$460 para R$350**, com este argumento:
*"fechou 02/10 com zero compra e hoje está em R$235 sem compra."*

Era leitura de pixel em janela de 1 dia. O que o Supabase mostra:

| Campanha | Gasto 01–03/10 | Pedidos | Receita atribuída | **ROAS atrib.** | **Ticket** |
|---|---|---|---|---|---|
| **ESCALA QUENTE** | 1.081,29 | 3 | 2.356,93 | **2,18** | **785,64** |
| ESCALA FRIO | 1.972,55 | 6 | 2.332,42 | 1,18 | 388,74 |
| TESTE ADV+KIDS | 1.266,38 | 2 | 701,34 | **0,55** | 350,67 |
| QUIZ PARASITOSE | 272,64 | 0 | 0 | **0,00** | — |
| Boost Lives | 470,44 | 0 | 0 | **0,00** | — |

**O QUENTE é o melhor ROAS atribuído da conta e vende carrinho 2x maior que o
FRIO** (R$786 contra R$389). O pixel jogou as 3 vendas todas no dia 01/10 e
mostrou 02 e 03 zerados — eu li o zero de um dia como morte da campanha.

E o ranking do Meta é o inverso do real: o pixel deu 12 compras ao FRIO
(Supabase: 6) e concentrou as do QUENTE num dia só. **O pixel não subreporta de
forma uniforme — ele empurra crédito para quem gasta mais.**

### 26.3 Erro 2 — o "zero ATC" da QUIZ é provavelmente instrumentação

Eu ia sugerir matar a QUIZ PARASITOSE por zero ATC com R$272 gastos (sinal 2 do
§13.3). A coluna `quiz` do Supabase mostra por onde os pedidos realmente passam:

```
24/09  22 de 23      28/09   5 de 31      01/10  18 de 18
25/09  13 de 15      29/09   2 de 34      02/10  15 de 24
26/09   8 de  9      30/09   2 de 32      03/10   6 de  6
27/09  15 de 15
```

**O quiz é o caminho principal de conversão do negócio** (18/18 em 01/10,
6/6 em 03/10). Só no Dia D Kids a galera comprou direto. Se o funil passa pelo
quiz, **o ATC não dispara na landing** — dispara depois. O sinal 2 é falso
alarme aqui.

> **Regra: o sinal "zero ATC com R$200" do §13.3 não vale para campanha que
> manda para quiz.** O gate dessa campanha é passagem do quiz, não carrinho.

### 26.4 O que as três fontes dizem juntas, 01–03/10

| | Valor | Fonte |
|---|---|---|
| Faturamento | R$20.660,53 | Shopify |
| (+ Guru) | R$967,10 | Supabase |
| Gasto de site | R$5.063,30 | Meta |
| Gasto conferido | bate ao centavo | Utmify |
| **ROAS site blended** | **4,08** | Shopify ÷ Meta |
| vs base 24–27/09 (3,56) | **+14,6%** | |
| Maior fonte isolada | **`vermefree/link_in_bio` — 26 pedidos, R$13.184,33** (desde 28/09) | Supabase |

O **link da bio do Instagram é a maior fonte atribuída da conta** — sozinho vale
mais que todas as campanhas pagas somadas. Isso não é verba, é orgânico.

### 26.5 Distribuição revisada do teto de R$2.000

| Objeto | Hoje | **R$2.000** | R$2.200 | Por quê (3 fontes) |
|---|---|---|---|---|
| **ESCALA FRIO** | 800 | **900** | **1.000** | maior volume, CPM R$42, freq 1,26, estoura o teto. ROAS atrib. 1,18 mas é o motor |
| **ESCALA QUENTE** | 460 | **500** ↑ | **550** | **melhor ROAS atribuído (2,18) e ticket 2x.** Era corte, virou aumento |
| TESTE ADV+KIDS | 440 | **250** | **250** | pior ROAS atrib. (0,55) + maior frequência (1,53) + CTR 1,01% |
| QUIZ *(1 conjunto)* | 500 | **200** | **250** | sem venda ainda, mas o sinal de morte é falso — segue como teste |
| **TOPO DE FUNIL** | 0 | **150** | **150** | alimenta o QUENTE, que é o melhor ROAS. Dia D em 7 dias |
| **Total site** | 2.200 | **2.000** | **2.200** | |

O argumento do topo de funil **ficou mais forte**, não mais fraco: a campanha
que ele alimenta (QUENTE, que come de engajamento IG + video view) é justamente
a de melhor ROAS e maior ticket. Deixar a fonte dela seca a 7 dias do Dia D é o
erro mais caro disponível.

### 26.6 Ressalvas honestas

- **A amostra é pequena.** 3 pedidos no QUENTE, 6 no FRIO, 2 no TESTE. Serve
  para ordenar, não para dimensionar. O ROAS atribuído está subestimado em
  todos porque 56% dos pedidos não têm UTM.
- **Boost Lives: R$470,44 em 3 dias, zero pedido atribuído.** Não mato porque
  alcance de live tem valor fora do clique, mas fica registrado.

---

## §27 — APLICADO E VERIFICADO AO VIVO (03/10)

Instrução do Gabriel: teto de R$2.000, **não encostar na QUIZ** ("ela deve
permanecer como está"), mexer só em ESCALA FRIO, ESCALA QUENTE, TESTE ADV+KIDS
e TOPO DE FUNIL.

Como a QUIZ está congelada nos R$500 dela, os R$2.000 foram aplicados **nos
quatro objetos liberados**, não no total do site.

### 27.1 Estado ao vivo depois da publicação

| Objeto | Antes | **Agora** | Verificado |
|---|---|---|---|
| ESCALA FRIO \| ADV *(CBO)* | 800 | **1.000** | ✅ ACTIVE |
| ESCALA QUENTE \| ENG IG + VIDEO VIEW | 460 | **550** | ✅ ACTIVE |
| TESTE \| ADV | 300 | **160** | ✅ ACTIVE |
| TESTE \| KIDS \| Maes 28-45 | 140 | **140** *(não mexi)* | ✅ ACTIVE |
| TOPO \| VIDEO VIEWS \| Mulheres 28-55 | pausada | **150 · religada** | ✅ ACTIVE |
| **Subtotal liberado** | **1.700** | **2.000** | |
| QUIZ PARASITOSE (10 × 50) | 500 | **500** *(congelada)* | não tocada |
| CTWA \| QUENTE CONSOLIDADO | 100 | **100** | não tocada |
| **Site** | 2.200 | **2.500** | |
| **Conta** | 2.300 | **2.600** | |

### 27.2 Por que cada número

- **FRIO 800 → 1.000 (+25%).** O teste de rampa do §23.8 provou que ele absorve
  +29% com o CPM caindo. +25% está dentro da faixa já testada. Estourou o
  próprio teto em 02/10 (gastou R$814,78 contra R$800) e roda frequência 1,26.
- **QUENTE 460 → 550 (+20%).** Melhor ROAS atribuído da conta (2,18) e ticket
  R$785,64, o dobro do FRIO (§26.2). Aumento contido porque o público é quente
  e finito.
- **TESTE ADV 300 → 160 (−47%).** Pior nas três fontes: ROAS atribuído 0,55,
  frequência 1,53, CTR 1,01%, CPA R$233 em 03/10.
- **TESTE KIDS 140 → 140.** Não mexi de propósito: Kids é **43% dos pedidos**
  (Shopify, 01–03/10). Não corto o único conjunto dedicado a Kids sem dado
  melhor do que tenho.
- **TOPO religado a 150.** O conjunto já estava configurado em R$150 com
  2 anúncios ativos dentro — só a campanha estava pausada, então bastou
  religar. CPM R$3,82, frequência 1,11.

### 27.3 Ressalva sobre o gate do TOPO

Os dois anúncios do TOPO rodam **CTR 0,43% e 0,46%** com 113 mil e 48 mil
impressões. Pelo §13.3 isso é sinal de morte 1 (CTR < 1,0% com 2.000+
impressões) — mas **esse sinal não se aplica aqui**: a campanha é
OUTCOME_ENGAGEMENT otimizando video view, onde o clique não é o objetivo. O que
ela compra é alcance a R$3,82 de CPM para alimentar os públicos quentes antes
do Dia D (10/10).

> Fica registrado para não ser matada por engano numa revisão de gate.

### 27.4 Detalhe operacional

**O TESTE ADV já tinha gasto R$160,86 hoje quando o novo teto de R$160 entrou** —
ou seja, ele para de entregar pelo resto do dia 03/10. O corte começa a valer de
fato amanhã.

### 27.5 O que medir antes de mexer de novo

Próxima leitura: **segunda 06/10**, com as três fontes e o Supabase como
atribuição (§26.1). Não mexer antes disso (§13.6).

- [ ] ROAS site blended de 04–05/10 contra a base de 3,56
- [ ] QUENTE: o ticket de R$785 se sustenta com +20% de verba?
- [ ] FRIO: CPM segue abaixo de R$75 e frequência abaixo de 1,8?
- [ ] TOPO: os públicos quentes voltaram a crescer? (é o teste real dele)

### 27.6 REGRA PERMANENTE — a QUIZ PARASITOSE fica fora de tudo

Instrução do Gabriel, 03/10: *"nao é pra pausar o quiz.. nem é pra tocar nem
envolver ela em nada.. finje que ela nem ta ali."*

Eu não toquei na campanha — a leitura ao vivo feita **depois** das publicações
confirma os 10 conjuntos em R$50 e ACTIVE. Mas eu a incluí na aritmética e no
relatório ("site vai de 2.200 para 2.500"). Isso também está proibido.

**Daqui em diante, em qualquer análise, relatório ou decisão de verba:**

- A campanha **QUIZ PARASITOSE | OUT26** (e seus conjuntos CJ01–CJ10) não é
  editada, pausada, consolidada, nem proposta para mudança.
- **Não entra em soma de orçamento, em total de site, em ROAS de conta, nem em
  tabela de comparação entre campanhas.**
- O orçamento sob gestão são **os quatro objetos liberados**: ESCALA FRIO,
  ESCALA QUENTE, TESTE ADV, TESTE KIDS, mais o TOPO DE FUNIL. **Total: R$2.000/dia.**
- O CTWA segue separado nos R$100 (§24, instrução anterior do Gabriel).

> Correção da tabela do §27.1: o número de gestão é **R$2.000/dia**. As linhas
> "Site 2.500" e "Conta 2.600" daquela tabela não devem ser usadas.

---

## §28 — LEITURA DE DOMINGO 04/10 (três fontes, cinco objetos)

Escopo: só os cinco objetos sob gestão. QUIZ fora de tudo (§27.6), CTWA fora,
WhatsApp fora (sem disparo em massa: 03/10 teve R$1,16 de API, dia limpo).

### 28.1 TRÊS MUDANÇAS NA CONTA QUE NÃO FUI EU

| Objeto | Eu deixei em | **Está em** |
|---|---|---|
| ESCALA FRIO \| ADV | **1.000** (publicado e verificado 03/10) | **810** |
| CTWA \| QUENTE CONSOLIDADO | 100 | **51** |
| QUIZ PARASITOSE \| OUT26 | ACTIVE, não tocada | **PAUSED** |

QUENTE (550), TESTE ADV (160), TESTE KIDS (140) e TOPO (150) estão como eu
deixei. **Orçamento sob gestão hoje: R$1.810, não R$2.000.**

Registro sem julgamento — pode ter sido o Gabriel. Mas a leitura abaixo é
contra R$1.810, não contra o teto que combinamos.

### 28.2 03/10 fechado — e por que o número feio não é o que parece

| | 03/10 (sáb) | 02/10 (sex) | **26/09 (sáb anterior, preço cheio)** |
|---|---|---|---|
| Sessões | **1.187** | 812 | 1.213 |
| Pedidos | **9** | 15 | 8 |
| Conversão | **0,758%** | 1,847% | 0,660% |
| ATC | 39 (3,3%) | 63 (7,8%) | 30 (2,5%) |
| Faturamento | **4.508,42** | 7.040,04 | 4.276,84 |
| Gasto (5 objetos) | **1.892,84** | — | 2.518,58 |
| **ROAS site** | **2,38** | 3,32 | **1,70** |

Sessões subiram 46% e pedidos caíram 40%. Parece desastre. Não é:

**03/10 é um sábado, e é praticamente o gêmeo de 26/09** — o sábado anterior
sem promoção: 1.187 vs 1.213 sessões, 0,758% vs 0,660%, R$4.508 vs R$4.277.
Contra o dia certo, **o ROAS foi de 1,70 para 2,38 (+40%) gastando 25% menos.**

O TOPO explica só uma fração: ele trouxe 161 sessões de CPM R$2,77 que não
convertem. Tirando elas, 1.026 sessões / 9 pedidos = 0,877%. **0,12 ponto dos
1,09 que caíram.** A causa principal é o dia da semana.

> **Meu erro de método, de novo:** marquei a leitura para domingo e deixei o
> gatilho "conversão de 2 dias abaixo de 1,8%" valendo — sem notar que os dois
> dias seriam **sábado e domingo**. O gatilho ia disparar por calendário, não
> por performance. **Gatilho de conversão tem que comparar dia útil com dia
> útil e fim de semana com fim de semana.**

### 28.3 04/10 parcial (9h) — começo forte

| | Valor |
|---|---|
| Gasto (5 objetos) | R$387,52 |
| Shopify | 224 sessões · 3 pedidos · **R$2.727,41** |
| Ticket | **R$899,12** |
| **ROAS site parcial** | **7,04** |
| Cobertura de UTM | **3 de 3 = 100%** |

3 pedidos às 9h com um ticket desse tamanho — um pedido grande puxa o número.
Não é dado de decisão.

### 28.4 Atribuição real (Supabase)

**03/10 — 9 pedidos, 5 com UTM (55,6%)**

| Origem | Pedidos | Receita | ROAS atrib. |
|---|---|---|---|
| (sem utm) | 4 | 2.173,56 | — |
| **ESCALA FRIO** | 2 | 903,28 | **1,13** |
| `vermefree` (bio) | 1 | 626,34 | orgânico |
| **TESTE** | 1 | 415,25 | **1,14** |
| `dia_d_0606` | 1 | 389,99 | CRM |
| **ESCALA QUENTE** | **0** | **0** | **0,00** |

**04/10 parcial — 3 de 3 com UTM**

| Origem | Pedidos | Receita | Ticket | ROAS atrib. |
|---|---|---|---|---|
| **ESCALA FRIO** | 2 | 1.577,41 | 788,71 | **9,42** |
| **ESCALA QUENTE** | 1 | 1.150,00 | **1.150,00** (Kit Família) | **9,98** |

Conferência Utmify: gasto Meta 03–04/10 R$2.616,27 contra R$2.613,61 do Meta —
bate (dia em movimento). Rastreio do Utmify: 2 de 12 = **16,7%**, contra
**66,7% do Supabase**. Confirma o §26.1.

### 28.5 As perguntas que eu tinha deixado

**ESCALA FRIO — CPM abaixo de R$75 e frequência abaixo de 1,8?**
✅ Folgado, e é o melhor objeto da conta.

```
03/10  CPM 37,15  freq 1,28  CTR 2,56%  5 compras  CPA 160,33
04/10  CPM 53,73  freq 1,23  CTR 2,63%  2 compras  CPA  83,76
```

**ESCALA QUENTE — o ticket de R$785 se sustenta com R$550?**
Sim, mas **intermitente**. 03/10 zerou — e aqui o pixel estava certo, o Supabase
confirma zero pedido com R$469,58 gastos. 04/10 trouxe 1 Kit Família de
R$1.150. O padrão é poucos pedidos de ticket muito alto: 4 pedidos em 5 dias,
ticket médio ~R$878. **Com esse padrão, um dia zerado não significa nada — e
três zerados significam tudo.** Vale observar, não cortar.

**TESTE ADV — o corte para R$160 melhorou o CPA?**
Não dá para dizer ainda: o teto novo só passou a valer hoje (ontem ele já tinha
gasto o teto antes da edição). O que dá para dizer é que **03/10 rodou
frequência 1,837 — acima do meu gatilho de 1,8.** CPA R$182,44.

**TOPO — religou e entregou?**
✅ Entregou muito: **92.680 impressões por R$256,74 em 03/10, CPM R$2,77**,
frequência 1,04. 161 LPV, 0 ATC, 0 compra — esperado (§27.3).
⚠️ **Estourou o teto: R$256,74 contra R$150 (+71%).** Hoje está pacing normal
(R$40,08 de R$150). Se repetir, travar.

**Os públicos quentes estão crescendo? (Dia D em 6 dias)**
Cedo para dizer — o TOPO rodou 1 dia. O sinal a favor é o Kit Família de
R$1.150 vindo do QUENTE hoje. O teste real é a semana.

### 28.6 Recomendação: não mexer em nada hoje

Sábado e domingo não decidem verba. A próxima decisão é **segunda 06/10**, com
dois dias úteis (06 e 07/10) contra dias úteis.

O que eu levaria para segunda, se o dado confirmar:
- [ ] FRIO: se o CPA de R$83–160 segurar, ele merece os R$1.000 de volta
- [ ] TESTE: frequência 1,837 em 03/10 — se repetir em dia útil, cortar mais
- [ ] TOPO: travar o estouro de orçamento
- [ ] QUENTE: contar os dias zerados. Três seguidos = revisar

---

## §29 — RELATÓRIO DE SEGUNDA 05/10 · três fontes + Supabase · decisões

Escopo: cinco objetos sob gestão. QUIZ fora de tudo (§27.6), CTWA fora,
WhatsApp fora (sem disparo em massa na semana). **Dia D em 5 dias (10/10).**

### 29.1 A semana no Shopify

| Dia | Sessões | ATC | Conv. | Pedidos | Faturamento | Gasto (5 obj) | **ROAS site** |
|---|---|---|---|---|---|---|---|
| 01/10 qui | 809 | 7,0% | 2,22% | 18 | 10.138,24 | 1.707,86 | **5,94** |
| 02/10 sex | 812 | 7,8% | 1,85% | 15 | 7.040,04 | 1.716,38 | **4,10** |
| 03/10 sáb | 1.187 | 3,3% | 0,76% | 9 | 4.508,42 | 1.892,84 | **2,38** |
| 04/10 dom | 1.212 | **1,9%** | **0,66%** | 8 | 5.474,51 | 1.866,48 | **2,93** |
| 05/10 seg* | 377 | 6,9% | 1,86% | 7 | 4.430,84 | 566,42 | **7,82** |
| **Semana** | **4.397** | — | **1,30%** | **57** | **31.592,05** | **7.749,98** | **4,08** |

\*parcial · base de preço cheio 24–27/09 = 3,56 → **+14,5%**

**O fim de semana é um buraco estrutural, não uma piora da conta.** O ATC caiu
de 7,8% (sex) para 1,9% (dom) e voltou a 6,9% hoje. Dia útil converte 1,85–2,22%;
fim de semana converte 0,66–0,76%. Toda decisão de verba tem que comparar dia
útil com dia útil (§28.2).

> **Nota de honestidade:** o ROAS acima é faturamento TOTAL do Shopify dividido
> pelo gasto dos 5 objetos. Como houve gasto fora do meu escopo na semana
> (R$847,72 em objetos que não gerencio), o número favorece ligeiramente os 5.
> Contra o gasto de site inteiro (R$8.597,70) o ROAS da semana é **3,67**.

### 29.2 Atribuição real por objeto (Supabase, 01–05/10)

| Objeto | Gasto | Pedidos | Receita atrib. | **ROAS atrib.** | CPA atrib. | **Ticket** |
|---|---|---|---|---|---|---|
| **ESCALA FRIO** | 3.453,06 | **13** | 6.507,69 | **1,88** | 265,62 | 500,59 |
| **ESCALA QUENTE** | 2.027,41 | 4 | 3.506,93 | **1,73** | 506,85 | **876,73** |
| **TESTE ADV+KIDS** | 1.779,50 | 3 | 1.110,78 | **0,62** | **593,17** | 370,26 |
| TOPO | 490,01 | 0 | 0 | 0,00 | — | — |

Fora dos 5: `vermefree/link_in_bio` 7 pedidos · R$2.659,99 (orgânico) e CRM
(`dia_d_kids`, `dia_d_0606`, `semana_do_cliente`, `acao_alunos_drwilliam`)
5 pedidos · R$2.926,13.

**Cobertura de atribuição, 66 pedidos:** Utmify 20 (30,3%) · **Supabase 32
(48,5%)**. Conferência de gasto: Utmify R$8.893,83 contra R$8.834,87 somados no
Meta — bate (dia em movimento).

### 29.3 Nível de anúncio — onde o dinheiro está sendo ganho e perdido

| Anúncio | Gasto | Compras | CPA | ROAS Meta | CTR | Freq | Veredicto |
|---|---|---|---|---|---|---|---|
| **KIDS_PET** *(TESTE KIDS)* | 517,16 | **5** | **103,43** | **6,15** | 1,38% | 1,82 | **GRADUA** |
| **AD_TD_JATOMEI_01** *(FRIO)* | 1.496,09 | **12** | **124,67** | 3,64 | 2,84% | 1,41 | campeão |
| SINAIS_02 | 296,34 | 2 | 148,17 | 3,33 | 1,87% | 1,16 | saudável |
| ROTINA_CICLOS *(FRIO)* | 365,02 | 2 | 182,51 | 3,22 | 1,69% | 1,19 | saudável |
| N_A2_DIRETO | 569,00 | 3 | 189,67 | 1,75 | 1,05% | **2,86** | freq crítica |
| **ROTINA_CICLOS** *(QUENTE)* | 807,78 | 3 | 269,26 | **3,99** | **3,77%** | 1,58 | ticket alto |
| AD_TD_JATOMEI_02 | 1.043,00 | 4 | 260,75 | 2,23 | 2,24% | 1,42 | **observa** |
| **12SINAIS** | **551,92** | **0** | — | — | 1,16% | 1,98 | **MATA** |
| **AD_TD_SINAIS_01** | **1.090,98** | 2 | **545,49** | 1,25 | **0,95%** | **2,04** | **MATA** |
| 3SINAIS | 132,99 | 0 | — | — | **10,46%** | 1,17 | abaixo do gate |
| KIDS_AMAMENTACAO | 141,57 | 0 | — | — | 0,85% | 2,13 | abaixo do gate |
| DUVIDAS (×2) | 167,72 | 0 | — | — | 2,7% | 1,5 | abaixo do gate |

### 29.4 Decisões propostas

**1 · GRADUAR o KIDS_PET para a escala.** 5 compras · R$517,16 · CPA R$103,43 ·
ROAS Meta 6,15. Cruza o gate de graduação (≥5 compras + R$150 + ROAS ≥2,2) com
folga. É o melhor CPA da conta e está preso numa campanha de teste.

**2 · MATAR o 12SINAIS.** R$551,92 gastos, **zero compra**. Passou dos R$450 do
gate sem uma venda — §13.1 não deixa margem.

**3 · MATAR o AD_TD_SINAIS_01.** Três motivos, não um: CPA R$545,49 (acima dos
R$200 com R$1.091 gastos), **CTR 0,95% com 34.795 impressões** (sinal 1 do
§13.3) e frequência 2,04.

**4 · NÃO matar o AD_TD_JATOMEI_02, apesar do gate.** CPA R$260,75 manda cortar.
Mas é exatamente este anúncio que o §13.1 registra como já tendo sido declarado
morto por engano e recuperado para ROAS 5,26. ROAS atual 2,23, acima do
breakeven (1,25–1,82 do §22). **Reavalia quinta 08/10.** Essa é a lição mais
cara do playbook e eu não vou repeti-la.

**5 · N_A2_DIRETO a frequência 2,86** está reciclando o mesmo público. Não mato
— é o TOPO que resolve isso, alimentando público novo.

**6 · TESTE como campanha fica, com função mudada.** ROAS atribuído 0,62 é o
pior dos 5 objetos, mas a função dela é graduar anúncio e ela acabou de graduar
o KIDS_PET. Tirando o 12SINAIS e graduando o KIDS_PET, ela volta a ser teste de
criativo para o Dia D — não verba de escala.

### 29.5 Verba proposta (teto de R$2.000 que o Gabriel autorizou)

| Objeto | Hoje | **Proposto** | Por quê |
|---|---|---|---|
| **ESCALA FRIO** | 810 | **950** | JATOMEI_01 a CPA R$124,67; CTR 3,61% e freq 1,17 hoje; 13 dos 20 pedidos atribuídos |
| **ESCALA QUENTE** | 550 | **550** | ticket R$876,73 é o maior da conta, mas freq subiu 1,31→1,61. Não aumenta |
| TESTE ADV+KIDS | 300 | **300** | mantém como teste de criativo pro Dia D |
| **TOPO** | 150 | **200** | munição do Dia D: CPM R$2,19–2,85, 24–73 mil impressões/dia |
| **Total** | **1.810** | **2.000** | |

### 29.6 Dia D 10/10 — o que precisa estar pronto (5 dias)

Referência do Dia D anterior (09/09): R$2.924,75 de gasto, 2.539 sessões,
**conversão de 5,199%**, 116 compras no pixel. É o dobro de sessão e 4x a
conversão de um dia normal.

- [ ] **Público quente carregado.** O TOPO voltou só em 03/10 — tem 5 dias de
      alcance a CPM ~R$2,50. É o que o QUENTE vai consumir no dia 10.
- [ ] **Campanha de Dia D criada e com verba própria**, separada do perpétuo,
      para não contaminar a leitura do perpétuo (§12: isolar dia de evento).
- [ ] **Anúncios definidos:** JATOMEI_01 (CPA R$124) e KIDS_PET (CPA R$103) são
      os dois com direito a entrar. ROTINA_CICLOS no QUENTE pelo ticket.
- [ ] **Não mexer no perpétuo entre 08 e 10/10** — edição reinicia aprendizado
      na véspera do maior dia do mês.
- [ ] A lista de ciclo (796 clientes, §23.5) continua sem disparar. É a munição
      mais barata que existe para o dia 10 e está parada.

---

## §30 — ANÁLISE POR CRIATIVO (05/10) · a conta está com os melhores pausados e os piores ativos

Janela 20/09–05/10. Agregado por **criativo**, somando as instâncias do mesmo
vídeo em conjuntos diferentes (a visão de campanha esconde isso: ROTINA_CICLOS,
SINAIS_01, JATOMEI_01 e DUVIDAS rodam em mais de um lugar).

**Receita por criativo vem do Supabase (`utm_content` = id do anúncio), não do
pixel.** O pixel não mede criativo — ele distribui crédito para quem gasta mais.

### 30.1 A tabela

| Criativo | Gasto | Ped. | Receita | **ROAS atrib.** | CPA atrib. | Ticket | ped/R$1k | Freq | Ret. vídeo | LPV→ATC |
|---|---|---|---|---|---|---|---|---|---|---|
| **N_CORPO_PEDINDO** ⏸ | 309 | 2 | **1.803** | **5,84** | 154 | **901** | 6,47 | 1,56 | 40% | 9,3% |
| **SINAIS_01** ⏸ | 849 | 5 | **2.766** | **3,26** | 170 | 553 | 5,89 | **1,21** | 27% | 5,9% |
| **ROTINA_CICLOS** | 2.282 | 7 | 5.126 | **2,25** | 326 | 732 | 3,07 | 1,74 | 33% | 12,8% |
| **AD_TD_JATOMEI_02** | 4.696 | **15** | **9.820** | **2,09** | 313 | 655 | 3,19 | 1,82 | 37% | 12,1% |
| **AD_TD_JATOMEI_01** | 3.886 | 13 | 6.424 | 1,65 | 299 | 494 | 3,35 | 1,56 | 31% | 9,0% |
| DUVIDAS [graduou] ⏸ | 434 | 1 | 586 | 1,35 | 434 | 586 | 2,30 | 1,55 | 32% | 20,5% |
| 3SINAIS | 1.905 | 2 | 1.653 | 0,87 | 953 | 827 | 1,05 | 1,34 | 33% | 4,6% |
| N_A2_DIRETO | 876 | 2 | 701 | 0,80 | 438 | 351 | 2,28 | **3,12** | 26% | 11,5% |
| KIDS_PET | 642 | 1 | 409 | 0,64 | 642 | 409 | 1,56 | 1,91 | 22% | 10,8% |
| **AD_TD_SINAIS_01** | **2.141** | **0** | **0** | **0,00** | — | — | 0,00 | **2,48** | 27% | 16,5% |
| **12SINAIS** | **1.562** | **0** | **0** | **0,00** | — | — | 0,00 | **2,36** | 29% | 16,2% |
| JULIANA_UNBOX ⏸ | 1.067 | 0 | 0 | 0,00 | — | — | 0,00 | **2,91** | 40% | 32,8% |
| AD_TD_RANGER_02 ⏸ | 878 | 0 | 0 | 0,00 | — | — | 0,00 | 1,53 | 23% | 13,4% |
| N_DUVIDAS_CALMA ⏸ | 767 | 0 | 0 | 0,00 | — | — | 0,00 | **3,07** | **48%** | **0,0%** |
| N_POR_QUE_CICLOS ⏸ | 765 | 0 | 0 | 0,00 | — | — | 0,00 | 1,22 | 35% | 2,9% |
| AD_TD_8H02 ⏸ | 686 | 0 | 0 | 0,00 | — | — | 0,00 | 1,64 | 27% | 9,0% |
| N_TRES_SINAIS ⏸ | 565 | 0 | 0 | 0,00 | — | — | 0,00 | 1,45 | 42% | 7,1% |
| SINAIS_02 | 371 | 0 | 0 | 0,00 | — | — | 0,00 | 1,22 | 16% | 2,7% |
| KIDS_AMAMENTACAO | 311 | 0 | 0 | 0,00 | — | — | 0,00 | 1,57 | 21% | **69,6%** |
| **TOTAL** | **24.992** | **48** | **29.289** | **1,17** | 521 | 610 | **1,92** | | | |

⏸ = pausado agora

### 30.2 O achado: a conta está invertida

**Os dois melhores criativos por ROAS atribuído estão PAUSADOS:**

| | ROAS atrib. | Status |
|---|---|---|
| N_CORPO_PEDINDO | **5,84** | ⏸ pausado (veio da TESTE 2, que foi pausada) |
| SINAIS_01 | **3,26** | ⏸ pausado (nas duas instâncias) |

**Os dois maiores ralos estão ATIVOS:**

| | Gasto | Pedidos atrib. | Status |
|---|---|---|---|
| AD_TD_SINAIS_01 | **R$2.141** | **0** | ▶ ativo |
| 12SINAIS | **R$1.562** | **0** | ▶ ativo |

### 30.3 A regra que o dado revela: frequência acima de 2,3 mata o criativo

| Bucket de frequência | Gasto | Receita atrib. | **ROAS** |
|---|---|---|---|
| Freq ≤ 1,82 (11 criativos) | 18.579 | 28.588 | **1,54** |
| **Freq > 2,3 (5 criativos)** | **6.413** | **701** | **0,11** |

**R$6.413 — 25,7% de tudo que foi gasto — entrou em criativo com frequência
acima de 2,3 e devolveu R$701.** Nenhum criativo acima de 2,3 passou de ROAS
0,80. Nenhum.

Mas a regra é **assimétrica**: frequência alta condena, frequência baixa não
salva. AD_TD_RANGER_02 (1,53), N_POR_QUE_CICLOS (1,22) e SINAIS_02 (1,22)
rodaram frequência ótima e deram zero.

> **Regra nova: frequência de criativo acima de 2,3 é corte, sem discussão e
> sem esperar o gate de gasto.** Entra como quarto sinal de morte precoce no
> §13.3 — e é o único que não precisa de volume para ser confiável.

### 30.4 Duas métricas que eu usava e que NÃO preveem venda

**Retenção de vídeo (p75÷p25) não prevê nada.**

```
N_DUVIDAS_CALMA   retenção 48% (a melhor)  →  R$767 gastos, ZERO venda
N_TRES_SINAIS     retenção 42%             →  R$565 gastos, ZERO venda
JULIANA_UNBOX     retenção 40%             →  R$1.067 gastos, ZERO venda
KIDS_PET          retenção 22% (a pior)    →  melhor CPA da conta no Meta
SINAIS_01         retenção 27%             →  ROAS atribuído 3,26
```

**LPV→ATC também não.**

```
KIDS_AMAMENTACAO  69,6% de LPV→ATC  →  ZERO venda atribuída
JULIANA_UNBOX     32,8%             →  ZERO venda atribuída
AD_TD_SINAIS_01   16,5%             →  ZERO venda atribuída
SINAIS_01          5,9%             →  ROAS 3,26
```

O caso mais claro é o **N_DUVIDAS_CALMA**: CPM R$8,65 (o mais barato),
CTR 1,77%, a melhor retenção da conta, **545 landing page views e ZERO add to
cart**. É um gancho que funciona perfeitamente para trazer gente que não quer
comprar.

> **Regra: criativo se julga por pedido atribuído por R$1.000 gastos. Retenção,
> CTR e LPV→ATC servem para diagnosticar POR QUE um criativo falha — nunca para
> decidir se ele fica.**

### 30.5 Ressalva honesta sobre o zero

A cobertura de UTM é ~48%, então "zero atribuído" não é prova de zero venda.
Quanto o zero vale, por criativo:

| Criativo | Gasto | Esperado na média da conta | Veio | Pixel diz |
|---|---|---|---|---|
| AD_TD_SINAIS_01 | 2.141 | ~4,1 pedidos | **0** | 9 |
| 12SINAIS | 1.562 | ~3,0 | **0** | 9 |
| JULIANA_UNBOX | 1.067 | ~2,0 | **0** | 7 |
| AD_TD_RANGER_02 | 878 | ~1,7 | **0** | 7 |

Com 48% de cobertura, um criativo com 4 vendas reais teria ~6% de chance de
mostrar zero; com 9 vendas, menos de 1%. **Nos dois primeiros o zero é forte.**
Nos dois últimos é sugestivo, não conclusivo — e os dois já estão pausados.

### 30.6 Decisões por criativo

**Cortar agora (ativos e sangrando):**
1. **AD_TD_SINAIS_01** — R$2.141, zero atribuído, freq 2,48, CTR 1,08%
2. **12SINAIS** — R$1.562, zero atribuído, freq 2,36
3. **N_A2_DIRETO** — freq 3,12, ROAS 0,80. Não é zero, mas está reciclando público

**Religar e testar (pausados e bons):**
4. **SINAIS_01** — ROAS atrib. 3,26, freq 1,21, 5 pedidos. O melhor com amostra
   defensável. Volta para a ESCALA FRIO
5. **N_CORPO_PEDINDO** — ROAS atrib. 5,84, ticket R$901. **Só 2 pedidos**, então
   volta como teste com R$100/dia, não como escala

**Manter como são:**
6. **AD_TD_JATOMEI_02** — R$9.820 de receita atribuída, o maior gerador absoluto
   da conta. Confirma o §29.4: não matar pelo CPA
7. **ROTINA_CICLOS** — ROAS 2,25 com ticket R$732. É o que vende Kit Família
8. **AD_TD_JATOMEI_01** — ROAS 1,65, 13 pedidos. Motor de volume

**Reavaliar o 3SINAIS:** R$1.905 gastos, ROAS atrib. 0,87, apenas 1,05 pedidos
por R$1.000 — metade da média da conta. CTR 3,41% é excelente e me fez defendê-lo
no §19.2. **A receita diz que o CTR me enganou de novo.**
