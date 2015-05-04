class RenameEndToFinish < ActiveRecord::Migration
  def change
      change_table :events do |t|
        t.rename :end, :finish
      end
  end
end
