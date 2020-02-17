class AddColumnsToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :time, :date
    add_foreign_key :bookings, :users
    add_foreign_key :bookings, :stars
    add_column :bookings, :from, :date
    add_column :bookings, :to, :date
  end
end
