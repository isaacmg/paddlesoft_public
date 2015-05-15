class CreatePossibles < ActiveRecord::Migration
  def change
    create_table :possibles do |t|
      t.string :name
      t.string :email
      t.string :ip_add
      t.boolean :receive

      t.timestamps
    end
  end
end
