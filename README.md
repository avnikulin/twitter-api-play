#Twitter-Api-Play-Client

##App Design
My app primarily relies on the `twitter` gem which is a fully functional twitter API client with all the bells and whistles. I chose to use the gem because it seems to be well maintained and very functional. For caching API calls, I used memcached with the `dalli` gem because it's a simple and easy way to cache requests. My next feature would be to incorporate `omniauth` to sign-up a user as a twitter user and maybe allow users to post tweets.

##Local environment setup instructions

1. Install Ruby and Ruby on Rails

2. Install Postgres (MacOS)
  ```
  $ brew install postgres
  ```

3. Install Memcached
  ```
  $ brew install memcached
  ```

4. Clone GitHub repo 
  ```
  $ git clone https://github.com/avnikulin/twitter-api-play.git
  ```

5. Setup Postgres DB
  ```
  $ rake db:setup
  ```

5. Migrate DB
  ```
  $ rake db:migrate
  ```

6. Run rails server
  ```
  $ rails s
  ```

##Basic Heroku deployment instructions
1. Provision memcachier
  ```
  $ heroku addons:create memcachier:dev
  ```

2. Push master branch to heroku
  ```
  $ git push heroku master
  ```
  
3. Migrate DB
  ```
  $ heroku run rake db:migrate
  ```
