class CreateAllTablesPart3 < ActiveRecord::Migration[5.1]
  def change
    create_table(:meetups) do |t|
      t.column(:generic, :string)
    end

    create_table(:groups) do |t|
      t.column(:name, :string)
      t.column(:meetup_id, :int)
    end

    create_table(:relationships) do |t|
      t.column(:member_id, :int)
      t.column(:group_id, :int)
    end
  end
end
