class Shippingorder < ApplicationRecord
	before_create :generate_ourref

	def generate_ourref
       self.ourref = rand(1000011..9900099).to_s 
  	end
end
