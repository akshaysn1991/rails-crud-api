class DatacenterSerializer < ActiveModel::Serializer
  attributes :id, :code, :servers_available, :servers_capacity, :country, :language
  
  def servers_available
    object.servers_available.humanize
  end

  def language
    object.country.language.name
  end

  def country
    object.country.name
  end

end
