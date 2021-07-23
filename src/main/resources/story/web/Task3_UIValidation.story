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

Scenario: Check info pop-up dismission
When I click on element located `By.xpath(//button[@data-test-id="header-info-button"])`
When the condition '#{eval("<class>"=="_3G5bqBqxC88MwF js-react-root")}' is true I do
|step																									|
|When I click on element located `By.xpath(//button[@data-test-id='popover-close'])`					|
|Then element located 'By.xpath(//section[@class='_3G5bqBqxC88MwF js-react-root'])' disappears in '5' 	|

Scenario: Check user menu
When I find >= '1' elements by By.xpath(//button[@data-test-id='header-member-menu-button']) and for each element do
|step																										|
|When I click on element located `By.xpath(//button[@data-test-id='header-member-menu-button'])`			|
|When I change context to element located `By.xpath(//section[@data-test-id='header-member-menu-popover'])`	|
|When I compare against baseline with `member_menu`			