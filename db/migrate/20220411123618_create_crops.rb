# frozen_string_literal: true

class CreateCrops < ActiveRecord::Migration[6.1]
  def change
    create_table :crops do |t|
      t.string :name, null: false
      t.string :unit, null: false

      t.timestamps
    end
  end
end
