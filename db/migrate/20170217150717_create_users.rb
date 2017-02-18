class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name , {limit: 64, null:false }
      t.string :user_name, {limit: 64, null:false }
      t.string :hashed_password,{null:false }

      t.timestamps
    end
  end
end
