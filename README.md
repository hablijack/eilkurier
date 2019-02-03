<h1> 
<img src="http://domino.zapto.org:10080/chrhab/eilkurier/blob/master/src/main/resources/static/img/logo_header_black.png" width="60px">
Eilkurier
</h1>

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
* <a href="http://projects.spring.io/spring-boot/">Spring-Boot</a>
* <a href="http://projects.spring.io/spring-security/">Spring-Security</a>
* <a href="http://freemarker.org/">Freemarker</a>
* <a href="https://maven.apache.org/">Maven</a>
* <a href="http://rometools.github.io/rome-fetcher/">Rome Fetcher</a>
* <a href="http://getbootstrap.com/">Bootstrap 3</a>
* <a href="https://jquery.com/">JQuery</a>
* <a href="http://tomcat.apache.org/">Tomcat</a>
* <a href="https://www.postgresql.org/">PostgreSQL</a>
* <a href="http://hsqldb.org/">H2DB</a>
* <a href="https://projectlombok.org/" target="_blank">Project Lombok</a>
* <a href="http://selenide.org/">Selenide</a>
* <a href="https://github.com/bonigarcia/webdrivermanager">Webdrivermanager</a>
* <a href="http://phantomjs.org/">PhantomJS</a>

## Installation
KISS(Keep It Short n Simple) principle! 5 steps tutorial:
#### Step1: Checkout
> git clone https://github.com/hablijack/eilkurier.git

#### Step2: Step into
> cd eilkurier

#### Step3: Import in your favourite IDE
Be sure to <a href="https://projectlombok.org/download.html" target="_blank">import LOMBOK correctly</a>, otherwise your IDE will not compile!

#### Step 4: Run Spring-Boot maven goal
> mvn spring-boot:run -Dspring.profiles.active=development

Pay attention to the "profiles.active" parameter for development profile => It points you to a local INMEMORY! database.
You can also use your IDE and the <a href="http://docs.spring.io/spring-boot/docs/current/maven-plugin/run-mojo.html">Maven Spring-Boot Plugin</a> to run the project:

> Run -> Run Configurations -> Maven Build -> New -> Goal: "spring-boot:run -Dspring.profiles.active=development" -> Run

#### Step 5: Open browser
Try to open your browser at http://localhost:8080. There should be the homepage of "eilkurier". 
You can (in development profile) login for test purposes by using the user "root@eilkurier.com" and the password "test".
