Feature: E2e testing

  Scenario: SingUp new correct user
    Given open elephant page "http://localhost:7000/registration"
    Then Input login "kortongroove21@gmail.com"
    Then Input password "Kortongroove21!"
    Then Input conformation "Kortongroove21!"
    Then Click "Sign up" button
    Then close browser

  Scenario: Login correct user
    Given open elephant page "http://localhost:7000/login"
    Then Input login "kortongroove21@gmail.com"
    Then Input password "Kortongroove21!"
    Then Click "Sign in" button
    Then Current url changed to "http://localhost:7000/home"
    Then close browser

  Scenario: Login incorrect user
    Given open elephant page "http://localhost:7000/login"
    Then Input login "kortongroove21@gmail.com"
    Then Input password "Kortongroove21"
    Then Click "Sign in" button
    Then Show message "User or password not known"
    And Current url changed to "http://localhost:7000/login"
    Then close browser
    
  Scenario: Forgot password
    Given open elephant page "http://localhost:7000/login"
    Then Click "Forgot password?" button a
    Then Current url changed to "http://localhost:7000/login/reset-password"
    Then Input email "kortongroove21@gmail.com"
    And Click "Send link for password recovery" button
    # Then throws exception
    Then close browser

  Scenario: SingUp correct user
    Given open elephant page "http://localhost:7000/registration"
    Then Input login "kortongroove21@gmail.com"
    Then Input password "Kortongroove21!"
    Then Input conformation "Kortongroove21!"
    Then Click "Sign up" button
    Then Current url changed to "http://localhost:7000/home"
    Then close browser

  Scenario: Logout from account
    Given open elephant page "http://localhost:7000/login"
    And Input login "kortongroove21@gmail.com"
    And Input password "Kortongroove21!"
    Then Click "Sign in" button
    Then open elephant page "http://localhost:7000/profile"
    And Click "Logout" button a
    Then close browser

  Scenario: Duplicate Sign up
    Given open elephant page "http://localhost:7000/registration"
    Then Input login "kortongroove21@gmail.com"
    Then Input password "Kortongroove21!"
    Then Input conformation "Kortongroove21!"
    Then Click "Sign up" button
    Then Error is visible
    Then close browser

  Scenario: Confirm mail message avaliable
    Given open elephant page "http://localhost:7000/registration"
    Then Input login "kortongroove21@gmail.com"
    Then Input password "Kortongroove21!"
    Then Input conformation "Kortongroove21!"
    Then Click "Sign up" button
    Then Current url changed to "http://localhost:7000/home"
    Then button a "Resend mail" visible
    Then close browser

  Scenario: Create DB
    Given open elephant page "http://localhost:7000/login"
    Then Input login "kortongroove21@gmail.com"
    Then Input password "Kortongroove21!"
    Then Click "Sign in" button
    And Current url changed to "http://localhost:7000/home"
    Then Click "Create new database" button
    And Current url changed to "http://localhost:7000/database"
    Then close browser
    # Test throws exception in case that DB creation not developed

  Scenario: Re-generate API key
    Given open elephant page "http://localhost:7000/login"
    And Input login "kortongroove21@gmail.com"
    And Input password "Kortongroove21!"
    Then Click "Sign in" button
    Then open elephant page "http://localhost:7000/profile"
    And Current url changed to "http://localhost:7000/profile"
    Then Click "Re-generate" button
    And Show message "API keys was reset successful"
    Then close browser

  Scenario: Upgrade user
    Given open elephant page "http://localhost:7000/login"
    And Input login "kortongroove21@gmail.com"
    And Input password "Kortongroove21!"
    Then Click "Sign in" button
    Then open elephant page "http://localhost:7000/profile"
    And Current url changed to "http://localhost:7000/profile"
    Then Click "Upgrade" button
    Then button "It's your" visible
    Then close browser

  Scenario: Downgrade user
    Given open elephant page "http://localhost:7000/login"
    And Input login "kortongroove21@gmail.com"
    And Input password "Kortongroove21!"
    Then Click "Sign in" button
    Then open elephant page "http://localhost:7000/profile"
    And Current url changed to "http://localhost:7000/profile"
    Then Click "Upgrade" button
    Then button "It's your" visible
    Then close browser

