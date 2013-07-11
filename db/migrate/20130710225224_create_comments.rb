class CreateComments < ActiveRecord::Migration
  def up
  end

  def down
  end

  def change
    create_table :comments do |t|
      t.text        :message
      t.references  :link
      t.references  :user
      
      t.timestamps
    end
  end
  
end
