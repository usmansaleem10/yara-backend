# frozen_string_literal: true

class CreateRemovals < ActiveRecord::Migration[6.1]
  def change
    create_table :removals do |t|
      t.references :crop, null: false, foreign_key: true
      t.float :b_ratio, precision: 4, scale: 3, null: false
      t.float :cu_ratio, precision: 4, scale: 3, null: false
      t.float :mn_ratio, precision: 4, scale: 3, null: false
      t.float :zn_ratio, precision: 4, scale: 3, null: false

      t.timestamps
    end
  end
end
