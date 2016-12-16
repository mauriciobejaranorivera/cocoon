Given(/^visito la pagina inicial$/) do
  visit '/'
end

Then(/^deberia ver el mensaje "(.*?)"$/) do |mensaje|
    last_response.body.should =~ /#{mensaje}/m
end

