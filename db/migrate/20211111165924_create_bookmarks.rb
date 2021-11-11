class CreateBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks do |t|
      t.string :comment
      t.integer :movid_id
      t.integer :list_id

      t.timestamps
    end
  end
end
