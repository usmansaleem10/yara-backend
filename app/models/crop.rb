# frozen_string_literal: true

class Crop < ApplicationRecord
  UNITS = ['ton', 'lb', 'bu', '90 lb box', 'lbs', 'cartons', 'cwt'].freeze

  has_many :crop_procotes
  has_many :procotes, through: :crop_procotes
  has_many :removals

  validates :name, presence: true
  validates :unit, inclusion: { in: UNITS,
                                message: '%{value} is not a valid unit' }
end
