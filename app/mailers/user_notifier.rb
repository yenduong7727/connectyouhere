class UserNotifier < ActionMailer::Base
  default from: "NoReply@ConnectYouHere.com"

  # send emails for 200 users every day notifying them new jobs
  def send_signup_email(user)
    @user = user
    mail( :to => @user.email,
    :subject => 'Thanks for signing up for our amazing app' )
  end
end
