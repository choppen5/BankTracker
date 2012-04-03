class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.integer :user_id
      t.integer :company_id
      t.string :story

      t.timestamps
    end
  end
end
