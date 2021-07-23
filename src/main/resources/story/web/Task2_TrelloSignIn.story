Scenario: Login As exisiting user
Given I am on the main application page
When I click on element located `By.xpath(//a[@href='/login'])`
When I enter `<email>` in field located `By.xpath(//*[@id='user'])`
When I click on element located `By.xpath(//input[@id='login'])`
Then the page with the URL containing 'https://id.atlassian.com/login?application=trello&continue=' is loaded
When I enter `<password>` in field located `By.xpath(//*[@id='password'])`
When I click on element located `By.xpath(//*[@id="login-submit"])`
When I wait until the page title contains the text 'Boards'
Then the page with the URL 'https://trello.com/nata978/boards' is loaded
Examples:
|email               |password |
|natavivitest@gmail.com|ViViTest@123|

Scenario: Visual checks
When I reset context
When I click on element located `By.xpath(//button[@data-test-id='header-member-menu-button'])`
When I ESTABLISH baseline with `base_1`
When I COMPARE_AGAINST baseline with `base_1`

When I click on element located `By.xpath(((//nav[@class='home-left-sidebar-container']//ul)[1]/*)[2])`
When I wait `PT30S` with `PT10S` polling until element located `By.xpath(//*[@class='home-sticky-container'])` becomes VISIBLE
When I ESTABLISH baseline with `base_2` ignoring:
|ELEMENT                                   |
|By.xpath(//div[@data-desktop-id="header"])|

When I COMPARE_AGAINST baseline with `base_2` ignoring:
|ELEMENT                                   |
|By.xpath(//div[@data-desktop-id="header"])|

When I click on element located `By.xpath(((//nav[@class='home-left-sidebar-container']//ul)[1]/*)[3])`
When I ESTABLISH baseline with `base_3`
When I COMPARE_AGAINST baseline with `base_3`

When I click on element located `By.xpath((//a[@data-test-id='home-team-members-tab']/ancestor::li)[2])`
When I ESTABLISH baseline with `base_4`
When I COMPARE_AGAINST baseline with `base_4`

When I click on element located `By.xpath((//a[@href='/'])[1])`
When I click on element located `By.xpath(((//nav[@class='home-left-sidebar-container']//ul)[1]/*)[1])`
When I click on element located `By.xpath(//div[@class='board-tile mod-add'])`
When I ESTABLISH baseline with `base_5`
When I COMPARE_AGAINST baseline with `base_5`