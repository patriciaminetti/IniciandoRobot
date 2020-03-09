*** Settings
Library     app.py


*** Test Cases
Deve retornar mensagem de Boas Vindas
    ${result}=          Welcome         Patricia
   Should Be Equal      ${result}       Olá Patricia, Bem Vinda ao Curso Básico de Robot Framework!

