class AdminMailer < ActionMailer::Base
  default from: "admin@drum-machines.net"

  def notify_about_new user
    @user = user
    to = "admin@drum-machines.net"
    to = 'nbirnel@gmail.com' if Rails.env.production?
    mail(to: to, subject: 'New user Signed Up')
  end
end
