Class Login
include PageObject

page_url "http://localhost:3000/sessions/new"
text_field(:email, :id => "user_email")
text_field(:pwd, :id => "user_password")
button(:login, :class => "submit-button")

def user_login(email, pwd)
  self.email=email
  self.pwd=pwd
  self.login
end