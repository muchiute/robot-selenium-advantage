Language: Brazilian portuguese

*** Settings ***
Documentation   Suite de teste WEB - Criação de Usúario, Login e Compras 

resource        ../../resource/main.resource

Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Test Cases ***

Cenario: Registrar usuário com sucesso na WEB
    [Documentação]   CT001 - Registro de Usuário
    [Etiquetas]      RegistrarUsuario
    Dado que esteja na página inicial
    Quando clicar no botão para fazer login
    E clicar no botão para se cadastrar
    E preencher os dados necessários para criar um novo usuário
    E clico no botão para realizar cadastro
    Então o sistema deve carregar a tela principal

Cenario: Login com sucesso na WEB
    [Documentação]   CT002 - Login de Usuário
    [Etiquetas]      Login
    Dado que esteja na página inicial
    Quando clicar no botão para fazer login
    E preencher as informações de Login    ${GLOBAL_LOGIN_NAME}   ${GLOBAL_PASSWORD}
    Então o sistema deve carregar a tela principal

Cenario: Pesquisar produto Laptop na WEB
    [Documentação]   CT003 - Buscar Produto
    [Etiquetas]      buscarProduto
    Efetuar login com sucesso
    Dado pesquisar produto na barra de busca    ${LAPTOPS}
    Então validar resultados da pesquisa        LAPTOPS

Cenario: Comprar produto Laptop na WEB - Safepay
    [Documentação]   CT004 - Compra de Produto Usando Pagamento "Safepay"
    [Etiquetas]      comprarProduto
    Efetuar login com sucesso
    Dado clique na categoria "Laptop"
    Quando validar resultados da pesquisa     LAPTOPS
    E clicar no "HP CHROMEBOOK 14 G1 ENERGY STAR"
    E adicionar ao carrinho
    E abrir carrinho
    E clicar em "Checkout"
    E verifico a aba "SHIPPING DETAILS"
    E clicar em "Next"
    E selecionar metodo de pagamento    Safepay
    E preencher as informações de pagamento    Safepay
    Então irei clicar em "Comprar"    Safepay


Cenario: Comprar produto Laptop na WEB - MasterCard
    [Documentação]   CT005 - Compra de Produto Usando Pagamento "MasterCard"
    [Etiquetas]      comprarProduto
    Realizar um novo cadastro na API
    Efetuar login com sucesso
    Dado clique na categoria "Laptop"
    Quando validar resultados da pesquisa     LAPTOPS
    E clicar no "HP CHROMEBOOK 14 G1 ENERGY STAR"
    E adicionar ao carrinho
    E abrir carrinho
    E clicar em "Checkout"
    E verifico a aba "SHIPPING DETAILS"
    E clicar em "Next"
    E selecionar metodo de pagamento    MasterCard
    E preencher as informações de pagamento    MasterCard
    Então irei clicar em "Comprar"    MasterCard