class AddColumnTimeToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :time, :integer
  end
end
