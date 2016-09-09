class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.column :email, :string
      t.column :username, :string
      t.column :bio, :text
      t.column :image, :string


      t.timestamps
    end
  end
end
