class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :author_name
      t.references :category, index: true
      t.timestamps
    end
  end
end
