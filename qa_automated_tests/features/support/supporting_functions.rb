def click_button(btn_attribute)
  @browser.button(:id => btn_attribute).click
end