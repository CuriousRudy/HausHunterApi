class NoteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :appointment_id, :content



end
