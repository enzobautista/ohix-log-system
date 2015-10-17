require 'test_helper'

class RequestsControllerTest < ActionController::TestCase
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request" do
    assert_difference('Request.count') do
      post :create, request: { affected_modules: @request.affected_modules, assessed_by: @request.assessed_by, assessment_business_process: @request.assessment_business_process, assessment_configuration: @request.assessment_configuration, assessment_data: @request.assessment_data, assessment_date: @request.assessment_date, assessment_enhancement: @request.assessment_enhancement, assessment_others: @request.assessment_others, assessment_software_defect: @request.assessment_software_defect, attachments: @request.attachments, conclusion_accepted: @request.conclusion_accepted, conclusion_by: @request.conclusion_by, conclusion_by_date: @request.conclusion_by_date, conclusion_reason: @request.conclusion_reason, conclusion_rejected: @request.conclusion_rejected, contact_number: @request.contact_number, date_reported: @request.date_reported, deadline: @request.deadline, dept_unit_section: @request.dept_unit_section, findings: @request.findings, recommendation_date: @request.recommendation_date, recommendation_endorsed_by: @request.recommendation_endorsed_by, recommendations: @request.recommendations, reported_by: @request.reported_by, request_approved_by: @request.request_approved_by, request_approved_by_date: @request.request_approved_by_date, request_details: @request.request_details, request_endorsed_by: @request.request_endorsed_by, request_endorsed_by_date: @request.request_endorsed_by_date, request_reported_by: @request.request_reported_by, request_reported_by_date: @request.request_reported_by_date, request_type_configuration: @request.request_type_configuration, request_type_data_fix: @request.request_type_data_fix, request_type_desktop_problem: @request.request_type_desktop_problem, request_type_new_system: @request.request_type_new_system, request_type_new_system: @request.request_type_new_system, request_type_others: @request.request_type_others, request_type_preventive_maintenance: @request.request_type_preventive_maintenance, request_type_program_enhancement: @request.request_type_program_enhancement, request_type_report_request: @request.request_type_report_request, request_type_software_defect: @request.request_type_software_defect, results_attachments_sample_output: @request.results_attachments_sample_output, results_attachments_test_results: @request.results_attachments_test_results, results_attachments_test_scenarios: @request.results_attachments_test_scenarios, service_number: @request.service_number, service_title: @request.service_title, severity_critical: @request.severity_critical, severity_major: @request.severity_major, severity_minor: @request.severity_minor, tested_by: @request.tested_by, tested_by_date: @request.tested_by_date }
    end

    assert_redirected_to request_path(assigns(:request))
  end

  test "should show request" do
    get :show, id: @request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @request
    assert_response :success
  end

  test "should update request" do
    patch :update, id: @request, request: { affected_modules: @request.affected_modules, assessed_by: @request.assessed_by, assessment_business_process: @request.assessment_business_process, assessment_configuration: @request.assessment_configuration, assessment_data: @request.assessment_data, assessment_date: @request.assessment_date, assessment_enhancement: @request.assessment_enhancement, assessment_others: @request.assessment_others, assessment_software_defect: @request.assessment_software_defect, attachments: @request.attachments, conclusion_accepted: @request.conclusion_accepted, conclusion_by: @request.conclusion_by, conclusion_by_date: @request.conclusion_by_date, conclusion_reason: @request.conclusion_reason, conclusion_rejected: @request.conclusion_rejected, contact_number: @request.contact_number, date_reported: @request.date_reported, deadline: @request.deadline, dept_unit_section: @request.dept_unit_section, findings: @request.findings, recommendation_date: @request.recommendation_date, recommendation_endorsed_by: @request.recommendation_endorsed_by, recommendations: @request.recommendations, reported_by: @request.reported_by, request_approved_by: @request.request_approved_by, request_approved_by_date: @request.request_approved_by_date, request_details: @request.request_details, request_endorsed_by: @request.request_endorsed_by, request_endorsed_by_date: @request.request_endorsed_by_date, request_reported_by: @request.request_reported_by, request_reported_by_date: @request.request_reported_by_date, request_type_configuration: @request.request_type_configuration, request_type_data_fix: @request.request_type_data_fix, request_type_desktop_problem: @request.request_type_desktop_problem, request_type_new_system: @request.request_type_new_system, request_type_new_system: @request.request_type_new_system, request_type_others: @request.request_type_others, request_type_preventive_maintenance: @request.request_type_preventive_maintenance, request_type_program_enhancement: @request.request_type_program_enhancement, request_type_report_request: @request.request_type_report_request, request_type_software_defect: @request.request_type_software_defect, results_attachments_sample_output: @request.results_attachments_sample_output, results_attachments_test_results: @request.results_attachments_test_results, results_attachments_test_scenarios: @request.results_attachments_test_scenarios, service_number: @request.service_number, service_title: @request.service_title, severity_critical: @request.severity_critical, severity_major: @request.severity_major, severity_minor: @request.severity_minor, tested_by: @request.tested_by, tested_by_date: @request.tested_by_date }
    assert_redirected_to request_path(assigns(:request))
  end

  test "should destroy request" do
    assert_difference('Request.count', -1) do
      delete :destroy, id: @request
    end

    assert_redirected_to requests_path
  end
end
