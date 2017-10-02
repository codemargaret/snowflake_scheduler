class CreateAllTablesPart2 < ActiveRecord::Migration[5.1]
  def change
    create_table(:members) do |t|
      t.column(:name, :string)
      t.column(:role_id, :int)
    end

    create_table(:member_availabilities) do |t|
      t.column(:day_id, :int)
      t.column(:member_id, :int)
    end

  end
end
