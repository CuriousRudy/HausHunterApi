class ListingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :appointment_id, :street_address
end
