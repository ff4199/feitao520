class AddBToPinglun < ActiveRecord::Migration
  def change
    add_column :pingluns, :shuoshuo_id, :integer
  end
end
