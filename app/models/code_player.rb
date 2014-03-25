class CodePlayer < ActiveRecord::Base
  validates_uniqueness_of :code_id, :scope => :player_id, message: "This code was already used by you!"
end
