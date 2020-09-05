class Country < ApplicationRecord
    validates :name, presence: true
    validates_uniqueness_of :name, :case_sensitive => false
    belongs_to :language
    has_many :datacenters, dependent: :destroy
end
