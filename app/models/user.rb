class User < ActiveRecord::Base
	has_one :address
	has_one :contact
	accepts_nested_attributes_for :contact	
	accepts_nested_attributes_for :address
	after_initialize do
	    self.address ||= self.build_address()
	    self.contact ||= self.build_contact()
	end
end
