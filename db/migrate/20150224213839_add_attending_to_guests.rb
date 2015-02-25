class AddAttendingToGuests < ActiveRecord::Migration
  def change
    add_column :guests, :attending, :string
  end
end
