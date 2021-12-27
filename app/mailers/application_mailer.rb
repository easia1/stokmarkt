class ApplicationMailer < ActionMailer::Base
  default from: 'hello@stock.com'
  #default from: "Stock App Noreply <hello@stock.com>"
  
  layout 'mailer'
end
