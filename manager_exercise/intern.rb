class Intern < Employee
  include Reportable
end

intern = Intern.new(first_name: "Ingrid", last_name: "Smith", salary: 0, active: true)

intern.print_info
intern.send_report