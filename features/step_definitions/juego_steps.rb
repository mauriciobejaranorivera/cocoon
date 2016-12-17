Given(/^El usuario ingresa una letra "(.*?)"$/) do |value|
  fill_in('letra', :with => value)
end
Given(/^Ingresa a la pagina de bienvenida$/) do
   visit '/'
end

When(/^Se presiona el boton "(.*?)"$/) do |name|
  click_button(name)
end

Then(/^deberia compararse la letra con la palabra secreta "(.*?)"$/) do  |text|
  last_response.body.should =~ /#{text}/m
end



