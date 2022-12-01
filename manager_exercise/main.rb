module Reportable
  def send_report
    p "about to send the report"
    # some logic here
    p "definitely just sent that report"
  end
end

class Employee
  attr_reader :first_name, :last_name, :salary, :active, :middle_name
  attr_writer :first_name, :active
  # def first_name 
  #   @first_name
  # end
  
  def initialize(input_options)
    # input_options == {:first_name => "Majora", :last_name => "Carter", :salary => 80000, :active => true}
    @first_name = input_options[:first_name]
    @middle_name = input_options[:middle_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info    
    p "#{first_name} #{last_name} makes $#{salary} per year."
  end

  def give_annual_raise
    # @salary = @salary * 1.05
    @salary *= 1.05
  end
end

employee1 = Employee.new({:first_name => "Majora", :last_name => "Carter", :salary => 80000, :active => true})
employee1.print_info

employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 100000, active: false)
employee2.print_info

employee2.first_name=("Jason")
p employee2.first_name
employee2.print_info
employee2.give_annual_raise
employee2.print_info



#  a manager can do everything an employee can do, and can also send reports
# keep track of who each manager is managing


# inheritance

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


manager1 = Manager.new(
  first_name: "Manny", 
  last_name: "Williams", 
  salary: 200000, 
  active:true, 
  employees: [employee1, employee2]
)

manager1.print_info
manager1.give_annual_raise
manager1.print_info
manager1.send_report


p "here are the employees"
p "there were the employees"



p manager1.employees
manager1.fire_all_employees
p manager1.employees

# give all raises
    # make a method and call it, print something out
    # find all the employees
    # get one particular employee
    # give that person a raise
  # do that for all of them


# fire all employees


# intern can do everything an employee can do, and can also send reports


