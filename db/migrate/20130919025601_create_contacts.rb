class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :nom
      t.string :prenom
      t.string :adresse
      t.string :datenaissance
      t.string :type
      t.string :telephonefixe
      t.string :telephoneportable
      t.string :numerosecu
      t.references :client, index: true

      t.timestamps
    end
  end
end
