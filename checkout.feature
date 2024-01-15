            #language: pt

            Funcionalidade: Tela de checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que ao finalizar o meu cadastro no EBAC SHOP

            Cenário: Campos obrigátórios do cadastro
            Quando preencher os seguintes campos "nome", "sobrenome","país", "endereço", "cidade", "CEP","endereço de e-mail","telefone"
            E ao clicar em "finalizar compra"
            Então deve aparecer mensagem de sucesso "compra realizada"

            Cenário: ausência de preenchimento de campos obrigatórios do cadastro
            Quando não for preenchido todos os seguintes campos "nome", "sobrenome","país", "endereço", "cidade", "CEP","endereço de e-mail","telefone"
            E ao clicar em "finalizar compra"
            Então deve aparecer mensagem de alerta "campos obrigatórios não preenchidos"

            Cenário: e-mail com formato inválido
            Quando for preenchido o campo "e-mail"
            E digitar "www.joao@.com.br"
            Entao deve aparecer mensagem de erro "e-mail com formato inválido"

            Cenário: campos vazios
            Quando não for preenchido "nenhum campo do cadastro"
            E ao clicar em "finalizar compra"
            Então deve aparecer mensagem de alerta "campos vazios por gentileza preecher todos os campos "

            Esquema do Cenário:  Validar multiplos campos
            Quando digitar <nome> , <sobrenome>, <pais>,<endereco>,<cidade>,<cep>,<e-mail>,<telefone>
            E deve exibri a <mensagem> de sucesso

            Exemplos:
            | "nome"    | "sobrenome" | "país"     | "endereço"     | "cidade"        | "CEP"      | "endereço de e-mail"  | "telefone"       |
            | "joão"    | "lima"      | "Brasil"   | "Rua Paris"    | "São Paulo"     | 08113-582  | "joao@ebac123.com"    | "11-98564-96"    |
            | "tiago"   | "souza"     | "Argetina" | "Rua da Manhã" | "Buenos Aries " | 08113-850  | "tiago@ebac123.com"   | "55-11-98564-96" |
            | "gustavo" | "lenzo"     | "brasil"   | "Rua Brás"     | "São Paulo"     | 08113-5692 | "gustavo@ebac123.com" | "08-11-95564-96" |