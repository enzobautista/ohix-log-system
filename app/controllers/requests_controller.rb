class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  # GET /requests
  # GET /requests.json
  def index
    @requests = Request.all
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
  end

  # GET /requests/new
  def new
    @request = Request.new
  end

  # GET /requests/1/edit
  def edit
  end

  # POST /requests
  # POST /requests.json
  def create
    @request = Request.new(request_params)

    respond_to do |format|
      if @request.save
        format.html { redirect_to @request, notice: 'Request was successfully created.' }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url, notice: 'Request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:service_number, :severity_critical, :severity_major, :severity_minor, :service_title, :reported_by, :date_reported, :dept_unit_section, :contact_number, :affected_modules, :request_type_software_defect, :request_type_configuration, :request_type_data_fix, :request_type_desktop_problem, :request_type_preventive_maintenance, :request_type_program_enhancement, :request_type_report_request, :request_type_new_system, :request_type_new_system, :request_type_others, :request_details, :attachments, :request_reported_by, :request_reported_by_date, :request_endorsed_by, :request_endorsed_by_date, :request_approved_by, :request_approved_by_date, :findings, :assessment_software_defect, :assessment_configuration, :assessment_enhancement, :assessment_data, :assessment_business_process, :assessment_others, :assessed_by, :assessment_date, :recommendations, :recommendation_endorsed_by, :recommendation_date, :results_attachments_test_scenarios, :results_attachments_test_results, :results_attachments_sample_output, :tested_by, :tested_by_date, :conclusion_accepted, :conclusion_rejected, :conclusion_reason, :conclusion_by, :conclusion_by_date, :deadline)
    end
end
