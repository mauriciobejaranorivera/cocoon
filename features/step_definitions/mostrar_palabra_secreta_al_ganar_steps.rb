Given(/^el juego ganado$/) do
  visit '/juego_ganado'
end

Then(/^deberia mostrar la palabra secreta "(.*?)"$/) do |text|
 last_response.body.should =~ /#{text}/m
end
