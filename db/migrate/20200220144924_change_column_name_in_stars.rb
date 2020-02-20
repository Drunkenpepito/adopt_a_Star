class ChangeColumnNameInStars < ActiveRecord::Migration[6.0]
  def change
    rename_column :stars, :sex, :gender
  end
end
