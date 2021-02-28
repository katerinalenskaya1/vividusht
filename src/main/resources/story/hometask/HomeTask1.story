Description: Hometask 1. (C) (Two first scenarios for registration flow till capcha; next scenarios for sign in user)


Scenario: Sing up -- Registration 
Given I am on a page with the URL 'https://www.imdb.com/'
When I click on all elements located `By.xpath(//*[contains(text(),'Sign In')])`
When I wait until element located `By.xpath(//*[contains(text(),'Create a New Account')])` appears
When I click on all elements located `By.xpath(//*[contains(text(),'Create a New Account')])`
When I wait until element located `By.xpath(//*[@id="ap_customer_name"])` appears


Scenario: Registration flow
When I enter `<Username>` in field located `By.xpath(//*[@id="ap_customer_name"])`
When I enter `<email>` in field located `By.xpath(//*[@id="ap_email"])`
When I enter `OP4ng23Rf` in field located `By.xpath(//*[@id="ap_password"])`
When I enter `OP4ng23Rf` in field located `By.xpath(//*[@id="ap_password_check"])`
When I click on element located `By.xpath(//*[@id="continue"])`
Examples: 
|Username                   |email                             |
|#{generate(Name.firstName)}|#{generate(Internet.emailAddress)}|


Scenario: Sign in as existing user (also blocked by captha :c )
Given I am on a page with the URL 'https://www.imdb.com/'
When I click on all elements located `By.xpath(//*[contains(text(),'Sign In')])`
When I click on element located `By.xpath(//span[contains(text(),'Sign in with IMDb')])`
When I wait until element located `By.xpath(//*[@id="ap_email"])` appears
When I enter `katerina.melloy@gmail.com` in field located `By.xpath(//*[@id="ap_email"])`
When I enter `OP4ng23Rf` in field located `By.xpath(//*[@id="ap_password"])`
When I click on all elements located `By.xpath(//*[@id="signInSubmit"])`
When I wait until element located `//*[@id="home_img_holder"]` appears
Then the page with the URL containing 'https://www.imdb.com/' is loaded


Scenario: Search 
When I enter `Moana` in field located `By.xpath(//*[@id="suggestion-search"])`
When I click on element located `By.xpath(//*[@id="suggestion-search-button"])`
When I wait until element located `//*[@id="main"]/div/h1` appears
When I click on element located `By.xpath(//*[@id="main"]//td[2]/a)`
When I wait until element located `By.xpath(//*[@id="title-overview-widget"]//button[2])` appears
When I click on element located `By.xpath(//*[@id="title-overview-widget"]//button[2])`

Scenario: Navigate to watchlist
When I click on element located `By.xpath(//*[@id="imdbHeader"]//label[2]//span)`
When I wait until element located `By.xpath(//*[@id="navUserMenu-contents"]/ul/a[3])` appears
When I click on element located `By.xpath(//*[@id="navUserMenu-contents"]/ul/a[3])`

Scenario: Watchlist sorting&export
When I wait until element located `By.xpath(//*[@id="lister-sort-by-options"])` appears
When I click on element located `By.xpath(//*[@id="lister-sort-by-options"])`
When I select `$Popularity` in dropdown located `By.xpath(//*[@id="lister-sort-by-options"])`
When I click on element located `By.xpath(//*[contains(text(),'Export')])`
















