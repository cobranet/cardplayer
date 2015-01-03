class CreateCardtables < ActiveRecord::Migration
  def change
    create_table :cardtables do |t|
      t.text :json_table
      t.timestamps
    end
  end
end
