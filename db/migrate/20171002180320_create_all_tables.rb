class CreateAllTables < ActiveRecord::Migration[5.1]
  def change
    create_table(:days) do |t|
      t.column(:name, :string)
    end

    create_table(:roles) do |t|
      t.column(:name, :string)
    end

  
  end
end
