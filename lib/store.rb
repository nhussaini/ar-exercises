class Store < ActiveRecord::Base
  Store.has_many :employees

end
