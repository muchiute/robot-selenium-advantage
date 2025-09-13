*** Settings ***
resource  ../main.resource

*** Keywords ***

Efetuar login com sucesso
    que esteja na página inicial
    clicar no botão para fazer login
    preencher as informações de Login    ${GLOBAL_LOGIN_NAME}   ${GLOBAL_PASSWORD}
    clicar no botão "Entrar"
    o sistema deve carregar a tela principal

Realizar um novo cadastro na API
    que possuo os dados para registrar um novo usuário
    envio a requisição de cadastro
    o sistema deve retornar a confirmação do usuário criado
    