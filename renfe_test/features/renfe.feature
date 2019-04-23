Feature: Inspect Renfe Web

Background:
	Given I am on Renfe home page

Scenario: Search travel Madrid-Barcelona
    	When I search travel for "MADRID (TODAS)" 
    	And I search travel to "BARCELONA (TODAS)"
	Then I search travel to date "30/04/2019"
	Then Nav travel
	And I should see buy page

Scenario: Translate
    	When I translate the page to English
	Then I should see English words

Scenario: Search some help
	When I need help
	Then I should see asistant

Scenario: Know Train Route
	When I search Turism Train
	Then I should see turism train
	And I consult the route
	And I should see turism route
Scenario: Cancel an invalid Ticket
	When I search cancel ticket page
	Then I should see cancel ticket page
	And I search ticket with loc "5STK9T"
