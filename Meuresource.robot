*** Settings ***
Library  SeleniumLibrary

*** Variable ***
${BROWSER}    Chrome
${URL}        http://www.sky.com.br/programacao


***Keywords***


##setup e tearsdown
Abrir navegador
  Open BROWSER     about:blank  ${BROWSER}  

Fechar navegador  
  Close BROWSER 

##passo a passo  
Acessar pagina programaçao de Canais
  Go to   http://www.sky.com.br/programacao
  #Title Should be   Na TV: Grade de Programação | SKY

Clicar no botão Lista de Canais
  Wait Until Element Is Visible   css:a[data-link-pid="CORLNK1583"]
  Click Element   css:a[data-link-pid="CORLNK1583"]

Digitar no nome do produto "${PRODUTO}" no campo de pesquisa
  
  Wait Until Element Is Visible   css:#searchChannel
  Input Text      css:#searchChannel        ${PRODUTO}
  Set Test Variable   ${PRODUTO}

Exibir canal pesquisado
  ${PRODUTO}
  Click Element  id="CORCOM355"