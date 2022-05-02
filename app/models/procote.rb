# frozen_string_literal: true

class Procote < ApplicationRecord
  validates :name, presence: true
  validates :density, presence: true
  validates :east_canadian_price, presence: true
  validates :west_canadian_price, presence: true
  validates :us_price, presence: true
end
