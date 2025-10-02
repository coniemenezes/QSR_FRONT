*** Settings ***
Resource    ../resources/login_amazon.resource
Resource    ../resources/google.resource
Library     SeleniumLibrary

*** Test Cases ***
Login amazon com sucesso
    Abrir o navegador e acessar o site da amazon
    Acessar a pagina de login
    Preencher login com email
    Preencher senha
    Validar login com sucesso
    Fechar o navegador
