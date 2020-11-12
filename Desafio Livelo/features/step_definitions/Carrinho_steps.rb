Dado('que esteja na home') do
    page.driver.browser.manage.window.maximize
    visit '/'
    sleep(5)
    @carrinho = CarrinhoPage.new
  end
   
  Quando('acessar a categoria Use seus pontos') do
    @carrinho.usePontos
    sleep(5)
  end

  Quando('selecionar o segundo produto') do
    @carrinho.comProdutos
    @carrinho.categoriaCasa
    sleep(5)
    @carrinho.categoriaCama  
    @carrinho.produto
    sleep(5)
  end
  
  Quando('adicionar o produto ao carrinho') do
    @carrinho.adicionarCarrinho
    sleep(5)
  end

  Então('deve ser exibida a mensagem {string}') do |mensagemPedido|
    validaçãoCarrinho = @carrinho.paginaCarrinho
    expect(validaçãoCarrinho).to have_content(mensagemPedido)
  end

  