class CreateUsers < ActiveRecord::Migration[5.1]
  def up
    create_table :users, :id => false do |t|
      t.column "first_name", :string, :limit => 25
      # the following is another way of creating a column of type string
      t.string "last_name", :limit => 50
      t.string "email", :default => '', :null => false
      t.string "password", :limit => 40

      # t.datetime "created_at"
      # t.datetime "updated_at"

      # this is a shorthand for "created_at" and "updated_at"
      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
