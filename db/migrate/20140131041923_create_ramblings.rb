class CreateRamblings < ActiveRecord::Migration
  def change
    create_table :ramblings do |t|
      t.string :description

      t.timestamps
    end
  end
end
