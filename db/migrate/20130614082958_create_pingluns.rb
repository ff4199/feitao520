class CreatePingluns < ActiveRecord::Migration
  def change
    create_table :pingluns do |t|
      t.string :comment
      t.string :user

      t.timestamps
    end
  end
end
