class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :fax
      t.string :program

      t.timestamps
    end
  end
end
