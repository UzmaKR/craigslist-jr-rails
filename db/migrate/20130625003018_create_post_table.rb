class CreatePostTable < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text    :body
      t.string  :key
      t.references :category

      t.timestamps
    end
  end


end
