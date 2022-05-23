class CreateNames < ActiveRecord::Migration[5.0]
  def change
    create_table :names do |t|
      t.string :image_url
      t.string :role
      t.string :location
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
