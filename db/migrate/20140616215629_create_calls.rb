class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.datetime :date
      t.string :type
      t.string :domain
      t.string :apiURL
      t.string :secret

      t.timestamps
    end
  end
end
