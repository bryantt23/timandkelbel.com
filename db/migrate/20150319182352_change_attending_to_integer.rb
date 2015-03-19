class ChangeAttendingToInteger < ActiveRecord::Migration
  def change
    change_column :guests, :attending, 'integer USING CAST(attending AS integer)'
  end
end
