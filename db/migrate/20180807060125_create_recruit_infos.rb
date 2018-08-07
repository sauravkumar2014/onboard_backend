class CreateRecruitInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :recruit_infos do |t|
      #t.belongs_to :user, index: { unique: true }, foreign_key: true
      t.string :college
      t.string :loc_pref
      t.string :board_loc
      t.date :doj
      t.date :dob
      t.string :uan
      t.string :aadhar
      t.string :pan
      t.string :bank_name
      t.string :bank_ac
      t.string :ifsc
      t.integer :user_id
      #t.string :passport
      #t.string :ac_no

      t.timestamps
    end
    add_index "recruit_infos", ["user_id"], name: "index_recruit_infos_on_user_id"
  end
end
#TODO: passport,ac_no