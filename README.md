# README



* Ruby version
    2.6.5

* System dependencies

    - nvm -v 0.38.0
    - node 16.1.0
    - postgres
    - yarn

* Configuration

* Database creation
    - rails db:create
    - rails db:migrate


* How to run the test suite
    - controller tests
        rails test test/controllers
        
    - model tests
        rails test test/models
        
    - system tests
        rails test test/system

Initialization commands

1- rails webpacker:install
2- rails assets:clobber
3- rails assets:precompile
4- rails s

* Notes
    - Task and Task item are not paginated
    - Dropdowns can converted to remote dropdown using elastic search for scalability
    - Common UI can be extracted into rails mountain view components
    
as this was only 3-5 hours exercise, but above improvements requires time to implement
