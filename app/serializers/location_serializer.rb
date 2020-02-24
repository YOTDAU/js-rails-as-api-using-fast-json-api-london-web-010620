class LocationSerializer
  include FastJsonapi::ObjectSerializer
  # must specifiy which attributes are wanted 

  attributes :latitude, :longitude
end
