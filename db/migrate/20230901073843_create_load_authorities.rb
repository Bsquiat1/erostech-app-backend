class CreateLoadAuthorities < ActiveRecord::Migration[7.0]
  def change
    create_table :load_authorities do |t|
      t.string :authority_number
      t.date :date
      t.references :customer, null: false, foreign_key: true
      t.references :loading_depot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
