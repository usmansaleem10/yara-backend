# frozen_string_literal: true

class CreateRegions < ActiveRecord::Migration[6.1]
  def change
    create_table :regions do |t|
      t.string :state_name, null: false
      t.string :region_name, null: false
      t.string :currency, null: false

      t.timestamps
    end
  end
end
