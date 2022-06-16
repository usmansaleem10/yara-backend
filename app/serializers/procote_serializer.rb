# frozen_string_literal: true

class ProcoteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :density, :us_price, :b_ratio, :cu_ratio, :mn_ratio, :zn_ratio, :east_canadian_price,
             :west_canadian_price
end
