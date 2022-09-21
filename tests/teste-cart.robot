***Settings***
Resource  ../resource/login-logout.robot
Resource  ../resource/compras.robot

Suite Setup  Abrir o navegador no e-commerce
Test Setup  Realizar o login
Test Teardown  Realizar o logout
Suite Teardown  Fechar o navegador

***Test Cases***
Testar a compra de um produto através do carrinho
    Clicar em um produto
    Adicionar produto ao carrinho
    Clicar no carrinho
    Verificar se existem produtos no carrinho
    Fazer pedido
    Preencher dados da compra
    Realizar compra
    Verificar se confirmação da compra foi efetuada

Excluir um produto do carrinho
    Clicar em um produto
    Adicionar produto ao carrinho
    Clicar no carrinho
    Verificar se existem produtos no carrinho
    Deletar o produto
    Verificar se não existe nenhum produto no carrinho