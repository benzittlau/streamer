class WashroomState < ActiveRecord::Base
  belongs_to :washroom

  validates :state, inclusion: {in: %w[open closed]}
  validates_associated :washroom
end
