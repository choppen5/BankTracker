class AddCompanyIdToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :company_id, :integer
  end
end
