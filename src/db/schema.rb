# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_06_26_140300) do

  create_table "labels", id: :string, limit: 36, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "color", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "project_id", limit: 36, null: false
    t.index ["project_id"], name: "index_labels_on_project_id"
  end

  create_table "projects", id: :string, limit: 36, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
  end

  create_table "ticket_groups", id: :string, limit: 36, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "order", null: false
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "project_id", limit: 36, null: false
    t.index ["project_id"], name: "index_ticket_groups_on_project_id"
  end

  create_table "tickets", id: :string, limit: 36, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "order", null: false
    t.string "title", null: false
    t.text "description"
    t.integer "priority"
    t.datetime "deadline"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "ticket_group_id", limit: 36, null: false
    t.string "label_id", limit: 36
    t.index ["label_id"], name: "index_tickets_on_label_id"
    t.index ["ticket_group_id"], name: "index_tickets_on_ticket_group_id"
  end

  add_foreign_key "labels", "projects"
  add_foreign_key "ticket_groups", "projects"
  add_foreign_key "tickets", "labels"
  add_foreign_key "tickets", "ticket_groups"
end
