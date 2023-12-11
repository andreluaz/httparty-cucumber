#language: pt

Funcionalidade: Validar uma chave do retorno do JSON e exibir um item aleatório do endpoint VRPAT
Conforme o desafio, iremos bater em um endpoint e primeiramente
verificar se há a chave typeOfEstablishment e exibir qualquer item aleatório

  Cenário: Validar o retorno do JSON e exibir um item aleatório
    Dado que é feito uma requisição para o endpoint VRPAT
    Quando verificar se há a chave "typeOfEstablishment" no retorno
    Então exibo qualquer item aleatório do retorno