# frozen_string_literal: true

class Removal < ApplicationRecord
  belongs_to :crop
  validates :b_ratio, presence: true
  validates :cu_ratio, presence: true
  validates :mn_ratio, presence: true
  validates :zn_ratio, presence: true
end
