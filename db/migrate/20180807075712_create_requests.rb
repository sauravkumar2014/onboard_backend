class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :type
      t.string :message
      t.integer :status
      t.integer :recruit_info_id

      t.timestamps
    end
    add_index "requests", ["recruit_info_id"], name: "index_requests_on_recruit_info_id"
  end
end
