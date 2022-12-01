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