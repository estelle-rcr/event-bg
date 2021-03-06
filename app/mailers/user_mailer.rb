require 'dotenv-rails'
class UserMailer < ApplicationMailer
  default from: ENV['MAIL']
 
  def welcome_email(user)
    @user = user 
    @url  = 'https://side-events.herokuapp.com/user/sign-in' 
    mail(to: @user.email, subject: 'Welcome to Side Events!') 
  end
end
