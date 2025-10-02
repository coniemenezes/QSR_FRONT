*** Settings ***
Library     SeleniumLibrary
Resource    ../config/config.resource
Resource    ../tests/login_amazon.robot

*** Variables ***
${LOGIN_AMAZON}     https://www.amazon.es/-/pt/ap/signin?openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.es%2F%3F%26tag%3Dtxacspespt-21%26ref%3Dnav_signin%26adgrpid%3D169151103526%26hvpone%3D%26hvptwo%3D%26hvadid%3D721440598279%26hvpos%3D%26hvnetw%3Dg%26hvrand%3D4457477551632790818%26hvqmt%3De%26hvdev%3Dc%26hvdvcmdl%3D%26hvlocint%3D%26hvlocphy%3D1011731%26hvtargid%3Dkwd-10573980%26hydadcr%3D16703_2247191%26mcid%3D%26language%3Dpt_PT%26gad_source%3D1&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=esflex&openid.mode=checkid_setup&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0


*** Keywords ***
Abrir o navegador e acessar o site da amazon
    Open Browser    ${URL_AMAZON}    ${BROWSER}
    Maximize Browser Window

Acessar a pagina de login
    Go To    ${LOGIN_AMAZON}

Preencher login com email
    Wait Until Element Is Visible    xpath=//*[@id="ap_email_login"]     10s
    Input Text    xpath=//*[@id="ap_email_login"]    ${EMAIL}
    Click Button    xpath=//*[@id="continue"]/span/input

Preencher senha
    Wait Until Element Is Visible    xpath=//*[@id="ap_password"]    10s
    Input Text    xpath=//*[@id="ap_password"]    ${SENHA}
    Click Button    xpath=//*[@id="signInSubmit"]
    Sleep    15s

Validar login com sucesso
    Wait Until Element Is Visible    xpath=//*[@id="nav-link-accountList-nav-line-1"]
