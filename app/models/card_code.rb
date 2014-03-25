class CardCode < ActiveRecord::Base
    before_save :set_code
  def set_code
    self.code ||= code_gen
  end

  def code_gen
    code = ""  
    8.times do |i|
      code[i] = rand(10).to_s
    end
    if CardCode.exists?(:code => code)
      code_gen
    end
    return code
  end
end


