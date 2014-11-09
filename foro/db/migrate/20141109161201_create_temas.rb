class CreateTemas < ActiveRecord::Migration
  def change
    create_table :temas do |t|
      t.references :usuario, index: true
      t.string :titulo
      t.text :resena
      t.references :tag, index: true
      t.integer :like

      t.timestamps
    end
  end
end
