class Employee

  attr_reader :name, :salary, :title, :boss, :employees

  def initialize(name, salary, title, boss = nil)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
    @employees = []
    boss.employees << self if !boss.nil?
  end

  def all_sub_employees
    return [] if self.employees.empty?
    sub_employees = []
    employees.each do |employee|
      sub_employees += [employee] + employee.all_sub_employees
    end
    return sub_employees
  end

  def bonus(multiplier)
    self.salary * multiplier
  end

end

class Manager < Employee

  def initialize(name, salary, title, boss = nil)
    super
  end

  def bonus(multiplier)
    total_salaries = 0
    self.all_sub_employees.each do |employee|
      total_salaries += employee.salary
    end
    return total_salaries * multiplier
  end

end

Ned = Manager.new("Ned", 1000000, "Founder")
Darren = Manager.new("Darren", 78000, "TA Manager", Ned)
David = Employee.new("David", 10000, "TA", Darren)
Shawna = Employee.new("Shawna", 12000, "TA", Darren)