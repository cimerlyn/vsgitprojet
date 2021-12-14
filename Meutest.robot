*** Setting ***
Resource       Meuresource.robot
Test Setup     Abrir navegador
Test Teardown  Fechar Navegador

***Test Cases***
Caso de teste 01 - Pesquisar Canais

  Acessar pagina programaçao de Canais
  Clicar no botão Lista de Canais  
  Digitar no nome do produto   "BANDSPORTS" no campo de pesquisa
  Clicar no botão pesquisar 
  Exibir canal  "BANDSPORTS" pesquisado

  #Pesquisar em Lista de Canais "BANDSPORTS"
    
  
