class CreateEmails < ActiveRecord::Migration[6.0]
  def change
    create_table :emails do |t|
      t.string :endereco, null: false, unique: true
      t.references :pessoa, null: false, foreign_key: true

      t.timestamps
    end
  end
end
