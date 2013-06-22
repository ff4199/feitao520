class RemoveAFromShuoshuos < ActiveRecord::Migration
  def up
    remove_column :shuoshuos, :pinglun
  end

  def down
    add_column :shuoshuos, :pinglun, :string
  end
end
