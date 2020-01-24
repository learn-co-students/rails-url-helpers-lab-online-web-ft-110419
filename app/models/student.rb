class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end
  
  def check_active
    if self.active
      "This student is currently active."
    else
      "This student is currently inactive."
    end
  end

  def change_active
    if self.active
      self.active = false 
    else 
      self.active = true
    end
  end
end