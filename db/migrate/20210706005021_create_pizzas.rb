class CreatePizzas < ActiveRecord::Migration[6.1]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.text :ingredients
    
      

      t.timestamps
    end
  end
end
