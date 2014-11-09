class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.references :usuario, index: true
      t.references :tema, index: true
      t.text :comentario
      t.date :fecha
      t.integer :like

      t.timestamps
    end
  end
end
