class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.datetime :due_date
      t.integer :user_id

      t.timestamps
    end
  end
end
