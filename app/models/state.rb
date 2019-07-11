class State < ApplicationRecord

  belongs_to :country
  has_many :cities, dependent: :destroy

  accepts_nested_attributes_for :cities,
    reject_if: proc { |attr| attr['name'].blank? },
    allow_destroy: true

  # Column name is required
  validates :name, presence: true

  before_validation  :upercase_fields

  def upercase_fields
    if !self.name.nil?
      self.name.upcase!
    end
  end
end
