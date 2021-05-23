module Pages
  class New_Account < SitePrism::Page
    set_url '/index.php?controller=authentication&back=my-account'
    
    element  :breadcrumb, '.breadcrumb'
    element  :title, '#uniform-id_gender1'
    element  :first_name, '#customer_firstname'
    element  :last_name, '#customer_lastname'
    element  :password, '#passwd'
    element  :days, '#uniform-days'
    element  :months, '#uniform-months'
    element  :years, '#uniform-years'
    element  :firstname, '#firstname'
    element  :lastname, '#lastname'
    element  :address1, '#address1'
    element  :city, '#city'
    element  :state, '#uniform-id_state'
    element  :postcode, '#postcode'
    element  :phone_mobile, '#phone_mobile'
    element  :submitAccount, '#submitAccount'

    def new_acount_forms()
      wait_until_first_name_visible
      title.click
      first_name.set("first name")
      last_name.set("last name")
      password.set("password")
      days.set("1")
      months.set("2")
      years.set("1990")
      firstname.set("Nome Primeiro")
      lastname.set("Sobrenome Depois")
      address1.set("city")
      city.set("Axis")
      state.select("Alabama")
      postcode.set("36116")
      phone_mobile.set("99999999")
      submitAccount.click
      wait_until_submitAccount_invisible
    end
  end
end