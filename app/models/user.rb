require 'oauth2'
class User
  include Mongoid::Document
  embeds_one :events

  field :id_token, type: String
  field :access_token, type: String
  field :refresh_token, type: String
  field :name , type: Hash
  field :email, type: String
  field :address, type: Hash
  field :photo, type: BSON::Binary
  field :phone, type: String
  field :emergency_contacts, type: Array

  def update_settings(settings)

  end

  def self.set_access_token(auth_code)
    client_secrets = Google::APIClient::ClientSecrets.load "#{Rails.root}/client_secrets.json"
    auth_client = client_secrets.to_authorization
    auth_client.update!(
      scope: 'https://www.googleapis.com/auth/calendar.readonly',
      redirect_uri: 'https://731a0b48.ngrok.io/oauth2callback'
    )

    auth_client.code = auth_code
    auth_client.fetch_access_token!

    #self.id_token = auth_client.id_token
    #self.access_token = auth_client.access_token
    #self.refresh_token = auth_client.refresh_token
    Rails.logger.info auth_client
    auth_client
  end
end
