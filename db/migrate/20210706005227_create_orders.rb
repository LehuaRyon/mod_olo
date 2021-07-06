class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :pizza, null: false, foreign_key: true
      t.string :pickup_name
      t.text :special_instructions

      t.timestamps
    end
  end
end
