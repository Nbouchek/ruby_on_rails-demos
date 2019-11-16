# frozen_string_literal: true

class CreateSubjects < ActiveRecord::Migration[5.1]
  def up
    create_table :subjects do |t|
      t.string 'name'
      t.string 'position'
      t.string 'visible', default: false
      t.string 'name'
      t.timestamps
    end
  end

  def down
    drop_table :subjects
  end
end
