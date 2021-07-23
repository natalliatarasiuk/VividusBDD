Scenario: sign up
Given I am on the main application page
When I click on element located `By.xpath(//a[text()='Sign up'])`
When I enter `<email>` in field located `By.xpath(//*[@id='email'])`
When I click on element located `By.xpath(//input[@id='signup-submit'])`
When I wait until the page title contains the text 'Log in with'
When I enter `<name>` in field located `By.xpath(//*[@id='displayName'])`
When I enter `<password>` in field located `By.xpath(//*[@id='password'])`
When I click on element located `By.xpath(//*[@id='signup-submit'])`

Examples:
|email                             |name                       |password                      |
|#{generate(Internet.emailAddress)}|#{generate(Name.firstName)}|#{generate(Internet.password)}|

Scenario: API board creation
Given I am on the main application page
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?key=2ef198e04101da71e5829e928155c0fd&token=9f1600085abe05f4b3c615db3af83325b43e89759250739e0305f5e51d6185e0&name=HomeWorkBoard1'
Then the response code is equal to '200'