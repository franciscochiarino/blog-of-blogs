namespace :deploy do
  task production: :environment do
    p 'Deploying to Heroku...'
    exec 'git push heroku main && heroku run rake db:migrate'
  end
end
