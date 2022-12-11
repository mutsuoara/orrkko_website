class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :date
      t.text :location
      t.string :phone_number
      t.string :email
      t.text :website

      t.timestamps
    end
  end
end
