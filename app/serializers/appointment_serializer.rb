class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :listing_id, :date, :time
end
