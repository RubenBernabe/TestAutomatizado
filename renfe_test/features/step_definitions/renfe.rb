

Given(/^I am on Renfe home page$/) do
  visit 'http://www.renfe.com'
end

When(/^I search travel for "(.*?)"$/) do |search_origin|
  fill_in 'desOrigen', :with => search_origin
  sleep(1)
  find(:id,'IdOrigen').send_keys(:enter)
  sleep(1)
end

When(/^I search travel to "(.*?)"$/) do |search_dest|
  fill_in 'desDestino', :with => search_dest
  sleep(1)
  find(:id,'IdDestino').send_keys(:enter)
  sleep(1)
end

Then(/^I search travel to date "(.*?)"$/) do |search_date|
  fill_in '__fechaIdaVisual', :with => search_date
  sleep(1)
end

Then("Nav travel") do
  click_on(class: 'btn btn_home')
  sleep (3)
end

Then(/^I should see buy page$/) do 
   page.should have_content 'HORARIO DE IDA'
   sleep(1)
end

When("I translate the page to English") do
  find(:xpath, "//a[href='/EN/viajeros/index.html']", match: :first).click
  sleep (1)
end

Then(/^I should see English words$/) do 
   page.should have_content 'DEPARTURE'
end

When("I search Turism Train") do
   find(:xpath, "//a[@href='/trenesturisticos/index.html']", match: :first).click
   sleep (1)
end

Then(/^I should see turism train$/) do 
   page.should have_content 'AL ANDALUS'
   sleep(1)
end

Then(/^I consult the route$/) do
  visit 'http://www.renfe.com/trenesturisticos/alandalus-itinerarios-y-salidas.html'
  sleep (1)
end

Then(/^I should see turism route$/) do 
   page.should have_content 'ITINERARIOS Y SALIDAS'
   sleep(1)
end

When(/^I search cancel ticket page$/) do
  visit 'https://venta.renfe.com/vol/inicioAnulacion.do'
  sleep (1)
end

Then(/^I should see cancel ticket page$/) do 
   page.should have_content 'Anulaci'
   sleep(1)
end

Then(/^I search ticket with loc "(.*?)"$/) do |search_loc|
  fill_in 'criteria', :with => search_loc
  sleep(1)
end

Then(/^Check the ticket$/) do
  click_on(id: 'submitBuscar')
  sleep (1)
end

When(/^I need help$/) do
  visit 'http://www.renfe.com/asistente.html'
  sleep (1)
end

Then(/^I should see asistant$/) do 
   page.should have_content 'asistente virtual'
   sleep(1)
end
