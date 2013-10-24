class Task < ActiveRecord::Base
  attr_accessible :description, :task_status, :list_id
  validates_presence_of :description, :task_status, :list_id

  belongs_to :list

end
