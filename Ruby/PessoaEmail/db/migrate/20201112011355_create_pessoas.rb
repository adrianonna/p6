class CreatePessoas < ActiveRecord::Migration[6.0]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.date :data_nascimento

      t.timestamps
    end
  end
end
