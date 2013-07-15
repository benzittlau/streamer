class CreateWashrooms < ActiveRecord::Migration
  def change
    create_table :washrooms do |t|
      t.string :name

      t.timestamps
    end
  end
end
