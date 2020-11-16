class AddDatesToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :starting_time, :datetime
    add_column :bookings, :ending_time, :datetime
  end
end
