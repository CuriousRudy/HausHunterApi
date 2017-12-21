class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :email, :appointments, :listings
  #
  def full_name
    "#{object.first_name} #{object.last_name}"
  end

  # def user_listings
  #   object.listings.map do |listing|
  #     {
  #     id: listing.id,
  #     beds: listing.beds,
  #     baths: listing.baths,
  #     asking_price: listing.asking_price,
  #     street_address: listing.street_address,
  #     sub_address: listing.sub_address,
  #     city: listing.city,
  #     state: listing.state,
  #     zip: listing.zip
  #   }
  #   end
  # end

  # def user_appointments
  #   object.appointments.map do |appointment|
  #     {
  #     id: appointment.id,
  #     listing: appointment.listing_id,
  #     user: appointment.user_id,
  #     date: appointment.date,
  #     time: appointment.time
  #   }
  #   end
  # end


end
