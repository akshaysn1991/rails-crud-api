class Datacenter < ApplicationRecord
  validates :code, presence: true, uniqueness: true
  belongs_to :country
end
