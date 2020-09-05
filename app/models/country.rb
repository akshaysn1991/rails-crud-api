class Country < ApplicationRecord
    validates :name, presence: true
    belongs_to :language
    has_many :datacenters
end
