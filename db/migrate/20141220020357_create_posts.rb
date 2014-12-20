class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :summary
      t.text :text

      t.timestamps null: false
    end
  end
end
