class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :from
      t.string :to
      t.datetime :day
      t.integer :driver
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
