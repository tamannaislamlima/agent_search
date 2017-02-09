class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name
      t.text :address
      t.string :phone
      t.string :mobile
      t.string :fax
      t.string :email
      t.string :license
      t.string :grading

      t.timestamps null: false
    end
  end
end
