class Store < ActiveRecord::Base
	has_and_belongs_to_many :customers
	has_many :goods
end
