class CreateAprendizs < ActiveRecord::Migration[7.1]
  def change
    create_table :aprendizs do |t|
      t.string :documento
      t.string :nombres
      t.string :apellidos
      t.string :correo
      t.date :fecha_nacimiento
      t.boolean :estado

      t.timestamps
    end
  end
end
