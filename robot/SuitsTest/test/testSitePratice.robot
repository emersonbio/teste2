*** Settings ***
Resource            ../resource/Resource.robot
Test Setup          AbrirNavegador  
Test Teardown       FecharNavegador

*** Variables ***


*** Test Cases ***
 
Caso de teste 01: Pesquisar produto existente
        
        Acessar página home do site
        Digitar o nome de produto "Blouse" no campo de pesquisa
        Clicar no botão de pesquisar
        Conferir se o produto "Blouse" foi listado no site
 

     


Caso de teste 02: Pesquisar produto não existente

     Acessar página home do site
     Digitar o nome de produto "produtoNãoExistente" no campo de pesquisa
     Clicar no botão de pesquisar
     Conferir mensagem de erro "No results were found for your search "produtoNãoExistente""

    