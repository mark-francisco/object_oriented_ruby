# Bonus: What happens when you define a method in the Employee and Manager class with the same name? Read more about method overriding here: http://rubylearning.com/satishtalim/ruby_overriding_methods.html. Then try to use super on a method other than initialize!

# Create a method in the Manager class called give_all_raises that loops through each of the manager’s employees and gives them a raise (using the give_annual_raise method). Demonstrate how it works.

# Create a method in the Manager class called fire_all_employees that loops through each of the manager’s employees and changes their active status to false.


class Employee
  attr_reader :first_name, :last_name, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year. Are they active? This is #{active}."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end


class Manager < Employee
  attr_accessor :employees

  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end

  def give_all_raises
    @employees.each{ |employee|
      employee.print_info
      employee.give_annual_raise
      puts "#{employee.first_name} got a raise!"
      employee.print_info
      puts "#######"
    }

  end

  def fire_all_employees
    # change all employees active status to false

    # can use '@employees.each do |x| end' instead of using '@employees.each{|x| }'
    @employees.each{ |employee|
      employee.print_info
      employee.active = false
      puts "#{employee.first_name} got fired!"
      employee.print_info
      puts "#######"
    }
  end
  
end




##############
employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
# employee1.print_info

employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
# employee2.print_info

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
# manager.print_info
# manager.send_report
p manager.employees
manager.give_all_raises
manager.fire_all_employees
p manager.employees


