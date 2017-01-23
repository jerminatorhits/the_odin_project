require 'net/pop'
require 'action_mailer'
require 'net/http'

url = 'http://www.acme.com/user/details'
params = {}
params[firstName] = 'John'
params[lastName] = 'Doe'

resp = Net::HTTP.post_form(url, params)

resp_text = resp.body

=begin

require 'action_mailer'

class Emailer < ActionMailer::Base
  def test_email(email_address, email_body)
  	mail(to: email_address, from: 'me@privacy.net', subject: 'test', body: email_body)
  end
end

Emailer.test_email('', 'This is a test e-mail!').deliver_now

=end


=begin

message = <<MESSAGE_END
From: Private Person <me@privacy.net>
To: Author of Beginning Ruby <test@rubyinside.com>
Subject: SMTP e-mail test

This is a test e-mail message.
MESSAGE_END

Net::SMTP.start('localhost') do |smtp|
  smtp.send_message message, 'me@privacy.net', 'test@rubyinside.com'
end

=end

=begin
	
mail_server = Net::POP3.new('pop.mail.google.com')
mail_server.enable_ssl
puts mail_server.use_ssl?
begin
  if mail_server.mails.empty?
  	puts "No mails"
  else
  	puts "#{mail_server.mails.length} mails waiting"
  end
rescue
  puts "Mail error"
end

=end
