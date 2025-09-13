*** Settings ***
resource      ../../main.resource

*** Keywords ***

que possuo os dados para registrar um novo usuário
    ${login_name}=    Gerador de Nome Aleatorio Acima De 3 Letras
    ${login_name}=    Catenate    AUT${login_name}    # garante que comece com AUT
    ${payload}=    Create Dictionary
    ...    accountType=USER
    ...    address=123 George Street
    ...    allowOffersPromotion=${True}
    ...    aobUser=${True}
    ...    cityName=Konoha
    ...    country=AUSTRALIA_AU
    ...    email=automacao_robot@selenium.com
    ...    firstName=Itachi
    ...    lastName=Uchiha
    ...    loginName=${login_name}
    ...    password=${PASS_WORD}
    ...    phoneNumber=+61 412 345 678
    ...    stateProvince=NSW
    ...    zipcode=2000
    Set Test Variable    ${payload}
    Set Global Variable    ${GLOBAL_LOGIN_NAME}    ${login_name}    # Armazena o loginName como variável global
    ${password}=    Set Variable    ${PASS_WORD}
    Set Global Variable    ${GLOBAL_PASSWORD}    ${password}    # Define a senha e armazena como variável global

envio a requisição de cadastro
    Create Session    my_api    ${URL_API}    headers=${HEADERS}    verify=${False}
    ${response}=    POST On Session    my_api    ${REGISTER_URL}    json=${payload}
    Log To Console    Status Code: ${response.status_code}
    Log To Console    Response Text: ${response.text}
    Set Test Variable    ${response}

o sistema deve retornar a confirmação do usuário criado
    Should Be Equal As Integers    ${response.status_code}    200