class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :password
      t.string :correo
      t.text :firma
      t.string :username
      t.integer :numeromiembro

      t.timestamps
    end
  end
end
