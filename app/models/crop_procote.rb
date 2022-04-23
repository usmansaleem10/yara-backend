# frozen_string_literal: true

class CropProcote < ApplicationRecord
  belongs_to :crop
  belongs_to :procote
  validates :crop_id, presence: true, uniqueness: { scope: :procote_id }
end
