class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :name
      t.string :email
      t.string :ip_add
      t.string :github_user
      t.text :skills
      t.boolean :nd

      t.timestamps
    end
  end
end
