class Company < ActiveRecord::Base
  has_many :employees

  def small_business?
    employees.count <= 500
  end
end
