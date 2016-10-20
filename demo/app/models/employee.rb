class Employee < ApplicationRecord
  has_many :work_times


  def self.searchuser(username,password)
    if username && password
      where("username='#{username}' and password='#{password}'")
    end
  end

end
