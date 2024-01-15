            #Language: pt

            Funcionalidade: Tela de compra
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado ao acessar a tela de compra do portal EBAC SHOP

            Cenário: Seleção de produto válida
            Quando  eu escolher um produto selecionando sua "cor","tamanho"
            E a  "quantidade"
            Então deve permitir "inserir no carrinho"


            Cenário: Seleção de produto inválida
            Quando  eu escolher um produto e não selecionar sua "cor","tamanho"
            E a  "quantidade"
            Então deve exibir a mensagem de alerta  "selecionar  cor , tamanho e quantidade"

            Cenário: compra de produto válida
            Quando eu escolher um produto selecionando sua "quantidade"
            E  for " < ou = a 10"
            Então deve permitir o acesso a "comprar"

            Cenário: compra de produto inválida
            Quando eu escolher um produto selecionando sua "quantidade"
            E  for " > que 10"
            Então deve exibir a mensagem de alerta "quantidade de produto não permitida"

            Cenário: limpar toda seleção  do produto
            Quando eu selecionar "quantidade", "cor" e "tamanho"
            E ao clicar "limpar"
            Então deve  o " carrinho  ser zerado"


            Esquema do Cenário: seleção de cor , tamanho e quantidade
            Quando eu selecionar <cor>, <tamanho>
            E <quantidade>
            Então deve exibir a <mensagem> de comprar
            | azul    | Tamanho P |  | quantidade 1  | comprar |
            | amarelo | Tamanho G |  | quantidade 5  | comprar |
            | azul    | Tamanho M |  | quantidade 10 | comprar |