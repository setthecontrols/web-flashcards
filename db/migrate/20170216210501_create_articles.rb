class CreateArticles < ActiveRecord::Migration
  def change
  	create_table :articles do |t|
  		t.string :title, null: false
  		t.string :description, null: false
  		t.float :price, null: false
  		t.string :email, null: false
  		t.integer :category_id

  		t.timestamps
  	end

  end
end
