class AddColumToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :description, :text
    add_column :reviews, :note, :integer
  end
end
