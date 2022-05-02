# frozen_string_literal: true

class Region < ApplicationRecord
  validates :region_name, presence: true
  validates :currency, presence: true
  validates :state_name, presence: true, uniqueness: { scope: :region_name }
end
