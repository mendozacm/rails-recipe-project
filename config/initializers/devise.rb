
Devise.setup do |config|



  require 'devise/orm/active_record'

 
  



  config.omniauth :facebook, "APP_ID", "APP_SECRET"

 
end
