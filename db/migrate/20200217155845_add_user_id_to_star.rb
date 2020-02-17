class AddUserIdToStar < ActiveRecord::Migration[6.0]
  def change
    add_reference :stars, :user, foreign_key: true
  end
end
