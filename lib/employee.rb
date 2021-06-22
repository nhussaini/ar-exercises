class Employee < ActiveRecord::Base
  Employee.belongs_to :store

end
