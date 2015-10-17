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

ActiveRecord::Schema.define(version: 20151017144401) do

  create_table "requests", force: :cascade do |t|
    t.integer  "service_number"
    t.boolean  "severity_critical"
    t.boolean  "severity_major"
    t.boolean  "severity_minor"
    t.string   "service_title"
    t.string   "reported_by"
    t.date     "date_reported"
    t.string   "dept_unit_section"
    t.integer  "contact_number",                      limit: 8
    t.string   "affected_modules"
    t.boolean  "request_type_software_defect"
    t.boolean  "request_type_configuration"
    t.boolean  "request_type_data_fix"
    t.boolean  "request_type_desktop_problem"
    t.boolean  "request_type_preventive_maintenance"
    t.boolean  "request_type_program_enhancement"
    t.boolean  "request_type_report_request"
    t.boolean  "request_type_new_system"
    t.string   "request_type_others"
    t.text     "request_details"
    t.boolean  "attachments"
    t.string   "request_reported_by"
    t.date     "request_reported_by_date"
    t.string   "request_endorsed_by"
    t.date     "request_endorsed_by_date"
    t.string   "request_approved_by"
    t.date     "request_approved_by_date"
    t.text     "findings"
    t.boolean  "assessment_software_defect"
    t.boolean  "assessment_configuration"
    t.boolean  "assessment_enhancement"
    t.boolean  "assessment_data"
    t.boolean  "assessment_business_process"
    t.string   "assessment_others"
    t.string   "assessed_by"
    t.date     "assessment_date"
    t.text     "recommendations"
    t.string   "recommendation_endorsed_by"
    t.date     "recommendation_date"
    t.boolean  "results_attachments_test_scenarios"
    t.boolean  "results_attachments_test_results"
    t.boolean  "results_attachments_sample_output"
    t.string   "tested_by"
    t.date     "tested_by_date"
    t.boolean  "conclusion_accepted"
    t.boolean  "conclusion_rejected"
    t.text     "conclusion_reason"
    t.string   "conclusion_by"
    t.date     "conclusion_by_date"
    t.date     "deadline"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

end
