*** Settings ***
Resource        base.robot

Test Setup      Nova Sessão
Test Teardown   Encerra Sessão 

*** Test Cases ***
Verifica o valor ao informar o número da linha
    Go To                          ${url}/tables
    Table Row Should Contain        id:actors       1       @robertdowneyjr	

Descobre a linha pelo texto chave e acessa os demais valores
    Go To           ${url}/tables
    ${target}       Get WebElement          xpath:.//tr[contains(.,'@prattprattpratt')]    
    Log             ${target.text}
    Log To Console  ${target.text}             
    Should Contain   ${target.text}          Senhor das Estrelas	              
    Should Contain   ${target.text}          Chris Pratt