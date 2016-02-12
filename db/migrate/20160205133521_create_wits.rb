class CreateWits < ActiveRecord::Migration
  def change
    create_table :wits do |t|
      t.string :content
      t.integer :favorites
      t.boolean :marked_as_deleted
      t.timestamps null: false
    end
  end
end
