class CreateFriendBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :friend_bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
