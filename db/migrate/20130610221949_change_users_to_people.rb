class ChangeUsersToPeople < ActiveRecord::Migration
  def change
    rename_table :users, :people
  end
end
