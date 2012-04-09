class AddMinutesToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :minutes, :integer
  end
end
