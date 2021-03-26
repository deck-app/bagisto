# Bagisto
---------------------


# Introduction


What is Bagisto
---------------
Bagisto is a hand tailored E-Commerce framework designed on some of the hottest opensource technologies such as Laravel a PHP framework, Vue.js a progressive Javascript framework.

Bagisto is viable attempt to cut down your time, cost and workforce for building online stores or migrating from physical stores to the ever demanding online world. Your business whether small or huge it suits all and very simple to set it up.



### Requirements

* **SERVER**: Apache 2 or NGINX.
* **RAM**: 3 GB or higher.
* **PHP**: 7.3 or higher.
* **For MySQL users**: 5.7.23 or higher.
* **For MariaDB users**: 10.2.7 or Higher.
* **Node**: 8.11.3 LTS or higher.
* **Composer**: 1.6.5 or higher.

### Installation and Configuration

* clone the git repo 
``` 
git clone https://github.com/deck-app/bagisto.git
```
* open the **.env** file 
* add app path **APP_CODE_PATH_HOST=(an empty folder path)**
* add database path  **DATA_PATH_HOST=(an empty folder path)**
* set the database Credential
DB_NAME=
DB_USER=
DB_PASSWORD=
DB_ROOT_PASSWORD=
* save the .env file
* run the `docker-compose.yml` file:
``` 
docker compose up -d
```
* open browser [http://localhost:5564/](http://localhost:5564/) to start the app
* click on continue to install the app
