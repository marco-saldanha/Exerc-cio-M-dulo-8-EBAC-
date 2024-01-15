            #Language: pt

            Funcionalidade: Tela de login

            Contexto:
            Dado que eu acesse  a página do portal EBAC

            Cenário: Autenticação válida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "senha@123"
            Então deve ser direcionado para "tela de checkout"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "senha@1wde23"
            Então deve exibir uam mensagem de alerta "usuário ou senha inválidos"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "joaossdsa@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uam mensagem de alerta "usuário inexistente"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso
            Exemplos:
            | usuario               | senha       | mensagem      |
            | "joao@ebac.com.br"    | "teste@123" | "Olá João"    |
            | "maria@ebac.com.br"   | "teste@123" | "Olá Maria"   |
            | "luciana@ebac.com.br" | "teste@123" | "Olá luciana" |