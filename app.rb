create_table(:members) do |t|
  t.column(:name, :string)
  t.column(:role_id, :int)
end

create_table(:member_availabilities) do |t|
  t.column(:day_id, :int)
  t.column(:member_id, :int)
end

create_table(:meetups) do |t|
  t.column(:generic, :string)
end

create_table(:groups) do |t|
  t.column(:name, :string)
  t.column(:meetup_id)
end

create_table(:relationships) do |t|
  t.column(:member_id, :int)
  t.column(:group_id, :int)
end
