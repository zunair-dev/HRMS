# Create some sample users
admin = User.find_or_create_by(email: 'admin@example.com') do |user|
  user.password = 'password'
  user.role = 'admin'
  puts "Created admin user: #{user.email}"
end

employee1 = User.find_or_create_by(email: 'employee1@example.com') do |user|
  user.password = 'password'
  user.role = 'employee'
  puts "Created employee user: #{user.email}"
end

employee2 = User.find_or_create_by(email: 'employee2@example.com') do |user|
  user.password = 'password'
  user.role = 'employee'
  puts "Created employee user: #{user.email}"
end

# Create departments
hr_department = Department.find_or_create_by(name: 'HR') do |department|
  department.description = 'Human Resources Department'
  puts "Created HR department: #{department.name}"
end

it_department = Department.find_or_create_by(name: 'IT') do |department|
  department.description = 'Information Technology Department'
  puts "Created IT department: #{department.name}"
end

finance_department = Department.find_or_create_by(name: 'Finance') do |department|
  department.description = 'Finance Department'
  puts "Created Finance department: #{department.name}"
end

# Create job positions
hr_manager = JobPosition.find_or_create_by(title: 'HR Manager') do |position|
  position.description = 'Managerial position in HR'
  puts "Created HR Manager job position: #{position.title}"
end

software_developer = JobPosition.find_or_create_by(title: 'Software Developer') do |position|
  position.description = 'Developer role in IT'
  puts "Created Software Developer job position: #{position.title}"
end

accountant = JobPosition.find_or_create_by(title: 'Accountant') do |position|
  position.description = 'Finance role'
  puts "Created Accountant job position: #{position.title}"
end

# Create employee records
john_doe = Employee.find_or_create_by(email: 'john.doe@example.com') do |employee|
  employee.first_name = 'John'
  employee.last_name = 'Doe'
  employee.phone_number = '123-456-7890'
  employee.hire_date = '2022-01-15'
  employee.department = hr_department
  employee.job_position = hr_manager
  employee.user_id = admin.id
  puts "Created employee: #{employee.first_name} #{employee.last_name}"
end

jane_smith = Employee.find_or_create_by(email: 'jane.smith@example.com') do |employee|
  employee.first_name = 'Jane'
  employee.last_name = 'Smith'
  employee.phone_number = '987-654-3210'
  employee.hire_date = '2023-03-20'
  employee.department = it_department
  employee.job_position = software_developer
  employee.user_id = employee1.id
  puts "Created employee: #{employee.first_name} #{employee.last_name}"
end

# Create salary records
Salary.find_or_create_by(employee: john_doe) do |salary|
  salary.amount = 60000
  salary.effective_date = '2022-01-15'
  salary.frequency = 'monthly'
  puts "Created salary record for #{john_doe.first_name} #{john_doe.last_name}"
end

Salary.find_or_create_by(employee: jane_smith) do |salary|
  salary.amount = 75000
  salary.effective_date = '2023-03-20'
  salary.frequency = 'monthly'
  puts "Created salary record for #{jane_smith.first_name} #{jane_smith.last_name}"
end

# Create leave records
Leave.find_or_create_by(employee: john_doe) do |leave|
  leave.start_date = '2023-06-01'
  leave.end_date = '2023-06-10'
  leave.leave_type = 'Vacation'
  leave.status = 'approved'
  puts "Created leave record for #{john_doe.first_name} #{john_doe.last_name}"
end

Leave.find_or_create_by(employee: jane_smith) do |leave|
  leave.start_date = '2023-07-15'
  leave.end_date = '2023-07-20'
  leave.leave_type = 'Sick Leave'
  leave.status = 'pending'
  puts "Created leave record for #{jane_smith.first_name} #{jane_smith.last_name}"
end

# Create attendance records
Attendance.find_or_create_by(employee: john_doe) do |attendance|
  attendance.check_in = '2023-08-01 09:00:00'
  attendance.check_out = '2023-08-01 17:00:00'
  attendance.date = '2023-08-01'
  puts "Created attendance record for #{john_doe.first_name} #{john_doe.last_name}"
end

Attendance.find_or_create_by(employee: jane_smith) do |attendance|
  attendance.check_in = '2023-08-02 09:15:00'
  attendance.check_out = '2023-08-02 16:45:00'
  attendance.date = '2023-08-02'
  puts "Created attendance record for #{jane_smith.first_name} #{jane_smith.last_name}"
end
