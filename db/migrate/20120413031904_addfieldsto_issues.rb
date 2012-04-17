class AddfieldstoIssues < ActiveRecord::Migration
  def change
      add_column :issues, :status, :string
      add_column :issues, :feeling, :string
  end
end
