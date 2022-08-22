class CreateEmptyRemovals < ActiveRecord::Migration[6.1]
  def up
    Crop.all.each do |crop|
      next if crop.removal

      crop.create_removal({ b_ratio: 0, cu_ratio: 0, mn_ratio: 0, zn_ratio: 0 })
    end
  end
  def down;end
end
