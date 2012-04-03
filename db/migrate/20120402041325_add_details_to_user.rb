class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :company_id, :integer
    add_column :users, :story, :text
  end
end
