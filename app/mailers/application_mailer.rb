class ApplicationMailer < ActionMailer::Base
  default from: 'no-reply@ruby.com',
          return_path: 'contact@ruby.com'

  layout 'mailer'

  def email(to_address, subject, body)
    options = { to: to_address, subject: subject, body: body }
    mail options
  end
end
