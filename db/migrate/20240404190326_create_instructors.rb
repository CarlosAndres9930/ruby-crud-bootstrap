class CreateInstructors < ActiveRecord::Migration[7.1]
  def change
    create_table :instructors do |t|
      t.string :documento
      t.string :nombres
      t.string :apellidos
      t.string :correo
      t.boolean :estado
      t.date :fecha_nacimiento
      t.string :competencia

      t.timestamps
    end
  end
end
