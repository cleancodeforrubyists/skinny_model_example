class CompanySizeStandard
  def initialize(company)
    @company = company
  end

  def small?
    company.employees.count <= 500
  end

  private
  attr_reader :company
end
