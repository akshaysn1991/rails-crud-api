module Types
  class DatacenterType < Types::BaseObject
    field :id, ID, null: false
    field :code, String, null: true
    field :servers_available, Boolean, null: false
    field :servers_capacity, Integer, null: true
    field :country, CountryType, null: false
  end
end
    