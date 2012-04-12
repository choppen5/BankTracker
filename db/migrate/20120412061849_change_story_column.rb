class ChangeStoryColumn < ActiveRecord::Migration
  def change
      change_column :issues, :story, :text
  end
end
