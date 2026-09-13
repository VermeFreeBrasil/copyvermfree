# Pós-Compra — Régua de Entrega + Convite de Influenciadora · VermeFree

> Card `86akbgauq` é compartilhado com a Botanika ("Botanika e VermeFree usam a mesma estrutura"). **Este documento cobre só a parte VermeFree**, por pedido explícito — a parte Botanika fica pendente pra quem for fazer.

**Por que existe:** o suporte recebe até 50 mensagens/dia perguntando "cadê meu pedido". Essa régua avisa antes da pessoa perguntar.

**Canal sugerido:** WhatsApp API, Categoria UTILITY para as 8 mensagens de entrega — são avisos transacionais de status de pedido, não promocionais, então Utility é o encaixe correto (diferente do caso do Dia D, onde Utility era usado pra conteúdo promocional). Para o convite de influenciadora, ver nota específica abaixo.

**Tom (regra da tarefa):** mensagens de entrega curtas e diretas, só pra tranquilizar — nenhuma delas vende. O convite de influenciadora é a exceção: pode ser mais longo, porque está propondo algo. Tom VermeFree: mãe cuidando da família, mais acolhedor que o Botanika.

## O que preencher
- `{{nome}}` — primeiro nome.
- `[LINK_RASTREIO]` — link de rastreio dos Correios/transportadora.
- `[LINK_AVALIACAO]` — link da página de avaliação do produto.
- `{{cupom_recompra}}` — o cupom de recompra que já existe (buscar o código real com a Sarah — não criar cupom novo).
- `[DATA_LIMITE_RETIRADA]` e `[DADOS_AGENCIA]` — preenchidos por sistema/automação, variam por pedido.
- `[LINK_CADASTRO_INFLUENCIADORA]` — link da página de cadastro (spec abaixo).

---

## PARTE 1 — As 8 mensagens da régua de entrega

### 1 · Pedido confirmado
```
Categoria: UTILITY

Oi, {{nome}} 🌿

Seu pedido na VermeFree foi confirmado! A partir de agora você recebe um aviso a cada etapa, até ele chegar na sua casa.

Pode ficar tranquila — a gente cuida do resto.
```

### 2 · Sendo separado
```
Categoria: UTILITY

Oi, {{nome}} 👋

Seu pedido já saiu do sistema e está sendo separado no nosso estoque. Próximo passo: embalagem.
```

### 3 · Sendo embalado
```
Categoria: UTILITY

Seu pedido está sendo embalado com carinho, {{nome}}. 📦

Assim que for postado, a gente te avisa por aqui.
```

### 4 · Com a transportadora (postado) — avisa sobre atraso do rastreio
```
Categoria: UTILITY

Seu pedido foi postado, {{nome}}! 🚚

O código de rastreio pode levar algumas horas para começar a atualizar depois da postagem — é normal, não precisa se preocupar se ele ainda não mostrar nada agora.

👉 [LINK_RASTREIO]
```

### 5 · Em transferência
```
Categoria: UTILITY

Só passando para avisar: seu pedido está em trânsito entre unidades, {{nome}}. Segue o fluxo normal, cada vez mais perto de chegar. 🌿
```

### 6 · Saiu para entrega
```
Categoria: UTILITY

Hoje é o dia, {{nome}}! Seu pedido saiu para entrega e deve chegar na sua casa ainda hoje. 🏠
```

### 7 · Entregue — avaliação + cupom de recompra
```
Categoria: UTILITY

Chegou, {{nome}}? 🌿 Esperamos que sim!

Como foi receber o seu protocolo VermeFree? Adoraríamos ouvir — sua avaliação ajuda outras famílias a decidirem com mais calma:

👉 [LINK_AVALIACAO]

E já que você é de casa: use {{cupom_recompra}} na próxima compra.
```

### 8 · Aguardando retirada no galpão dos Correios (mensagem extra)
```
Categoria: UTILITY

Oi, {{nome}} — um aviso importante sobre o seu pedido. 📮

Ele chegou na agência e está aguardando retirada até [DATA_LIMITE_RETIRADA]. Depois desse prazo, ele volta automaticamente para nós.

Local e horário de retirada: [DADOS_AGENCIA]
```

---

## PARTE 2 — Convite de Influenciadora (VermeFree)

**Quando dispara:** cliente com 2+ compras.
**Categoria:** ⚠️ a confirmar com o time — não é anúncio de desconto pro próprio cliente, é um convite de parceria/renda, o que não se encaixa perfeitamente em Marketing nem em Utility. Se a diretriz "todo disparo de API vai por Utility" (do Gabriel) for geral, usar Utility; se for específica do Dia D, esta peça é boa candidata a Marketing por ser uma proposta comercial. Sinalizando para decisão de quem aprova os templates.

