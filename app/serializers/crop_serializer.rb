# frozen_string_literal: true

class CropSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :unit
  has_one :removal
  has_many :crop_procotes
  attribute :crop_procotes do |object|
    object.crop_procotes.as_json
  end
  attribute :removal do |object|
    object.removal.as_json
  end
end
