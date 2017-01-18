class AdminNotifierMailer < ApplicationMailer
	default :from => 'any_from_address@example.com'

  # send a signup email to the admin, pass in the admin object that contains the admin's email address
  def send_signup_email(admin)
    @admin = admin
    mail( :to => @admin.email,
    :subject => 'Obrigado por inscrever-se' )
  end

end
