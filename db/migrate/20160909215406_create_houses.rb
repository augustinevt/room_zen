class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.column :name, :string
      t.column :address, :string
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
