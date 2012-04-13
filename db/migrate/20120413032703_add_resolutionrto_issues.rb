class AddResolutionrtoIssues < ActiveRecord::Migration
  def change
      add_column :issues, :resolution, :text
  end
end
