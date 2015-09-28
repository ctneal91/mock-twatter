class CreateCheets < ActiveRecord::Migration
  def change
    create_table :cheets do |t|
      t.string :entry

      t.timestamps null: false
    end
  end
end
