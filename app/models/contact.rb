class Contact < ApplicationRecord

	#Enum
	enum business_type: { service: 'service', manufacturer: 'manufacturer', retailer: "retailer", wholesaler: "wholesaler" }
end
