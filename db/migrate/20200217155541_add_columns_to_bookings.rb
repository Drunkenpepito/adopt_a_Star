class AddColumnsToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :time, :date
    add_reference :bookings, :user, foreign_key: true
    add_reference :bookings, :star, foreign_key: true
    add_column :bookings, :from, :date
    add_column :bookings, :to, :date
  end
end
