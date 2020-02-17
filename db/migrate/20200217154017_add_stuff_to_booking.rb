class AddStuffToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :time, :date
    add_column :bookings, :user_id, :integer
    add_column :bookings, :star_id, :integer
    add_column :bookings, :from, :date
    add_column :bookings, :to, :date
  end
end
