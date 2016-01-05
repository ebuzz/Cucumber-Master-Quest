Feature: Use Basic Syntax
  Scenario: I have used this for a long time
    Given I have deposited $250 in my account

  Scenario: Use regular expressions for flights
    Given the flight EZY4567 is leaving today
    Given the flight C038 is leaving today
    Given a flight BA01618 is leaving today

  Scenario: Transfer money from one account to another account
    When I transfer $500 from my Savings Account into my Checking Account
    And I transfer $500 from my Checking Account into my Savings Account

  #Scenario: Withdraw fixed amount of $50
    # Given I have $500 in my account
    #Given I have authenticated with the correct PIN
    # When I choose to withdraw the fixed amount of $50
    # Then I should receive $50 cash
    # And the balance of my account should be $450




