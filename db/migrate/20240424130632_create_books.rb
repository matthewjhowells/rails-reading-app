class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :pages
      t.integer :minutes
      t.boolean :audiobook
      t.string :status

      t.timestamps
    end
  end
end
