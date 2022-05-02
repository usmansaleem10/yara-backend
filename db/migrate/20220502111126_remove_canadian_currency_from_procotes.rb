# frozen_string_literal: true

class RemoveCanadianCurrencyFromProcotes < ActiveRecord::Migration[6.1]
  def change
    remove_column :procotes, :canadian_price
  end
end
