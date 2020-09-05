module Types
  class CountryType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :language, LanguageType, null: false  
  end
end
