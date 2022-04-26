# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version = 3.0.0
* Rails Version = 7.2.3

* System dependencies - 
    Have these gem's installed - Tailwind, Foreman, Devise, Redis

* Configuration - 
    Make sure you have Redis running in background, if not - It can be initialized using this command:-
    redis-server --daemonize yes, 
    In order to check that is it running - ps aux | grep redis-server

* Database initialization - 
    Before making any moves, configure the database.yml in config folder with your postgres user and password in default.

* Database creation - 
    Run rails db:create && rails db:migrate

* How to run - 
    You can initialize the application with bin/dev instead of normal 'rails server', 
    *bin/dev is foreman's command, and it builds Tailwind on-the-go.
