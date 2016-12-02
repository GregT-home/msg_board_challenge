class CreatePostings < ActiveRecord::Migration[5.0]
  def change
    create_table :postings do |t|
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :postings, [:user_id, :created_at]  # combined to help natural sort
  end
end
