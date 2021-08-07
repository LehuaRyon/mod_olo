# MOD Online Ordering
A pizza restaurant ordering and review application built with Ruby on Rails.

## Description
This app was built for the [Flatiron School](https://flatironschool.com/) Rails project and is meant to let users order or review pizzas of their choosing.  Users can signup, login, and logout as well as login and logout through Google.  Users can edit their login credentials and/or delete their accounts.  Once logged in, a user is shown only his or her pizza orders and reviews. Users can create new pizza orders, edit, and delete them. Users can also review certain pizzas they've tried, search throughout the orders list by purchaser's last name, and search throughout the pizzas list by pizza name.  Users are also capable of viewing all the reviews for a specific pizza or all the orders for a specific pizza. 

## Local Installation
To install and run the app on your local machine:
1. Click the green Clone or download button above and click the copy to clipboard button
2. From your terminal, run `git clone [paste the link from step 1]`
3. Then run `cd mod_olo` to navigate to the mod_olo directory
4. Run `bundle install` to install the necessary gems and dependencies
5. Run `rake db:migrate` to perform the database migrations
6. Run `rake db:migrate` to fill the database with MOD's available classic pizzas
7. Run `rails s` to start a local rails server
8. Go to <a href="localhost:3000" target="_blank">localhost:3000</a> to view the app!

## Enable Google Login

To enable oAuth with Google login, add the following to the `.env` file, replacing the string `YOUR_CLIENT_ID` and `YOUR_CLIENT_SECRET` with a your Google Client ID and Secret.

```
GOOGLE_CLIENT_ID="YOUR_CLIENT_ID"
GOOGLE_CLIENT_SECRET="YOUR_CLIENT_SECRET"
```

Detailed instructions on creating the Google Client keys can be seen here: [Google Authentication Strategy for Rails 5 Application](https://medium.com/@rachel.hawa/google-authentication-strategy-for-rails-5-application-cd37947d2b1b)

> **Note**: Since the `.env` file contains sensitive information, it should not be tracked, committed or pushed to Github. 

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/LehuaRyon/mod_olo. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/LehuaRyon/mod_olo/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://github.com/LehuaRyon/mod_olo/blob/main/LICENSE).

## Code of Conduct

Everyone interacting in the MOD Olo's project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/LehuaRyon/mod_olo/blob/main/CODE_OF_CONDUCT.md).
## Additional Links

- [Spec](spec.md)