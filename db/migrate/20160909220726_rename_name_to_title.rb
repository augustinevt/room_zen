class RenameNameToTitle < ActiveRecord::Migration[5.0]
  def change
    rename_column :houses, :name, :title
  end
end
