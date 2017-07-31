# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170729223943) do

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "panelist"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "themes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "cpf"
    t.string   "matriculation"
    t.boolean  "admin",                  default: false
    t.boolean  "pay",                    default: false
    t.integer  "theme_id"
    t.integer  "course_id",              default: 1
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "article"
    t.integer  "participation_id",       default: 1
    t.string   "author_one"
    t.string   "author_two"
    t.string   "author_three"
    t.boolean  "article_aproved"
    t.string   "article_title"
    t.string   "author_one_cpf"
    t.string   "author_two_cpf"
    t.string   "author_three_cpf"
    t.boolean  "teacher",                default: false
    t.string   "institution"
    t.string   "obs_article"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["participation_id"], name: "index_users_on_participation_id"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
