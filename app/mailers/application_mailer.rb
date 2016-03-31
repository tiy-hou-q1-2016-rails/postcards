class ApplicationMailer < ActionMailer::Base
  default from: "robot@postcards-2016.herokuapp.com"
  layout 'mailer'
  default_url_options[:host] = "http://postcards-2016.herokuapp.com"
end
