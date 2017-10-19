class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string  :comment_body
      t.integer :user_id
      t.string  :commentable_type
      t.integer :commentable_id


      t.timestamps
    end
  end
end
