class DropMemberAvailabilitiesAndAddMemberAvails < ActiveRecord::Migration[5.1]
  def change
    drop_table(:member_availabilities)

    create_table(:member_avails) do |t|
      t.column(:day_id, :int)
      t.column(:member_id, :int)
    end
  end
end
