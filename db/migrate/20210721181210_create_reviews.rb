class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :stars
      t.string :content
      t.integer :pizza_id
      t.integer :reviewer_id

      t.timestamps
    end
  end
end
