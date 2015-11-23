class LimitCharactersOnCheetEntries < ActiveRecord::Migration
  def change
    remove_column :cheets, :entry, :string
    add_column :cheets, :entry, :string, :limit => 140
  end
end
