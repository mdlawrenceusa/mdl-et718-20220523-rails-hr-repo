class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :start_date
      t.string :end_date
      t.text :description
      t.references :resume, foreign_key: true

      t.timestamps
    end
  end
end
