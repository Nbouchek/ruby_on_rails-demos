# frozen_string_literal: true

class CreateSections < ActiveRecord::Migration[5.1]
  def up
    create_table :sections do |t|
      t.integer 'page_id'
      t.string 'name'
      t.integer 'position'
      t.boolean 'visible', default: false
      t.string 'content_type'
      t.text 'content'

      t.timestamps
    end
    # each foeign key has an index
    # indexes makes search faster
    add_index('sections', 'page_id')
  end

  def down
    drop_table :sections
  end
end
