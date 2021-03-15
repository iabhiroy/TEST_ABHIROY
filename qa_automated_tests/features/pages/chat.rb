Class Chat
include PageObject
page_url "http://localhost:3000/"

text_field(:chat_box, :id => "message_content", :placeholder => "Enter your message")
button(:send_btn, :class => "submit-button")

def send_message(msg)
  self.chat_box=msg
  self.send_btn
end