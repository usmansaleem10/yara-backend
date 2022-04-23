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

ActiveRecord::Schema.define(version: 20_220_423_090_130) do
  create_table 'crop_procotes', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.bigint 'crop_id', null: false
    t.bigint 'procote_id', null: false
    t.float 'ratio'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index %w[crop_id procote_id], name: 'index_crop_procotes_on_crop_id_and_procote_id', unique: true
    t.index ['crop_id'], name: 'index_crop_procotes_on_crop_id'
    t.index ['procote_id'], name: 'index_crop_procotes_on_procote_id'
  end

  create_table 'crops', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'unit', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'procotes', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.string 'name', null: false
    t.float 'density'
    t.float 'canadian_price'
    t.float 'us_price'
    t.float 'b_ratio'
    t.float 'cu_ratio'
    t.float 'mn_ratio'
    t.float 'zn_ratio'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['name'], name: 'index_procotes_on_name'
  end

  add_foreign_key 'crop_procotes', 'crops'
  add_foreign_key 'crop_procotes', 'procotes'
end
