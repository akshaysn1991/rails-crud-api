class Datacenter < ApplicationRecord
  validates :code, presence: true
  validates_uniqueness_of :code, :case_sensitive => false
  belongs_to :country
end
