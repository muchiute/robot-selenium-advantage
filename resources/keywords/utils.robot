*** Settings ***
Resource  ../main.resource

*** Keywords ***
Wait and Input Text
    [Arguments]   ${element}  ${text}
    SeleniumLibrary.Wait Until Element Is Visible    ${element}    ${WAIT_TIME_COMPONENT}
    SeleniumLibrary.Input Text    ${element}    ${text}

Wait And Click Element
    [Arguments]  ${element}
    SeleniumLibrary.Wait Until Element Is Visible    ${element}    ${WAIT_TIME_COMPONENT}
    Wait Until Keyword Succeeds    3x    2s    SeleniumLibrary.Click Element    ${element}

Wait And Select Label
    [Arguments]  ${element}    ${text}
    Wait And Click Element        ${element}
    SeleniumLibrary.Select From List By Label     ${element}    ${text} 

Wait And Select Index
    [Arguments]  ${element}    ${pos}
    Wait And Click Element        ${element}
    SeleniumLibrary.Select From List By Index     ${element}    ${pos}

Wait And Select Value
    [Arguments]  ${element}    ${pos}
    Wait And Click Element        ${element}
    SeleniumLibrary.Select From List By Value     ${element}    ${pos}
    ${WAIT_TIME_COMPONENT}

Salvar Screenshot Web
    ${nome}  Definir Nome Screenshot  
    Run Keyword And Ignore Error    SeleniumLibrary.Capture Page Screenshot    ${nome}

Definir Nome Screenshot
    ${ss_name}  Remove String Using Regexp  ${TEST NAME}   [^a-zA-Z0-9]
    ${ss_name}  Catenate  SEPARATOR=  ${ss_name}  _  ${SCREENSHOT_NUMBER}  .png
    ${number}  Evaluate  ${SCREENSHOT_NUMBER} + 1
    Set Test Variable      ${SCREENSHOT_NUMBER}   ${number}
    RETURN  ${ss_name}


Gerador de Nome Aleatorio Acima De 3 Letras
    ${tamanho}=    Evaluate    random.randint(3, 4)    modules=random
    ${nome}=    Evaluate    ''.join(random.choices(string.ascii_letters, k=${tamanho}))    modules=random,string
    RETURN    ${nome}

Gerar Numero Cartao Credito
    ${numero}=    Evaluate    ''.join([str(random.randint(0,9)) for _ in range(12)])    modules=random
    RETURN    ${numero}
