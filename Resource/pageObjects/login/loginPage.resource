*** Variables ***
&{login_page}
...    login_home=id=menuUser
...    btn_criar_conta=//a[contains(@class,'create-new-account')]
...    input_rgst_user_name=//input[@name='usernameRegisterPage']
...    input_rgst_email=//input[@name='emailRegisterPage']
...    input_rgst_password=//input[@name='passwordRegisterPage']
...    input_confirm_rgst_password=//input[@name='confirm_passwordRegisterPage']
...    input_first_name=//input[@name='first_nameRegisterPage']
...    input_last_name=//input[@name='last_nameRegisterPage']
...    input_number_phone=//input[@name='phone_numberRegisterPage']
...    select_country=//select[@name='countryListboxRegisterPage']
...    input_city=//input[@name='cityRegisterPage']
...    input_endereco=//input[@name='addressRegisterPage']
...    input_estado=//input[@name='state_/_province_/_regionRegisterPage']
...    input_codigo_postal=//input[@name='postal_codeRegisterPage']
...    btn_checkbox=//input[@name='i_agree']
...    btn_cadastrar=//button[@id='register_btn']
...    span_login=//span[contains(@class,'hi-user')]
...    input_login_username=//input[@name="username"]
...    input_login_password=//input[@name="password"]
...    btn_login_entrar=id=sign_in_btn
...    menu_user=id=menuUser
...    product_hp_chromebook=//li[@ng-click]
...    btn_add_cart=//button[normalize-space(text())='ADD TO CART']
...    btn_carrinho=id=shoppingCartLink
...    btn_checkout=id=checkOutButton
...    btn_next=id=next_btn
# ======================
# Safepay
# ======================
...    input_user_safepay=//*[@id="paymentMethod"]/div/div[2]/sec-form/sec-view[1]/div/input
...    input_pass_safepay=//*[@id="paymentMethod"]/div/div[2]/sec-form/sec-view[2]/div/input
...    btn_paynow_safepay=//*[@id="pay_now_btn_SAFEPAY"]

# ======================
# MasterCard
# ======================
...    input_numero_cartao=//*[@id="creditCard"]
...    input_cvv=//*[@id="paymentMethod"]/div/div[4]/sec-form/div[1]/sec-view[2]/div/input
...    select_mes=//*[@id="paymentMethod"]/div/div[4]/sec-form/div[2]/div/sec-view[1]/div/select
...    select_ano=//*[@id="paymentMethod"]/div/div[4]/sec-form/div[2]/div/sec-view[2]/div/select
...    input_nome_titular=//*[@id="paymentMethod"]/div/div[4]/sec-form/div[2]/sec-view/div/input
...    btn_paynow_mastercard=//*[@id="pay_now_btn_ManualPayment"]