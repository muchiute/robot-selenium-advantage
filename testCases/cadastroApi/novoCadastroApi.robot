Language: Brazilian portuguese

*** Settings ***
Documentation   Suite de teste de Registro de Usuário

resource        ../../resource/main.resource

*** Test Cases ***

Cenario: Registrar usuario com sucesso na API
    [Documentação]   CT001 Registro de Usuário
    [Etiquetas]      RegistrarUsuario    API
    Dado que possuo os dados para registrar um novo usuário
    Quando envio a requisição de cadastro
    Então o sistema deve retornar a confirmação do usuário criado
