***Settings***
Library  SeleniumLibrary

***Variables***
${PRODUTO}  xpath=//a[contains(text(), 'Samsung galaxy s6')]
${ADD_CARRINHO}  xpath=//a[contains(text(), 'Add to cart')]
${TEXT_CARRINHO}  id=cartur
${PRODUTO_CARRINHO}  xpath=//td[contains(text(), 'Samsung galaxy s6')]
${FAZER_PEDIDO}  xpath=//button[contains(text(), 'Place Order')]

${INPUT_NOME}  id=name  
${INPUT_PAIS}   id=country
${INPUT_CIDADE}  id=city
${INPUT_CARTAO}  id=card
${INPUT_MES}  id=month
${INPUT_ANO}  id=year

${NOME}  Fulano da Silva
${PAIS}  Brasil
${CIDADE}  Florianópolis
${CARTAO}  5171 1980 3183 4637
${MES}  02
${ANO}  2023

${REALIZAR_COMPRA}  xpath=//button[contains(text(), 'Purchase')]
${VENDA_CONFIRMADA}  xpath=//h2[contains(text(), 'Thank you for your purchase!')]
${VENDA_OK}  //*[contains(text(), 'OK')]

${DELETAR_PRODUTO}  //*[contains(text(), 'Delete')]

***Keywords***
Clicar em um produto
    Wait Until Keyword Succeeds  1s  0.5s  ${PRODUTO}
    Click Element  ${PRODUTO}

Adicionar produto ao carrinho
    Click Element  ${ADD_CARRINHO}
    Press Keys  ENTER

Clicar no carrinho
    Click Element  ${TEXT_CARRINHO}

Verificar se existem produtos no carrinho
    Should Contain  ${PRODUTO_CARRINHO}

Fazer pedido
    Click Element  ${FAZER_PEDIDO}

Preencher dados da compra
    Input Text  ${INPUT_NOME}  ${NOME}
    Input Text  ${INPUT_PAIS}  ${PAIS}
    Input Text  ${INPUT_CIDADE}  ${CIDADE}
    Input Text  ${INPUT_CARTAO}  ${CARTAO}
    Input Text  ${INPUT_MES}  ${MES}
    Input Text  ${INPUT_ANO}  ${ANO}

Realizar compra
    Click Element  ${REALIZAR_COMPRA}

Verificar se confirmação da compra foi efetuada
    Should Contain  ${VENDA_CONFIRMADA}
    Click Element  ${VENDA_OK}

Deletar o produto
    Click Element  ${DELETAR_PRODUTO}

Verificar se não existe nenhum produto no carrinho
    Should Not Contain  ${PRODUTO_CARRINHO}  FAILED  ignore_case=True