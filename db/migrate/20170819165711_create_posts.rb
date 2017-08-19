class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
    	t.string :name
    	t.text :contact
    	t.text :denouncement
    	t.string :kind

    	t.timestamp
    end
  end
end
