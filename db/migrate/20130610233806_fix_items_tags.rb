class FixItemsTags < ActiveRecord::Migration
  def change
    rename_column :items_tags, :items, :items_id
    rename_column :items_tags, :tags, :tags_id
  end
end
