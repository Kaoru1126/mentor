class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
      t.string     :schoolName,         null: false
      t.string     :place,              null: false
      t.timestamps
    end
  end
end
