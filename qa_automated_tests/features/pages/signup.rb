class Signup
  include PageObject
  page_url "http://localhost:3000/users/new"

  text_field(:email, :id => "user_email", :placeholder => "Email")
  text_field(:pwd, :id => "user_password", :placeholder => "Password")
  text_field(:confirm_pwd, :id => "user_password_confirmation", :placeholder => "Password")
  button(:signup, :class => "submit-button")

  def user_signup(email, pwd, confirm_pwd)
    self.email=email
    self.pwd=pwd
    self.confirm_pwd=confirm_pwd
  end
end