class CreateUsers < ActiveRecord::Migration[5.1]
  def up
    create_table :users do |t|
      t.column "first_name", :string
      # the following is another way of creating a column of type string
      t.string"last_name"
      
      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
