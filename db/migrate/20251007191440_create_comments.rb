class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true
      t.text :body, null: false
      t.integer :upvote, default: 0
      t.integer :downvote, default: 0

      t.timestamps
    end
  end
end
