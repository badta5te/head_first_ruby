# frozen_string_literal: true
class Employee
  attr_reader :name

  def initialize(name = 'Anonymous')
    self.name = name
  end

  def name=(name)
    raise "name can't be blank!" if name == ''

    @name = name
  end

  def print_name
    puts "Name: #{name}"
  end
end

class SalariedEmployee < Employee
  attr_reader :salary

  def initialize(name = 'Anonymous', salary = 0.0)
    super(name)
    self.salary = salary
  end

  def salary=(salary)
    raise "A salary of #{salary} isn't valid!" if salary < 0

    @salary = salary
  end

  def print_pay_stub
    print_name
    pay_for_period = (@salary.to_f / 365) * 14
    formatted_pay = format('%.2f', pay_for_period)
    puts "Pay This Period: $#{formatted_pay}"
  end
end

class HourlyEmployee < Employee
  def self.security_guard(name)
    HourlyEmployee.new(name, 19.25, 30)
  end

  def self.cashier(name)
    HourlyEmployee.new(name, 12.75, 25)
  end

  def self.janitor(name)
    HourlyEmployee.new(name, 10.50, 20)
  end

  attr_reader :hourly_wage, :hours_per_week

  def initialize(name = 'Anonymous', hourly_wage = 0.0, hours_per_week = 0.0)
    super(name)
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
  end

  def hourly_wage=(hourly_wage)
    raise "A hourly wage #{hourly_wage} isn't valid" if hourly_wage < 0

    @hourly_wage = hourly_wage
  end

  def hours_per_week=(hours_per_week)
    raise "A hourly wage #{hours_per_week} isn't valid" if hours_per_week < 0

    @hours_per_week = hours_per_week
  end

  def print_pay_stub
    print_name
    pay_for_period = hourly_wage * hours_per_week * 2
    formatted_pay = format('$%.2f', pay_for_period)
    puts "Pay for this period: #{formatted_pay}"
  end
end

jane = SalariedEmployee.new('Jane', 50_000)
jane.print_pay_stub

angela = HourlyEmployee.security_guard('Angela')
ivan = HourlyEmployee.cashier('Ivan')
angela.print_pay_stub
ivan.print_pay_stub
