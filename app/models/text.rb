class Text < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :phone_number, :message
end
