class ItemsTagsTable < ActiveRecord::Migration
    def change
      create_table :items_tags do |t|
        t.string :items
        t.string :tags
      end
    end
  end
