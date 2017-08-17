class CreateSurveillanceResults < ActiveRecord::Migration[5.1]
  def change
    create_table :surveillance_results do |t|
      t.belongs_to :surveillance_request
      t.belongs_to :record
      t.string :field
      t.string :term
      t.timestamps
    end
  end
end
