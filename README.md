# King & McGaw Technical assessment
This demonstrates a Q&A feature using Actioncable. If you select a question and add an answer, the change should be broadcast to every user without needing to refresh the page.

## Setup
Checkout the project and run the following:
```
bundle install
bin/rails setup
bin/rails db:seed
```

# Using the app
Go to http://localhost:3000 and select a user. Now do the same thing in a different web browser, but select a different user than before. Now select a question and add an answer - you should see the page automatically updated with the submitted question for the user in the other web browser window.

