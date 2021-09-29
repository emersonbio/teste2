*** Settings ***
Library        SeleniumLibrary


*** Variables ***

${BROWSER}        chrome  
${URL}            http://automationpractice.com/index.php
    




*** Keywords ***

####setup e tearDown####

AbrirNavegador
    Open Browser        http://automationpractice.com/index.php       ${BROWSER}

FecharNavegador
    Close Browser


##### Passo a Passo ######

Acessar página home do site
    Title Should Be         My Store

Digitar o nome de produto "${produto}" no campo de pesquisa
    Input Text  id=search_query_top        ${produto}

Clicar no botão de pesquisar
    Click Element   name=submit_search    

Conferir se o produto "Blouse" foi listado no site
    wait until Element is Visible   css=#center_column > h1 
    Title Should Be                 Search - My Store
    Page Should Contain Image       xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img
    Page Should Contain Link        xpath=//*[@id="center_column"]/ul/li/div/div[2]/h5/a

Conferir mensagem de erro "${mensagem_alert}"
    Wait Until Element Is Visible   //*[@id="center_column"]/p[@class='alert alert-warning']
    Element Text Should Be         //*[@id="center_column"]/p[@class='alert alert-warning']  ${mensagem_alert}
    
    

    