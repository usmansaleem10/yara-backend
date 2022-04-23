# frozen_string_literal: true

class Procote < ApplicationRecord
  validates :name, presence: true
  validates :density, presence: true
  validates :canadian_price, presence: true
  validates :us_price, presence: true
end
