class AddPeopleToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :people, :string
  end
end
