class Event
  include Mongoid::Document
  field :event, type: Array
end
