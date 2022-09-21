***Settings***
Library  SeleniumLibrary

***Variables***
${URL_ECOMMERCE}  https://www.demoblaze.com/
${NAVEGADOR_DO_TESTE}  chrome

${TEXT_LOGIN}  id=login2
${INPUT_USUARIO}  id=loginusername
${INPUT_SENHA}  id=loginpassword
${BUTTON_LOGIN}  xpath=//button[contains(text(), 'Log in')]
${TEXT_LOGOUT}  id=logout2

${USUARIO}  admin
${SENHA}  admin

***Keywords***
Abrir o navegador no e-commerce
    Open Browser  ${URL_ECOMMERCE}  ${NAVEGADOR_DO_TESTE}
    Maximize Browser Window
    Set Selenium Speed  0.5

Realizar o login
    Informar usuário e senha 

Informar usuário e senha
    Click Element  ${TEXT_LOGIN}
    Input Text  ${INPUT_USUARIO}  ${USUARIO}
    Input Text  ${INPUT_SENHA}  ${SENHA}
    Click Element  ${BUTTON_LOGIN}

Realizar o logout
    Click Element  ${TEXT_LOGOUT}

Fechar o navegador
    Close Browser