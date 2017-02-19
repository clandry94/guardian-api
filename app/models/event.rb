class Event
  include Mongoid::Document
  field :event, type: Array
  embedded_in :user
end
