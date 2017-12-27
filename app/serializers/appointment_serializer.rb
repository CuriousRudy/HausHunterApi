class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :listing_id, :date, :time, :notes

  # has_many :notes
  # def appointment_notes
  # 	object.notes.map do |note|
  # 		{id: note.id,
  # 			user_id: note.user_id,
  # 			appointment_id: note.appointment_id,
  # 			content: note.content}
  # 		end
  # 	end
end
