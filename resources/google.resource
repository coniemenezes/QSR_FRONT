*** Settings ***
Library     SeleniumLibrary
Resource    ../config/config.resource

*** Keywords ***
Abrir o navegador e acessar o site do google
    Open Browser    ${URL_GOOGLE}    ${BROWSER}
    Maximize Browser Window

Aceitar o termos de uso
    Wait Until Element Is Visible    xpath=//*[@id="L2AGLb"] 
    Click Button    xpath=//*[@id="L2AGLb"]    

Validar o titulo da pagina
    Title Should Be    Google
    Capture Page Screenshot

Fechar o navegador
    Close Browser
