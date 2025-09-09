*** Variables ***
${LOGO_SITE}                 dvantage
${PAIS_BRAZIL}               object:191
${FIRST_NAME}                Itachi
${LAST_NAME}                 Uchiha
${EMAIL}                     automacao_robot@selenium.com
${NUMBER_PHONE}              +61 412 345 678
${CIDADE}                    Konoha
${ENDERECO}                  123 George Street
${ESTADO}                    São Paulo
${CODIGO_POSTAL}             2000
${SEARCH_RESULT_LAPTOPS}     Search result: "laptops"
${LAPTOPS}                   LAPTOPS
${CONFIRMAR_ENDERECO}        1. SHIPPING DETAILS 
&{METODOS_PAGAMENTO}    
...    MasterCard=//*[@id="paymentMethod"]/div/div[1]/div[2]
...    Safepay=//*[@id="paymentMethod"]/div/div[1]/div[1]
${CARTAO_CVV}    001
${CARTAO_MES}    string:12
${CARTAO_ANO}    string:2033