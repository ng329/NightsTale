class ChangeDateInBookings < ActiveRecord::Migration[7.0]
  def change
    change_table :bookings do |t|
      t.change :date, :datetime
    end
  end
end
