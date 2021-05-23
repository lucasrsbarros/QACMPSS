# language: pt

Funcionalidade: Login no Ecommerce Fake
  Como um cliente cadastrado do site FakeEcommerce
  Gostaria de poder logar na plataforma
  Para ter uma experiência customizada

Contexto:
    Dado que esteja na página de login

  #Cenário extra de cadastro
  @cadastrar_usuario_com_sucesso
  Cenario: Cadastro com sucesso
    Quando informo "novoemail.123@proved0r.com" para criar conta
    Então preencho os dados cadastrais
    E finalizo cadastro com sucesso
  
  # Completar o cenário abaixo
  @login_com_sucesso
    Cenário: Realizar login
  Quando informo email "novoemail.123@proved0r.com" e senha "password"
  Então tenho acesso a área logada

  # Completar o cenário abaixo
  @login_com_erro
  Cenário: Login com falha
  Quando informo email "email@email.com" e senha "password"
  Então recebo alerta de falha na validação