class CreateClients < ActiveRecord::Migration
  def change
    create_table(:clients) do |t|

	t.timestamps
      	t.string :nom,              :null => false, :default => ""
	t.string :sirene           
	t.string :code_naf              
	t.string :adresse              
	t.string :code_postal              
	t.string :ville              
	t.string :forme_juridique              
	t.string :capital              
	t.string :mandataire_social              
	t.datetime :date_immatriculation              
	
    end
  end
end
