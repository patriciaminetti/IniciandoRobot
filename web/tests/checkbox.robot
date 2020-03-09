*** Settings ***
Resource        base.robot

Test Setup      Nova Sessão
Test Teardown   Encerra Sessão 



*** Variables ***
${check_thor}           id:thor
${check_iron}           css:input[value='iron-man']
${check_panther}        xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Marcando Opção com ID
    Go To                            ${url}/checkboxes
    Select Checkbox                  ${check_thor} 
    Check Box Should Be Selected     ${check_thor}   
    
Marcando Opção com CSS Selector
    Go To                            ${url}/checkboxes
    Select Checkbox                  ${check_iron}
    Check Box Should Be Selected     ${check_iron}
    
Marcando Opção com Xpath 
    Go To                            ${url}/checkboxes
    Select Checkbox                  ${check_panther}
    Check Box Should Be Selected     ${check_panther}
