class CreateSurveillanceRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :surveillance_requests do |t|
      t.string :name
      t.string :fields
      t.string :terms
      t.timestamps
    end
  end
end
