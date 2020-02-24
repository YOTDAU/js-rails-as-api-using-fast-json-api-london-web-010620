class BirdSerializer
  include FastJsonapi::ObjectSerializer

  #must specifiy which attributes are wanted 

  attributes :name, :species
end
