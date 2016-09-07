<img src="https://github.com/hablijack/eilkurier/blob/master/src/main/resources/static/img/logo_header_black.png" width="100px">

# Eilkurier

![heroku deployed](https://heroku-badge.herokuapp.com/?app=eilkurier)
![travis build](https://travis-ci.org/hablijack/eilkurier.svg)

C'mon you know that situation: 
You are reading your favourite newspaper and the news you are looking for is not detectable because it's too young.
Or another situation: 
You discover a really interesting newspage in the deep web but the page only has sports news... every newstype needs another page...

Here is your solution: Your personal Eilkurier (express-courier)

https://eilkurier.herokuapp.com


## Description
Eilkurier is a webapp to collect and store RSS news and information from any source in the web to produce your own personalized newspaper.
In the future it'll be possible to export the newspaper as pdf or jpg and share them with your friends.

## Used Technology
* Spring-Boot
* Spring-Security
* Freemarker
* Maven
* Rome Fetcher
* Bootstrap 3
* JQuery
* Tomcat
* PostgreSQL
* H2DB
* <a href="https://projectlombok.org/" target="_blank">Project Lombok</a>
* Selenide
* Webdrivermanager
* PhantomJS

## Installation
KISS principle: Keep It Short n Simple
#### Step1: Checkout
> git clone https://github.com/hablijack/eilkurier.git

#### Step2: Step into
> cd eilkurier

#### Step3: Import in your favourite IDE
Be sure to <a href="https://projectlombok.org/download.html" target="_blank">import LOMBOK correctly</a>, otherwise your IDE will not compile!

#### Run Spring-Boot maven goal
> mvn spring-boot:run -Dspring.profiles.active=development
Pay attention to the "profiles.active" parameter for development profile => It points you to a local INMEMORY! database.

#### Open browser
Try to open your browser at http://localhost:8080. There should be the homepage of "eilkurier". 
You can (in development profile) login for test purposes by using the user "root@eilkurier.com" and the password "test".