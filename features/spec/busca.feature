# language: pt

Funcionalidade: Buscas no Fake Ecommerce
  Como um cliente do site FakeEcommerce
  Gostaria de poder buscar por produtos
  Para customizar as compras

  Contexto:
    Dado que esteja na página inicial

  @buscar_por_termo_valido
  Cenário: Buscar por termo válido
    Quando buscar pelo produto 'shirt'
    Então devem ser retornados produtos 'shirt'
    #cenário refatorado para garantir escalabilidade, podendo ser reutilizado em outros cenários

  # Completar o cenário abaixo
  @busca_sem_resultados
  Cenário: Busca sem resultados
    Quando buscar pelo produto 'inexistente'
    #Aproveitamento do passo já automatizado da busca de produtos, tornando o código mais limpo
    Então deve ser retornado mensagem informando que não há retorno para o produto 'inexistente'

  #Implementar cenário extra de adição de produto ao carrinho
  @adcionar_ao_carrinho_apos_a_busca
  Cenário: Busca com sucesso - Adicionar produto ao carrinho
    Quando buscar pelo produto 'Faded'
    E devem ser retornados produtos 'Faded'
    Então adciono produto no carrinho
    E visualizo mensagem de confirmação