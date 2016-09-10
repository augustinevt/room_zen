class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.column :house_id, :integer
      t.column :user_id, :integer
      t.column :message, :string

      t.timestamps
    end
  end
end
