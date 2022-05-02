# frozen_string_literal: true

class CanadianPriceToProcotes < ActiveRecord::Migration[6.1]
  def change
    add_column :procotes, :east_canadian_price, :float, default: 0, null: false, precision: 4, scale: 3
    add_column :procotes, :west_canadian_price, :float, default: 0, null: false, precision: 4, scale: 3
  end
end
