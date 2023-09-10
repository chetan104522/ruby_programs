class User < ApplicationRecord
	self.table_name = "employee"
	validates :name, presence: true
end

 # ActiveRecord::Base.connection.execute('select * from employees')
