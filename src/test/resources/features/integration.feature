Feature: Login User
  Should redirect to User cabinet

#  Given - open page
#  Given open elephant login page "http://localhost:7000/"
#  And type into password "N.rwKjF82.tmQ7e"
#  When press button with eye symbol on login page
#  Then password changed to readable text

  Scenario: Login user
    Then Input login
    Then Input password
    Then Click "Sign in" button
    Then Current url changed to "http://localhost:7000/home"

#  Scenario: Fail restore db
#    Given open elephant page "http://localhost:7000/"

