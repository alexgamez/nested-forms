class City < ApplicationRecord
  belongs_to :state

  # Column name is required
  validates :name, presence: true

  before_validation  :upercase_fields

  def upercase_fields
    if !self.name.nil?
      self.name.upcase!
    end
  end
end
