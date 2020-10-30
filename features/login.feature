#language: pt

Funcionalidade: Login

    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com meu email e senha
    Para que eu possaa ter acesso as playlists do Parodify

    @smoke
    Cenário: Login do usuário

        Dado que acesso a página login
        Quando submeto minhas credenciais com: "brunor@gmail.com" e "bruno01"
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de login

        Dado que acesso a página login
        Quando submeto minhas credenciais com: "<email>" e "<senha>"
        Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

        Exemplos:
            | email           | senha |
            | bruno@404.com   | outra |
            |                 |       |
            | brunor@gmail.com |       |
            | bruno@404.com   |       |