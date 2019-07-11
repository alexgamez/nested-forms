class Country < ApplicationRecord

  has_many :states

  # Column name is required
  validates :name, presence: true

  # Name always in upper case
  before_save :name_upcase

  def name_upcase
    self.name.upcase!
  end
end
