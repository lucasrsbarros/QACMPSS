require_relative 'sections/product.rb'
require_relative 'sections/product_popup.rb'

module Pages
  class SearchPage < SitePrism::Page
    set_url '/index.php'

    sections :products, Sections::Product, '.product-container'
    sections :product_popup, Sections::Product_PopUp, '#layer_cart'
    element  :alert, '.alert'
    element  :product_card, '.product-container .available-now'
    element  :button_add_cart, '.product-container .button-container [title~=cart]'

    def addToCart()
      product_card.click
      wait_until_button_add_cart_visible
      button_add_cart.click
      #Utilizei essa estrutura de clique numa área não selecionável do card para simular mouse hover e exibir botão do carrinho
    end
  end
end
