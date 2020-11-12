class CarrinhoPage < SitePrism::Page

    element :span_usePontos, '#span-first-level-menu-1'
    element :span_comProdutos, '#span-second-level-menu-1-1'
    element :span_categoriaCasa, '#span-third-level-menu-1-1-1'
    element :div_categoriaCama, '#div-segmentsItem-wi7800020 > div.owl-stage-outer > div > div:nth-child(4) > a > div > img'
    element :list_clicoProduto, '#CC-product-list-name-LVL9140652-01'
    element :button_adicionarCarrinho, '#CC-prodDetails-addToCart > .button'
    element :h2_paginaCarrinho, '#custom-cart-summary_v1-wi2000039 h2'

    def usePontos
        span_usePontos.hover
    end
    
    def comProdutos
        span_comProdutos.hover
    end

    def categoriaCasa
        span_categoriaCasa.click
    end

    def categoriaCama
        div_categoriaCama.click
    end

    def produto
        list_clicoProduto.click
    end

    def adicionarCarrinho
        button_adicionarCarrinho.click 
    end 

    def paginaCarrinho
        h2_paginaCarrinho.text
    end
end