 class FixItemsTagsAgain < ActiveRecord::Migration
  def change
      rename_column :items_tags, :items_id, :item_id
      rename_column :items_tags, :tags_id, :tag_id
    end
end
