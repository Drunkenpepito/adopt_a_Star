class RemoveTimeFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :time, :date
  end
end
