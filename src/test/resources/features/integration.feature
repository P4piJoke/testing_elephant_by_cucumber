Feature: Integration testing
  # Реєстрація з коректними даними ТС1.1
  Scenario: SingUp new correct user

    Given open elephant page "http://localhost:7000/registration"
    Then Input login "danil.papizhuk02@gmail.com"
    Then Input password "Testtest1?"
    Then Input conformation "Testtest1?"
    Then Click "Sign up" button
    # After @Then Current url changed to "http://localhost:7000/home"@
    # throws java.io.IOException: Cannot create directory 'C: mptgwcxipd\tablespace'.

  # Реєстраці з некоректини даними ТС1.2
  Scenario: SingUp new incorrect user
    Given open elephant page "http://localhost:7000/registration"
    Then Input login "danil.papizhuk023gmail.com"
    Then Input password "Testtest1"
    Then Input conformation "Testtest1?"
    Then Click "Sign up" button
    Then Current url changed to "http://localhost:7000/registration"

  # Авторизація з коректиними даними ТС2.1
  Scenario: Login correct user
    Given open elephant page "http://localhost:7000/login"
    Then Input login "danil.papizhuk02@gmail.com"
    Then Input password "Testtest1?"
    Then Click "Sign in" button
    Then Current url changed to "http://localhost:7000/home"

  # Авторизація з некоректиними даними ТС2.2
  Scenario: Login incorrect user
    Given open elephant page "http://localhost:7000/login"
    Then Input login "danil.papizhuk0@gmail.com"
    Then Input password "Testtest1"
    Then Click "Sign in" button
    Then Show message "User or password not known"
    And Current url changed to "http://localhost:7000/login"

  # Вихід із системи ТС4.1
  Scenario: Logout from account
    Given open elephant page "http://localhost:7000/login"
    And Input login "danil.papizhuk02@gmail.com"
    And Input password "Testtest1?"
    Then Click "Sign in" button
    Then open elephant page "http://localhost:7000/profile"
    And Click "Logout" button a

  # Генерування нового АПІ ключа ТС 5.1
  Scenario: Generate new API key
    Given open elephant page "http://localhost:7000/login"
    And Input login "danil.papizhuk02@gmail.com"
    And Input password "Testtest1?"
    Then Click "Sign in" button
    Then open elephant page "http://localhost:7000/profile"
    Then Click "Re-generate" button
    Then Show message "API keys was reset successful"

  # Не можемо протестувати все що пов'язане з БД бо БД не створюється

  # Обрання іншої мови інтерфейсу ТС14.1
  Scenario: Change locale to another
    Given open elephant page "http://localhost:7000/login"
    And Input login "danil.papizhuk02@gmail.com"
    And Input password "Testtest1?"
    Then Click "Sign in" button
    Then open elephant page "http://localhost:7000/profile"
    And choose locale "Ukraine"
    Then button a "Вийти" visible

  # Обрання тієї ж мови інтерфейсу ТС14.2
  Scenario: Change locale to the same
    Given open elephant page "http://localhost:7000/login"
    And Input login "danil.papizhuk02@gmail.com"
    And Input password "Testtest1?"
    Then Click "Sign in" button
    Then open elephant page "http://localhost:7000/profile"
    And choose locale "English"
    Then button a "Logout" visible

  # Апгрейд ролі користувача ТС16.1
  Scenario: Upgrade basic user to pro user
    Given open elephant page "http://localhost:7000/login"
    And Input login "danil.papizhuk02@gmail.com"
    And Input password "Testtest1?"
    Then Click "Sign in" button
    Then open elephant page "http://localhost:7000/profile"
    Then Click "Upgrade" button
    Then button "It's your" visible

  # Даунгрейд ролі користувача ТС16.2
  Scenario: Downgrade to basic user
    Given open elephant page "http://localhost:7000/login"
    And Input login "danil.papizhuk02@gmail.com"
    And Input password "Testtest1?"
    Then Click "Sign in" button
    Then open elephant page "http://localhost:7000/profile"
    Then Click "Upgrade" button
    Then button "It's your" visible


