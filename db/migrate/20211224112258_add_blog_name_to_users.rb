class AddBlogNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :blog_name, :string, unique: true
  end
end
