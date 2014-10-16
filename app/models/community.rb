class Community < ActiveRecord::Base
	validates :name, length:{ minimum: 4}, presence: true
end
