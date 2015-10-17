class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :service_number
      t.boolean :severity_critical
      t.boolean :severity_major
      t.boolean :severity_minor
      t.string :service_title
      t.string :reported_by
      t.date :date_reported
      t.string :dept_unit_section
      t.float :contact_number
      t.string :affected_modules
      t.boolean :request_type_software_defect
      t.boolean :request_type_configuration
      t.boolean :request_type_data_fix
      t.boolean :request_type_desktop_problem
      t.boolean :request_type_preventive_maintenance
      t.boolean :request_type_program_enhancement
      t.boolean :request_type_report_request
      t.boolean :request_type_new_system
      t.boolean :request_type_new_system
      t.string :request_type_others
      t.text :request_details
      t.boolean :attachments
      t.string :request_reported_by
      t.date :request_reported_by_date
      t.string :request_endorsed_by
      t.date :request_endorsed_by_date
      t.string :request_approved_by
      t.date :request_approved_by_date
      t.text :findings
      t.boolean :assessment_software_defect
      t.boolean :assessment_configuration
      t.boolean :assessment_enhancement
      t.boolean :assessment_data
      t.boolean :assessment_business_process
      t.boolean :assessment_others
      t.string :assessed_by
      t.date :assessment_date
      t.text :recommendations
      t.string :recommendation_endorsed_by
      t.date :recommendation_date
      t.boolean :results_attachments_test_scenarios
      t.boolean :results_attachments_test_results
      t.boolean :results_attachments_sample_output
      t.string :tested_by
      t.date :tested_by_date
      t.boolean :conclusion_accepted
      t.boolean :conclusion_rejected
      t.text :conclusion_reason
      t.string :conclusion_by
      t.date :conclusion_by_date
      t.date :deadline

      t.timestamps null: false
    end
  end
end
