Given(/^YouTube home page$/) do
  visit('http://www.youtube.com')
end

When(/^search for "(.*?)"$/) do |search_term|
  fill_in 'search_query', :with => search_term
  click_on 'search-icon-legacy'
end

Then("videos of Cucumber are returned") do
  puts page.inspect
  page.should have_content 'Es el tester aquella persona'
  sleep 2
end

Given("I am on the cucumber testing search on YouTube") do
  visit('https://www.youtube.com/results?search_query=testing+calidad')
end

When("I click on the first video") do
  find("a[href='/watch?v=jk4wKUHUZAU']", match: :first).click
  sleep 1
end

Then("video of Introduction to Cucumber is returned") do
  puts page.inspect
  page.should have_content '¿Cómo se prueba aquello que no tiene una interfaz gráfica?'
  sleep 2
end

Given("I am on the first cucumber testing YouTube") do
  visit('https://www.youtube.com/watch?v=jk4wKUHUZAU')
end

When("I click on show more") do
  find('#more').click
end

Then("larger description is returned") do
  puts page.inspect
  page.should have_content 'Mostrar menos'
  sleep 4
end

When("I click on mute video button") do
  click_on(class: 'ytp-mute-button ytp-button')
  sleep 1
end

Then("video is muted") do
  puts page.inspect
  page.should have_content 'Activar sonido (m)'
  sleep 2
end

When("I click on share video button") do
  find("yt-formatted-string", :text => "Compartir").click
end

Then("share options are open") do
  puts page.inspect
  page.should have_content 'Empezar en'
  sleep 5
end

