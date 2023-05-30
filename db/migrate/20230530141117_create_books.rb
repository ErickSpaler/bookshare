class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :author_name
      t.string :description
      t.integer :published_year
      t.boolean :available, default: true
      t.string :genre

      t.timestamps
    end
  end
end
