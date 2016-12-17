Given(/^estoy jugando$/) do
  visit '/'
end

When(/^click en boton "(.*?)"$/) do |name|
  click_button(name)
end

Then(/^deberia mostrar la pista "(.*?)"$/) do |pista|
  last_response.body.should =~ /#{pista}/m
end

