class NoteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :appointment_id, :content

  belongs_to :user
  belongs_to :appointment
end
