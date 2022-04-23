# frozen_string_literal: true

class CreateCropProcotes < ActiveRecord::Migration[6.1]
  def change
    create_table :crop_procotes do |t|
      t.references :crop, null: false, foreign_key: true
      t.references :procote, null: false, foreign_key: true
      t.float :ratio, precision: 4, scale: 3

      t.timestamps
    end
    add_index :crop_procotes, %i[crop_id procote_id], unique: true
  end
end
