# frozen_string_literal: true

class CreateProcotes < ActiveRecord::Migration[6.1]
  def change
    create_table :procotes do |t|
      t.string :name, null: false, index: true
      t.float :density, precision: 4, scale: 3
      t.float :canadian_price, precision: 4, scale: 3
      t.float :us_price, precision: 4, scale: 3
      t.float :b_ratio, precision: 4, scale: 3
      t.float :cu_ratio, precision: 4, scale: 3
      t.float :mn_ratio, precision: 4, scale: 3
      t.float :zn_ratio, precision: 4, scale: 3
      t.timestamps
    end
  end
end
