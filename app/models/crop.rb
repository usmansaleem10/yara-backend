# frozen_string_literal: true

class Crop < ApplicationRecord
  UNITS = ['ton', 'lb', 'bu', '90 lb box', 'lbs', 'cartons', 'cwt'].freeze

  has_many :crop_procotes
  has_many :procotes, through: :crop_procotes
  has_one :removal

  validates :name, presence: true
  validates :unit, inclusion: { in: UNITS,
                                message: '%<value>s is not a valid unit' }
  accepts_nested_attributes_for :removal
end
