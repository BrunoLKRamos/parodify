module Actions
  def goto_login
    visit "/"
    click_on "Login"
  end

  def login_with(email, password)
    sleep(1)
    find("#user_email").set email
    find("#user_password").set password
    click_on "Log in"
  end

  def login_alert
    return find(".message .message-body").text
  end
end
