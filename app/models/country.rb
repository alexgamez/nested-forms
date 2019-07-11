class Country < ApplicationRecord

  has_many :states, dependent: :destroy

  accepts_nested_attributes_for :states,
    reject_if: proc { |attr| attr['name'].blank? },
    allow_destroy: true

  # Column name is required
  validates :name, presence: true

  # Name always in upper case
  before_save :name_upcase

  def name_upcase
    self.name.upcase!
  end
end
