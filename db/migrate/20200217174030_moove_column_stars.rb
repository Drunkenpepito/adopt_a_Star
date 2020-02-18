class MooveColumnStars < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :star, foreign_key: true
  end
end
