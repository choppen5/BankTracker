class AddTwitterHandlerToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :twitter_handler, :string
  end
end
