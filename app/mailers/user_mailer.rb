class UserMailer < ApplicationMailer
  default from: "karla_schoenicke@yahoo.de"

  def contact_form(email, name, message) #this mailer method needs to match the email template in views/user_maler/contact_form.html.erb
  @message = message
    mail(from: email,
         to: 'your-email@example.com',
         subject: "A new contact form message from #{name}")
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end
end
