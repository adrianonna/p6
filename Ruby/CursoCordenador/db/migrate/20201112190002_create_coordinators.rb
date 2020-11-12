class CreateCoordinators < ActiveRecord::Migration[6.0]
  def change
    create_table :coordinators do |t|
      t.string :nome
      t.string :matricula
      t.string :senha
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
