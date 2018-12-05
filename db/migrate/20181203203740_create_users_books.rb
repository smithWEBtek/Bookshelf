class CreateUsersBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_books do |t|
      t.integer :user_id
      t.integer :book_id
      t.boolean :finished

      t.timestamps
    end
  end
end