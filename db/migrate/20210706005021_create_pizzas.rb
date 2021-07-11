class CreatePizzas < ActiveRecord::Migration[6.1]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.text :ingredients
      t.string :size
      

      t.timestamps
    end
  end
end
