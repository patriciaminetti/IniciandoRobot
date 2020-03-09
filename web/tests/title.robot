*** Settings ***
Resource        base.robot

Test Setup      Nova Sessão
Test Teardown   Encerra Sessão 

*** Test Cases ***
Shoud See Page Title
    Title Should Be  Training Wheels Protocol
    Close Browser
