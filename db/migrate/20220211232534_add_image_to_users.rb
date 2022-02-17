class AddImageToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :image, :text
  end
end


#https://git.heroku.com/enigmatic-meadow-71832.git