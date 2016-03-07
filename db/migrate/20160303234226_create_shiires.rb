class CreateShiires < ActiveRecord::Migration
  def change
    create_table :shiires do |t|
      t.string :kai_code
      t.string :sir_code
      t.string :sir_name

      t.timestamps null: false
    end
  end
end
