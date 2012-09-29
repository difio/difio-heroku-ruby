Registration agent for Difio, preconfigured for Heroku / Ruby
applications.

It compiles a list of installed packages and sends it to http://www.dif.io.

Installing inside your Heroku application
-----------------------------------------

- Create an account at http://www.dif.io

- Create your Ruby application in Heroku

- Configure the following environment variables on Heroku

        heroku config:set DIFIO_USER_ID=YourUserID
        heroku config:set DIFIO_APP_NAME=MyApplication
        heroku config:set DIFIO_APP_URL=http://myapp.herokuapp.com

- Add a dependency in your application's Gemfile

        ...
        gem 'difio-heroku-ruby'
        ...

- Update your `Gemfile.lock` by running locally

        bundle install

- Then commit and push your application to Heroku

        git commit -a -m "added dependency on Difio"
        git push heroku master


- Execute the registration script to submit the information to Difio

        heroku run /app/bin/difio-heroku
        Running `/app/bin/difio-heroku` attached to terminal... up, run.1
        Success, registered/updated application 8370e3be-6e54-462d-9ca9-224301c29a1d


That's it, you can now check your application statistics at http://www.dif.io



Updating dependencies
----------------------

Whenever you change your application to include new dependencies or
upgrade/downgrade package versions you should re-submit the information to Difio.

::

        heroku run /app/bin/difio-heroku

