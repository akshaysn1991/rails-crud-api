module Types
  class QueryType < Types::BaseObject
    #/datacenters
    field :datacenters, [DatacenterType], null: false

    def datacenters
      Datacenter.all
    end

    field :datacenter, DatacenterType, null: false do
      argument :id, ID, required: true
    end

    def datacenter(id:)
      Datacenter.find(id)
    end
  end
end
