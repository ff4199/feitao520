class AddPinglunToShuoshuos < ActiveRecord::Migration
  def change
    add_column :shuoshuos, :pinglun, :string
  end
end
