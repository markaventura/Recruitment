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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120730042147) do

  create_table "additionalinformations", :force => true do |t|
    t.string   "user_id"
    t.string   "website1"
    t.string   "website2"
    t.string   "website3"
    t.string   "interest",             :limit => 1000
    t.string   "groupandassociations", :limit => 1000
    t.string   "honorsandawards",      :limit => 1000
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  create_table "authentications", :force => true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "basicinfos", :force => true do |t|
    t.string   "country"
    t.string   "currentposition"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "user_id"
    t.string   "phonenumber"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "birthdatem"
    t.string   "birthdated"
    t.string   "birthdatey"
    t.string   "maritalstatus"
    t.string   "middlename"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "citizenship",        :limit => 225
    t.string   "languages",          :limit => 1000
    t.string   "industry",           :limit => 225
  end

  create_table "characters", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.float    "longitude"
    t.boolean  "gmaps"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "educations", :force => true do |t|
    t.string   "user_id"
    t.string   "schoolname"
    t.string   "degree"
    t.string   "fieldofstudy"
    t.string   "datesattendedfrom"
    t.string   "datesattendedto"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "activitiesandsocieties", :limit => 1000
    t.string   "additionalnotes",        :limit => 1000
    t.string   "country",                :limit => 225
    t.string   "location",               :limit => 225
  end

  create_table "employees", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.text     "usertype"
  end

  add_index "employees", ["email"], :name => "index_employees_on_email", :unique => true
  add_index "employees", ["reset_password_token"], :name => "index_employees_on_reset_password_token", :unique => true

  create_table "empprofiles", :force => true do |t|
    t.string   "account"
    t.string   "activitiesandsocieties",         :limit => 1000
    t.string   "address"
    t.string   "birthday"
    t.string   "companyname"
    t.string   "currentposition"
    t.string   "datesattended"
    t.string   "degree"
    t.string   "description",                    :limit => 1000
    t.string   "email"
    t.string   "fieldofstudy"
    t.string   "firstname"
    t.string   "groupandassociations"
    t.string   "honorsandawrds"
    t.string   "interest"
    t.string   "lastname"
    t.string   "location"
    t.string   "maritalstatus"
    t.string   "phonenumber"
    t.string   "professionalexperienceandgoals"
    t.string   "schoolname"
    t.string   "skillsandexpertise"
    t.string   "title"
    t.string   "websites"
    t.string   "city"
    t.string   "country"
    t.string   "middlename"
    t.string   "position"
    t.string   "timeperiodfrom"
    t.string   "timeperiodto"
    t.string   "timeperiodfromyear"
    t.string   "timeperiodtoyear"
    t.string   "dateattendedfrom"
    t.string   "dateattendedto"
    t.string   "additionalnotes"
    t.string   "website1"
    t.string   "website2"
    t.string   "website3"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.string   "state",                          :limit => 225
    t.string   "photo",                          :limit => 225
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "experiences", :force => true do |t|
    t.string   "title"
    t.string   "user_id"
    t.string   "location"
    t.string   "timeperiodfrom"
    t.string   "timeperiodfromyear"
    t.string   "timeperiodto"
    t.string   "timeperiodtoyear"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "companyname",        :limit => 225
    t.string   "description",        :limit => 1000
  end

  create_table "homes", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "humanresources", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "humanresources", ["email"], :name => "index_humanresources_on_email", :unique => true
  add_index "humanresources", ["reset_password_token"], :name => "index_humanresources_on_reset_password_token", :unique => true

  create_table "inboxes", :force => true do |t|
    t.string   "subject"
    t.string   "companyname"
    t.string   "location"
    t.string   "message",     :limit => 1000
    t.string   "user_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.string   "telephone",   :limit => 225
    t.string   "fax",         :limit => 225
    t.string   "mobile",      :limit => 225
    t.string   "email",       :limit => 225
  end

  create_table "othereducations", :force => true do |t|
    t.string   "user_id"
    t.string   "schoolname"
    t.string   "course"
    t.string   "dateattendedfrom"
    t.string   "dateattendedto"
    t.string   "monthfrom"
    t.string   "monthto"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "skills", :force => true do |t|
    t.string   "user_id"
    t.string   "skillsandexpertise", :limit => 1000
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  create_table "skillsandexpertises", :force => true do |t|
    t.string   "user_id"
    t.string   "skillsandexperties", :limit => 1000
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  create_table "summaries", :force => true do |t|
    t.string   "professional", :limit => 1000
    t.string   "user_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "templates", :force => true do |t|
    t.string   "basicinfo"
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.string   "personal"
    t.string   "citizenship"
    t.string   "email"
    t.string   "birthdate"
    t.string   "languages"
    t.string   "education"
    t.string   "degree"
    t.string   "school"
    t.string   "schoollocation"
    t.string   "country"
    t.string   "position"
    t.string   "title"
    t.string   "companyname"
    t.string   "description"
    t.string   "skill"
    t.string   "careersummary"
    t.string   "training"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
