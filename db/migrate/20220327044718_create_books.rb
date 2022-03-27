class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.references :testament, null: false, foreign_key: true
      t.string :name
      t.integer :verses_count
      t.integer :chapter_count

      t.timestamps
    end
  end
end
