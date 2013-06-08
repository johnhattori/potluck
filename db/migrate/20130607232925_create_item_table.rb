class CreateItemTable < ActiveRecord::Migration
    def change
      create_table :items do |t|
        t.string :name
        t.string :person_id
        t.string :potluck_id
      end
    end
  end