class InterestMailer < ActionMailer::Base
  default from: "noreply@paddle-soft.com"

  def welcome_email(member)
       @member = member
      mail( :to => @member.email,
      :subject => 'Thanks for signing up' )
	end
end
 