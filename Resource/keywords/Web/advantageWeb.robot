*** Settings ***
resource      ../../main.resource

*** Keywords ***

que esteja na página inicial
    Wait Until Page Contains    ${LOGO_SITE}

clicar no botão para se cadastrar
    Wait Until Element Is Visible    ${login_page.btn_criar_conta}
    Wait And Click Element    ${login_page.btn_criar_conta}

preencher os dados necessários para criar um novo usuário
    ${login_name}=    Gerador de Nome Aleatorio Acima De 3 Letras
    ${login_name}=    Catenate    AUT${login_name}
    Wait and Input Text    ${login_page.input_rgst_user_name}    ${login_name}
    Wait and Input Text    ${login_page.input_rgst_password}    ${PASS_WORD}
    Wait and Input Text    ${login_page.input_confirm_rgst_password}    ${PASS_WORD}
    Wait and Input Text    ${login_page.input_first_name}    ${FIRST_NAME}
    Wait and Input Text    ${login_page.input_last_name}    ${LAST_NAME}
    Wait and Input Text    ${login_page.input_rgst_email}    ${EMAIL}
    Wait and Input Text    ${login_page.input_number_phone}    ${NUMBER_PHONE}
    Select From List By Value    ${login_page.select_country}    ${PAIS_BRAZIL}
    Wait and Input Text    ${login_page.input_city}    ${CIDADE}
    Wait and Input Text    ${login_page.input_endereco}    ${ENDERECO}
    Wait and Input Text    ${login_page.input_estado}    ${ESTADO}
    Wait and Input Text    ${login_page.input_codigo_postal}    ${CODIGO_POSTAL}
    Wait And Click Element    ${login_page.btn_checkbox}

clico no botão para realizar cadastro
    Wait And Click Element    ${login_page.btn_cadastrar}

o sistema deve carregar a tela principal
    Wait Until Page Contains Element    ${login_page.span_login}

que o usuário esteja na tela de Login
    Wait Until Page Contains Element    ${login_page.menu_user}

preencher as informações de Login
    [Arguments]    ${login}    ${senha}
    Wait Until Element Is Visible    ${login_page.input_login_username}
    Input Text    ${login_page.input_login_username}    ${login}
    Wait Until Element Is Visible    ${login_page.input_login_password}
    Input Text    ${login_page.input_login_password}    ${senha}

clicar no botão para fazer login
    Wait Until Element Is Visible    ${login_page.login_home}    ${WAIT_TIME_PAGE}
    Wait And Click Element    ${login_page.login_home}

clicar no botão "Entrar"
    Wait Until Element Is Visible    ${login_page.btn_login_entrar}    ${WAIT_TIME_PAGE}
    Wait And Click Element    ${login_page.btn_login_entrar}

pesquisar produto na barra de busca
    [Arguments]    ${produto}
    Wait Until Element Is Visible    ${home_page.btn_menu_buscar}    ${WAIT_TIME_PAGE}
    Wait And Click Element           ${home_page.btn_menu_buscar}
    Wait Until Element Is Visible    ${home_page.input_pesquisar}    ${WAIT_TIME_PAGE}
    Wait And Input Text              ${home_page.input_pesquisar}    ${produto}
    Sleep    2s
    Wait And Click Element           ${home_page.btn_menu_buscar}
    Sleep    2s
    Wait And Click Element           ${home_page.div_fechar_pesquisa}

validar resultados da pesquisa
    [Arguments]    ${texto}
    Page Should Contain    ${texto}

clique na categoria "Laptop"
    Wait Until Element Is Visible    ${home_page.span_laptop}    ${WAIT_TIME_PAGE}
    Wait And Click Element    ${home_page.span_laptop}

clicar no "HP CHROMEBOOK 14 G1 ENERGY STAR"
    Wait Until Element Is Visible    ${login_page.product_hp_chromebook}
    Wait And Click Element    ${login_page.product_hp_chromebook}

adicionar ao carrinho
    Wait And Click Element    ${login_page.btn_add_cart}

abrir carrinho
    Wait And Click Element    ${login_page.btn_carrinho}

clicar em "Checkout"
    Wait And Click Element    ${login_page.btn_checkout}
    Sleep    2s

verifico a aba "SHIPPING DETAILS"
    Page Should Contain    ${CONFIRMAR_ENDERECO}

clicar em "Next"
    Wait And Click Element    ${login_page.btn_next}

selecionar metodo de pagamento
    [Arguments]    ${metodo}
    ${xpath}=    Get From Dictionary    ${METODOS_PAGAMENTO}    ${metodo}
    Wait Until Element Is Visible    ${xpath}    ${WAIT_TIME_PAGE}
    Wait And Click Element    ${xpath}

preencher as informações de pagamento
    [Arguments]    ${metodo}
    IF    '${metodo}' == 'Safepay'
    Wait Until Element Is Visible    ${login_page.input_user_safepay}    ${WAIT_TIME_PAGE}
    Wait and Input Text    ${login_page.input_user_safepay}    AUTjcGy    
    Wait and Input Text    ${login_page.input_pass_safepay}    ${PASS_WORD}    
    ELSE IF    '${metodo}' == 'MasterCard'
    # Gerador de número e nome do cartão aleatorio
    ${cartao}=    Gerar Numero Cartao Credito
    ${nome_cartao}=    Gerador de Nome Aleatorio Acima De 3 Letras
    # Preenche os dados do cartão
    Wait and Input Text    ${login_page.input_cvv}    ${CARTAO_CVV}
    Wait and Input Text    ${login_page.input_nome_titular}    Teste${nome_cartao}
    Wait and Input Text    ${login_page.input_numero_cartao}    ${cartao}
    Wait and Input Text    ${login_page.input_cvv}    ${CARTAO_CVV}
    Select From List By Value    ${login_page.select_mes}    ${CARTAO_MES}
    Select From List By Value    ${login_page.select_ano}    ${CARTAO_ANO}
    END

irei clicar em "Comprar"
    [Arguments]    ${metodo_pagamento}
    IF    '${metodo_pagamento}' == 'Safepay'
    Wait Until Element Is Visible    ${login_page.btn_paynow_safepay}    ${WAIT_TIME_PAGE}
    Wait And Click Element    ${login_page.btn_paynow_safepay}
    ELSE IF    '${metodo_pagamento}' == 'Mastercard'
    Wait Until Element Is Visible    ${login_page.btn_paynow_mastercard}    ${WAIT_TIME_PAGE}
    Wait And Click Element    ${login_page.btn_paynow_mastercard}
    END