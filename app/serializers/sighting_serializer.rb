class SightingSerializer
  include FastJsonapi::ObjectSerializer

  # must specifiy which attributes are wanted 

  attributes :created_at, :bird, :location

  # need to add relationships to serializers
  # will result in a new 'relationships' hash being created
  belongs_to :bird 
  belongs_to :location
end
