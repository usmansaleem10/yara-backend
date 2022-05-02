# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_220_502_111_352) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'crop_procotes', force: :cascade do |t|
    t.bigint 'crop_id', null: false
    t.bigint 'procote_id', null: false
    t.float 'ratio'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index %w[crop_id procote_id], name: 'index_crop_procotes_on_crop_id_and_procote_id', unique: true
    t.index ['crop_id'], name: 'index_crop_procotes_on_crop_id'
    t.index ['procote_id'], name: 'index_crop_procotes_on_procote_id'
  end

  create_table 'crops', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'unit', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'procotes', force: :cascade do |t|
    t.string 'name', null: false
    t.float 'density'
    t.float 'us_price'
    t.float 'b_ratio'
    t.float 'cu_ratio'
    t.float 'mn_ratio'
    t.float 'zn_ratio'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.float 'east_canadian_price', default: 0.0, null: false
    t.float 'west_canadian_price', default: 0.0, null: false
    t.index ['name'], name: 'index_procotes_on_name'
  end

  create_table 'regions', force: :cascade do |t|
    t.string 'state_name', null: false
    t.string 'region_name', null: false
    t.string 'currency', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'removals', force: :cascade do |t|
    t.bigint 'crop_id', null: false
    t.float 'b_ratio', null: false
    t.float 'cu_ratio', null: false
    t.float 'mn_ratio', null: false
    t.float 'zn_ratio', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['crop_id'], name: 'index_removals_on_crop_id'
  end

  add_foreign_key 'crop_procotes', 'crops'
  add_foreign_key 'crop_procotes', 'procotes'
  add_foreign_key 'removals', 'crops'
end
