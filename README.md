
# Sample security tests to run in a CI/CD Pipeline

This is sample project with security test  

It includes:
* _security-BDD_ as the source code repository
* _GauntLt_ for runtime checks
* _TestSSL.sh_ to test SSL configuration and vulnerabilities
* Some custom scripts

The security-BDD features are at src/test/resources/features. The Gauntlt
tests are at src/test/resources/checks.
 

Additionally, the repository for the web application is at https://github.com/ToddBenson/concourse-maven-spring-boot.git and the Docker image used 
 is at https://hub.docker.com/r/tgbenson/security-image/. The Dockerfile is located in the web application repo.


The pipeline used:
![alt text](https://github.com/ToddBenson/concourse-maven-spring-boot/blob/master/screenshot.png "Example Pipeline")

Every push to Master:

* Runs security acceptance tests with security-BDD (Test marked with @acceptance)
* Once acceptance tests have passed, the release is pushed to the test instance of Cloud Foundry
* Also after acceptance test, all other security tests run (experimental, unfinished stories, runtime checks, etc.)



Hourly:

* Runtime checks with Gauntlt, which include SSL tests, nmap scans, HTTP method detection, etc.


Nightly (ToDo)

* A full ZAP dynamic scan


During Random Business Hours (ToDo)

* Attack simulations


TBD (ToDo)

* Automated auditing of services - AWS, GitHub, etc.


## Resources

- <https://github.com/continuumsecurity/bdd-security>
- <http://gauntlt.org/>
- <https://testssl.sh/>
- <https://hub.docker.com/r/tgbenson/security-image/>
- <https://github.com/ToddBenson/concourse-maven-spring-boot>
