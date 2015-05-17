class InterestMailer < ActionMailer::Base
  default from: "noreply@paddle-soft.com"

  def send_signup_email(member)
       @member = member
      mail( :to => @member.email,
      :subject => 'Thanks for signing up' )
	end
end
 