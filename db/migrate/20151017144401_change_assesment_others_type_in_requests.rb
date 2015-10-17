class ChangeAssesmentOthersTypeInRequests < ActiveRecord::Migration
  def change
  	change_column :requests, :assessment_others, :string
  end
end
