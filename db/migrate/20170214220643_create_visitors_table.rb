class CreateVisitorsTable < ActiveRecord::Migration[5.0]
	def change
  	create_table :visitors do |table| 
  		table.string :email 
	  end
	end
end