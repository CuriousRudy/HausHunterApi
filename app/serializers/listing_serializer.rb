class ListingSerializer < ActiveModel::Serializer
  attributes :id, :street_address, :city, :state, :zip, :beds, :baths, :asking_price
end
