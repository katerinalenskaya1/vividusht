Description: HomeTask 2.Task 1

Scenario: Sign up scenario
Given I am on the main application page
When I click on element located `By.xpath(/html/body/header/nav/div/a[2])`
Then the page with the URL 'https://trello.com/signup' is loaded

Scenario: Enter email
When I enter `<email>` in field located `By.xpath(//*[@id="email"])`
When I click on element located `By.xpath(//*[@id="signup-submit"])`
Then the page load time should be less than '25000' milliseconds
Examples: 
|email                             |
|#{generate(Internet.emailAddress)}|

Scenario: Enter name and password
When I wait until element located `By.xpath(//*[@id="displayName"])` appears
When I enter `<firstName>` in field located `By.xpath(//*[@id="displayName"])`
When I enter `<password>` in field located `By.xpath(//*[@id="password"])`
When I click on all elements located `By.xpath(//*[@id="signup-submit"])`
Examples:
|firstName                  |password                                |
|#{generate(Name.firstName)}|#{generate(regexify '[a-z]{5}[A-Z]{2}')}|
