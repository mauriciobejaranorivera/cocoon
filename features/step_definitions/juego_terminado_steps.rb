Given(/^Dado el juego terminado$/) do
  visit '/juego_terminado'
end

Then(/^se debe mostrar mensaje "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Then(/^cuando presiono el boton "(.*?)"$/) do |name|
  click_button(name)
end

Then(/^mostrar el mensaje "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end
