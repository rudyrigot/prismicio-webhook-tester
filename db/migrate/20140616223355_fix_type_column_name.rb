class FixTypeColumnName < ActiveRecord::Migration
  def change
    change_table :calls do |t|
      t.rename :type, :type_webhook
    end
  end
end
