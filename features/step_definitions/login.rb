Dado("que esteja na página de login") do
    @new_account_page.load
  end
  
  Quando("informo {string} para criar conta") do |email|
    @login_page.new_acount_request(email)
  end
  
  Então("preencho os dados cadastrais") do 
    @new_account_page.new_acount_forms
  end
  
  Então("finalizo cadastro com sucesso") do
    expect(@login_page.breadcrumb).to have_content 'My account'
    expect(@home_page).to have_content('Sign out')
    expect(@home_page.btn_go_to_sign_in).to have_content('name')
  end

  Quando("informo email {string} e senha {string}") do |email, password|
    @login_page.fill_email_password(email, password)
  end
  
  Então("tenho acesso a área logada") do
    expect(@login_page.breadcrumb).to have_content 'My account'
    expect(@home_page).to have_content('Sign out')
  end
  
  Então("recebo alerta de falha na validação") do
    expect(@login_page.alert_message_authentication_failed).to have_content 'error'
    expect(@home_page.btn_go_to_sign_in).to have_content('Sign in')
  end