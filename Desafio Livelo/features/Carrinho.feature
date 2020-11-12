#language: pt

Funcionalidade: Adicionar produto ao carrinho

    Como um Cliente da Livelo 
    Eu quero acessar a página home 
    A fim de adicionar um produto ao carrinho 

    @Carrinho_happy
        Cenário: Adicionar produto ao carrinho com sucesso
        Dado que esteja na home
        Quando acessar a categoria Use seus pontos
        E selecionar o segundo produto
        E adicionar o produto ao carrinho
        Então deve ser exibida a mensagem "Resumo do pedido"
    



