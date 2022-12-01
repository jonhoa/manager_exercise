class Manager < Employee
  include Reportable
  
  attr_reader :employees

  def initialize(input_options)    
    super
    @employees = input_options[:employees]
  end

  def give_all_raises
    p "giving everyone a raise"
    # i = 0
    # while i < @employees.length
    #   @employees[i].give_annual_raise
    #   i += 1
    # end 

    @employees.each do |employee|
      employee.give_annual_raise
    end
    # p @employees[0].give_annual_raise
    # p @employees[1].give_annual_raise
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active = false
    end
  end
end
