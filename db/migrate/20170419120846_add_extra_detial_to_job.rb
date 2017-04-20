class AddExtraDetialToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :companyname, :string
    add_column :jobs, :location, :string
  end
end
