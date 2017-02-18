class User
  include Mongoid::Document
  embeds_one :events

  field :name , type: Hash
  field :email, type: String
  field :address, type: Hash
  field :photo, type: BSON::Binary
  field :phone, type: String
  field :emergency_contact, type: Array
end
