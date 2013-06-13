class CreateShuoshuos < ActiveRecord::Migration
  def change
    create_table :shuoshuos do |t|
      t.string :title
      t.string :content
      t.string :user
      t.string :pic

      t.timestamps
    end
    add_index :shuoshuos, [:user, :created_at]
  end
end
