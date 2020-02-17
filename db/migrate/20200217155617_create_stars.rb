class CreateStars < ActiveRecord::Migration[6.0]
  def change
    create_table :stars do |t|
      t.string :name
      t.string :city
      t.string :category
      t.integer :price
      t.string :sex
      t.integer :size

      t.timestamps
    end
  end
end
