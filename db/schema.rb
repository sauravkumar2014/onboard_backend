# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180807075712) do

  create_table "documents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "cancelled_cheque"
    t.string   "pan"
    t.string   "aadhar"
    t.string   "passport"
    t.string   "marksheet"
    t.string   "exp_cert"
    t.string   "pic"
    t.integer  "recruit_info_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["recruit_info_id"], name: "index_users_on_recruit_info_id", using: :btree
  end

  create_table "jwt_blacklists", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "jti", null: false
    t.index ["jti"], name: "index_jwt_blacklists_on_jti", using: :btree
  end

  create_table "recruit_infos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "college"
    t.string   "loc_pref"
    t.string   "board_loc"
    t.date     "doj"
    t.date     "dob"
    t.string   "uan"
    t.string   "aadhar"
    t.string   "pan"
    t.string   "bank_name"
    t.string   "bank_ac"
    t.string   "ifsc"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_recruit_infos_on_user_id", using: :btree
  end

  create_table "requests", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "type"
    t.string   "message"
    t.integer  "status"
    t.integer  "recruit_info_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["recruit_info_id"], name: "index_requests_on_recruit_info_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "",        null: false
    t.string   "encrypted_password",     default: "",        null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,         null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "role",                   default: "recruit", null: false
    t.string   "contact_no"
    t.string   "address"
    t.string   "gender"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end