```
Oi, {{nome}} 🌿

Reparamos uma coisa bacana: você já comprou com a gente mais de uma vez. Isso não é coincidência — você usa de verdade, e a gente queria te convidar pra algo além da compra.

Que tal ganhar por indicar a VermeFree pra quem você já recomenda por conta própria?

Funciona assim: você ganha um cupom só seu, de 5% de desconto, pra compartilhar com quem quiser. E a cada venda feita com o seu código, você recebe 15% de comissão.

É rápido: clica no link, se cadastra, entra no nosso grupo de parceiras e o seu cupom já é criado na hora.

👉 [LINK_CADASTRO_INFLUENCIADORA]
```

---

## PARTE 3 — Página de cadastro de influenciadora (copy + campos)

> Automação (disparar criação do cupom na Shopify, adicionar ao grupo) é com a Sarah. Aqui vai o texto da página e a definição dos campos que ela coleta.

**Headline:** Você já é uma indicação de confiança. Agora pode ganhar por isso.
**Subheadline:** Cadastre-se e receba seu cupom exclusivo de 5% — com 15% de comissão em cada venda feita com ele.

**Campos do formulário:**
1. Nome completo
2. Instagram (@usuário)
3. E-mail
4. WhatsApp
5. Chave PIX (pagamento da comissão)

⚠️ **Nota de segurança:** sugiro coletar só **chave PIX**, não dados bancários completos (banco/agência/conta) — é o padrão mais simples e mais seguro pra pagamento de comissão, e reduz o tipo de dado sensível que a página precisa guardar. Se o time preferir dados bancários completos mesmo assim, vale reforçar que esse campo não devia ficar em planilha aberta ou ferramenta sem controle de acesso.

**Texto de confirmação (depois do envio):**
```
Prontinho, {{nome}}! Seu cadastro foi recebido.

Em instantes você recebe o convite para entrar no grupo de parceiras VermeFree, e seu cupom já vai estar ativo.
```

---

## Notas para Sarah
- Cupom de recompra da mensagem 7 já existe — buscar o código real em uso antes de programar, não criar um novo.
- Categoria das 8 mensagens de entrega: UTILITY (são avisos de status de pedido, não oferta) — isso está alinhado com a diretriz de "toda API via Utility", sem o mesmo conflito de compliance que existia nas peças do Dia D.
- Categoria do convite de influenciadora: pendente de decisão (ver nota na Parte 2).
- Trigger do convite de influenciadora: 2ª compra ou mais — confirmar com quem cuida da lógica de disparo se é "exatamente na 2ª compra" ou "a partir da 2ª" (reincidente contínuo).
- Página de cadastro: preciso alinhar com você o payload que a automação espera receber (quais campos, formato) pra criar o cupom na Shopify e adicionar ao grupo — meu lado (campos, copy) está pronto, falta o encontro dos dois lados.

## Notas para Ana
- Pendente alinhar como as novas influenciadoras cadastradas por este funil entram no processo que você já toca hoje (onboarding, grupo, acompanhamento) — não decidi nada disso aqui, só sinalizando que está em aberto conforme o checklist da tarefa.

## CHECKLIST ANVISA
- [x] Nenhuma peça usa "cura", "trata doença", "elimina/mata os vermes/parasitas" ou "erradicação"/"mais de 100 tipos"
- [x] Nenhuma peça promete "milagre", "garantido", "resultado imediato" ou "em X dias"
- [x] Nenhuma comparação com remédio ou vermífugo de farmácia
- [x] Nenhuma promessa de emagrecimento ou estética
- [x] Nenhuma peça diagnostica quem lê
- [x] Nenhum médico ou influenciador citado como aval clínico
- [x] Nenhum depoimento inventado
- [x] Tom curto e direto nas 8 mensagens de entrega; convite de influenciadora mais longo, como pedido
- [x] N/A: mensagens de entrega são logística, não copy de venda — checklist ANVISA de claim de produto não se aplica a elas, mas nenhuma extrapola pra promessa de produto mesmo assim

## STATUS DESTA ENTREGA
- [x] Parte VermeFree completa: 8 mensagens de entrega + convite de influenciadora + copy/campos da página de cadastro
- [ ] Parte Botanika — **fora de escopo deste documento**, pedido explícito foi só VermeFree
- [ ] Alinhamento com Sarah (payload da automação) — ação humana, não copy
- [ ] Alinhamento com Ana (onboarding de influenciadoras) — ação humana, não copy
- [ ] Decisão de categoria (Marketing vs Utility) do convite de influenciadora
