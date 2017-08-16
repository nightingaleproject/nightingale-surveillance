class CreateSurveillanceResults < ActiveRecord::Migration[5.1]
  def change
    create_table :surveillance_results do |t|
      t.belongs_to :surveillance_request
      t.belongs_to :record
      t.string :fields
      t.string :terms
      t.timestamps
    end
  end
end
