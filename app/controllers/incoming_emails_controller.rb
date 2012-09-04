class IncomingEmailsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def forward
    Mail.defaults do
      delivery_method :smtp, {
        :address => 'smtp.sendgrid.net',
        :port => '587',
        :domain => 'herokuapp.com',
        :user_name => ENV['SENDGRID_USERNAME'],
        :password => ENV['SENDGRID_PASSWORD'],
        :authentication => :plain,
        :enable_starttls_auto => true
      }
    end

    mail = Mail.new(params[:message])
    mail.reply_to = mail.from
    mail.from = "Synergy Croatia <#{ENV["SENDGRID_USERNAME"]}>"
    mail.to = "janko.marohnic@gmail.com"
    mail.body = "#{mail.body.to_s}\n\nEdited."
    mail.deliver

    head :ok
  end
end
