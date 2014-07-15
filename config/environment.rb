# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Cambio según indicación libro para envío de mails
# OPCIONES config.action_mailer.delivery_method = :test | :smtp | :sendmail | :File
# Configuración de correo electrónico
Rails.application.configure do
	config.action_mailer.delivery_method = :smtp
	config.action_mailer.smtp_settings = {
		:address => "smtp.gmail.com",
		:port => 587,
		:domain => "gmail.com",
		:user_name => "quirologia@gmail,com",
		:password => "Capitan1",
		:authentication => "plain",
		:enable_starttls_auto => true
	}
	config.action_mailer.raise_delivery_errors = true
end
