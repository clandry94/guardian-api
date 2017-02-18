require 'oauth2'
class User
  include Mongoid::Document
  embeds_one :events
  
  field :id_token, type: String
  field :name , type: Hash
  field :email, type: String
  field :address, type: Hash
  field :photo, type: BSON::Binary
  field :phone, type: String
  field :emergency_contacts, type: Array
  
  # pass in a hash
  def add_emergency_contact(contact)
    data = { first_name: contact[:first_name],
             last_name:  contact[:last_name],
             email:      contact[:email],
             phone:      contact[:phone],
             relation:   contact[:relation] }
    
    self.emergency_contacts << data
  end




  def remove_emergency_contact(email)
    self.emergency_contacts.select { |contact| contact[:email] == email }.delete
  end

  def update_settings(settings)
  end
  
end
