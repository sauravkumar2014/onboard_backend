class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      #t.belongs_to :recruit_info, index: { unique: true }, foreign_key: true
      t.string :cancelled_cheque
      t.string :pan
      t.string :aadhar
      t.string :passport
      t.string :marksheet
      t.string :exp_cert
      t.string :pic
      t.integer :recruit_info_id

      t.timestamps
    end
    add_index "documents", ["recruit_info_id"], name: "index_documents_on_recruit_info_id"
  end
end
