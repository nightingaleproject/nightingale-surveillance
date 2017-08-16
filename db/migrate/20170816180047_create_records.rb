class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.json :data
      t.timestamps
    end
  end
end
