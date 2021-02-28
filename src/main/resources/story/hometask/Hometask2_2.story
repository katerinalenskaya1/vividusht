Description: HomeTask2. Task 2

Scenario: Sign in 
Given I am on the main application page
When I click on element located `By.xpath(//a[starts-with(@href, '/login')])`
When I wait until element located `By.xpath(//*[@id="user"])` appears
When I enter `testviv@yopmail.com` in field located `By.xpath(//*[@id="user"])`
When I wait until element located `By.xpath(//*[@id="login"])` appears
When I click on element located `By.xpath(//*[@id="login"])`
When I wait until element located `By.xpath(//*[@id="password"])` appears
When I enter `OP4ng23Rf` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//button [@id = 'login-submit'])`
When I wait until element located `By.xpath(//*[@class = '_1kVIqSPIEnaXjs'])` appears
Then the page with the URL containing 'garry645' is loaded

Scenario: Navigation (Boards)
When I click on element located `By.xpath(//*[@id="content"]//div[2]/a[1])`
When I wait until element located `By.xpath(//*[@class = "tabbed-pane-header"])` appears
When I compare_against baseline with `Boards_Baseline`

Scenario: Navigation (Members)
When I click on element located `By.xpath(//*[@data-tab= "members"])`
When I wait until element located `By.xpath(//*[@id="content"]//input)` appears
When I enter `#{generate(Internet.emailAddress)}` in field located `By.xpath(//*[@id="content"]//input)`
When I compare_against baseline with `Members_Baseline` ignoring:
|ELEMENT                                            |
|By.xpath(//*[@class="_3RR1FYJnGwUrS_"])                |


Scenario: Navigation (Settings)
When I click on element located `By.xpath(//*[@data-tab= "settings"])`
When I wait until element located `By.xpath(//*[@class = "tabbed-pane-header"])` appears
When I compare_against baseline with `Settings_Baseline`

Scenario: Navigation (Notifictions)
When I click on element located `By.xpath(//*[@data-test-id="header-notifications-button"])`
When I wait until element located `By.xpath(//*[@class="_2Un9i9htRmbUrY"])` appears
When I compare_against baseline with `Notifications_baseline`

Scenario:Navigation (Homapage)
When I click on element located `By.xpath(//*[@data-test-id="header-home-button"])`
When I wait until element located `By.xpath(//*[@class = '_1kVIqSPIEnaXjs'])` appears
When I compare_against baseline with `Homepage_Baseline`















