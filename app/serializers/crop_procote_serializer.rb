# frozen_string_literal: true

class CropProcoteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :ratio
end
