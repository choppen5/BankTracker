class AddfieldstoIssues < ActiveRecord::Migration
  def change
      add_column :Issues, :status, :string
      add_column :Issues, :feeling, :string
  end


end
