class State < ApplicationRecord

  belongs_to :country

  # Column name is required
  validates :name, presence: true
  validates :country_id, presence: true

  before_validation  :upercase_fields

  def upercase_fields
    if !self.name.nil?
      self.name.upcase!
    end
  end
end
