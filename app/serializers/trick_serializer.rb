class TrickSerializer < ActiveModel::Serializer
  attributes :id, :content, :user, :spot_id, :created_at
end
