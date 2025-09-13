*** Settings ***
resource  ../main.resource

*** Keywords ***
Configurar chrome driver
    [Arguments]    ${options}
    ${prefs}=    Create Dictionary
    ...    download.prompt_for_download=False
    Call Method    ${options}    add_experimental_option    prefs    ${prefs}
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-extensions
    Call Method    ${options}    add_argument    --disable-popup-blocking
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --disable-gpu
    
    RETURN    ${options}

Abrir navegador
    IF  "${DEFAULT_BROWSER}"=="chrome"
        ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
        ${options}=    Configurar chrome driver    ${options}
        Open Browser    ${URL}    ${DEFAULT_BROWSER}    options=${options}
    ELSE
        Open Browser    ${URL}    ${DEFAULT_BROWSER}
    END
    Set Window Size    2560    1440
    #Maximize Browser Window
    Set Test Variable  ${SCREENSHOT_NUMBER}  0

Fechar navegador
    Salvar Screenshot Web
    Close All Browsers