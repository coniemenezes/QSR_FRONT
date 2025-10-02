*** Settings ***
Resource    ../resources/google.resource


*** Test Cases ***
Abrir o site do Google e validar o titulo
    Abrir o navegador e acessar o site do google
    Aceitar o termos de uso
    Validar o titulo da pagina
    Fechar o navegador
