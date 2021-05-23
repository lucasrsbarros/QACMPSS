module Pages
  class LoginPage < SitePrism::Page
    set_url '/index.php?controller=authentication&back=my-account'

    element  :breadcrumb, '.breadcrumb'
    element  :input_create_account_email, '#email_create'
    element  :btn_create_an_account, '#SubmitCreate'
    element  :input_login_email, '#email'
    element  :input_login_password, '#passwd'
    element  :link_forgot_password, '#login_form > div > p.lost_password.form-group > a'
    element  :btn_sign_in, '#SubmitLogin'
    element  :alert_message_authentication_failed, '.alert'

    def new_acount_request(email)
      wait_until_input_create_account_email_visible
      input_create_account_email.set(email)
      btn_create_an_account.click
      wait_until_input_create_account_email_invisible
    end

    def fill_email_password(email, password)
      wait_until_input_login_email_visible
      input_login_email.set(email)
      input_login_password.set(password)
      btn_sign_in.click
    end

  end
end
