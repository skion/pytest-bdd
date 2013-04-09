Scenario: Executed step by step
    Given I have a foo fixture with value "foo"
    And there is a list
    When I append 1 to the list
    And I append 2 to the list
    And I append 3 to the list
    Then foo should have value "foo"
    And the list should be [1, 2, 3]


Scenario: When step can be the first
	When I do nothing
	Then I make no mistakes


Scenario: Then step can follow Given step
	Given I have a foo fixture with value "foo"
	Then foo should have value "foo"
