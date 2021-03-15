Before do
  @browser = Watir::Browser.new :chrome
  @browser.windows.last.maximize
end

After do
  @browser.close
end
