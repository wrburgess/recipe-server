class StepTool < ActiveRecord::Base

  validates_presence_of :step_id, :tool_id
  
  belongs_to :step
  belongs_to :tool
end