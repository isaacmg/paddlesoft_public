class Possible < ActiveRecord::Base
 include Humanizer
  require_human_on :create
validate :validation, :email_correct
def validation 
	if name.present? and not name.match(/^([a-zA-Z]+\s)*[a-zA-Z]+$/) 
	errors.add :name, "Invalid characters present"
	end 
end
def email_correct
if not email.match(/.+\@.+\..+/)
errors.add :email, "Invalid emaill address. Must be of form string@website.extension"
end 
end
end
