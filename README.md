## What is mySupportBot?

MySupportBot is a bot to anyone application that integrate with then, he will create your faqs, and list than with hashtags.

## [Stack]
- Sinatra
- Heroku
- Slack
- Docker

## Docs

Use the link POST request to https://my-support-bot.herokuapp.com/webhook...

More, in construction...

## I want to contribute

Everyone is welcome to contribute to the project and improve the way of the people manage your team faqs.

To contribute follow the steps below:

### 1. Fork this repository
### 2. Clone your fork to a local repository
```
git clone your-foked-repository
cd your-foked-repository
```

### 5. Run docker-composer build
```
docker-compose up --build
```
### 6. Run migrations (Os containers terão que estar up para executar o comando abaixo)
```
docker-compose up
docker-compose run --rm website bundle exec rake db:create db:migrate
```
### 7. Run tests
```
docker-compose exec website bundle exec spring rspec
```
### 8. Start the app
```
docker-compose up --build
```
### 9. Add the original repository as a source in your local repository
```
git remote add upstream https://github.com/andreleoni/my-support-bot
```
### 10. Sync your repository with the original
```
git fetch upstream
```
### 11. Update local repository
```
git checkout master
git merge upstream/master
```
### 12. Create a new branch
```
git checkout -b my-new-feature
```
### 13. Make a pull request
