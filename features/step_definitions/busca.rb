Dado("que esteja na página inicial") do
  @home_page.load
end

Quando("buscar pelo produto {string}") do |query|
  @home_page.search(query)
end

Então("devem ser retornados produtos {string}") do |query|
  expect(@search_page.products.first).to have_image
  expect(@search_page.products.first).to have_name
  expect(@search_page.products.first.name.text).to have_content "#{query}"
  #step refatorado para garantir escalabilidade, podendo ser reutilizado em outros cenários de validação
end

Então("deve ser retornado mensagem informando que não há retorno para o produto {string}") do |query|
  expect(@search_page.alert).to have_content "#{query}"
end

Então("adciono produto no carrinho") do
  @search_page.addToCart()
  end

Então("visualizo mensagem de confirmação") do
  expect(@search_page.product_popup.first.name.text).to have_content 'successfully'
end