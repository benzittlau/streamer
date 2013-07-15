class CreateWashroomStates < ActiveRecord::Migration
  def change
    create_table :washroom_states do |t|
      t.string :state
      t.belongs_to :washroom

      t.timestamps
    end
  end
end
