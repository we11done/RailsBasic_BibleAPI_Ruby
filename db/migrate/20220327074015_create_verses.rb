class CreateVerses < ActiveRecord::Migration[7.0]
  def change
    create_table :verses do |t|
      t.references :book, null: false, foreign_key: true
      t.integer :chapter
      t.text :text
      t.integer :verse

      t.timestamps
    end
  end
end
