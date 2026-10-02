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
