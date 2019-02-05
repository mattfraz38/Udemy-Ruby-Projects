class Student
  attr_accessor :first_name, :last_name, :email, :username, :password
  # attr_reader :username

  def Initialize(firstName, lastName, userName, email, password)
    @first_name = firstName
    @last_name = lastName
    @email = email
    @username = userName
    @password = password
  end
# the below methods unnecessary thanks to attr_accessor
# which allows you to both write and read
# to read only you use attr_reader
# as such the mfraz.username = dante38 getter will produce an error

  # def first_name=(name)
  #   @first_name = name
  # end
  #  #
  # def email
  #   @email
  # end
  # def last_name=(name)
  #   @last_name = name
  # end
  #
  # def first_name
  #   @first_name
  # end
  #
  # def la  #
  # def email
  #   @email
  # endst_name
  #   @last_name
  # end
  #
  # def email
  #   @email
  # end

  def to_s
    puts "First name: #{@first_name}"
    puts "Last name: #{@last_name}"
  end
end

mfraz = Student.new
# mfraz.first_name = "Matt"
# the above notation won't work
# to fix this create a setter method
  #  def first_name=(name)
  #   @first_name = name
  # end
mfraz.first_name = "Matt"
mfraz.last_name = "Frazier"
puts mfraz
kfraz = Student.new
kfraz.first_name = "Kim"
kfraz.last_name = "Burtch"
puts kfraz
puts mfraz.first_name
puts mfraz.last_name
puts kfraz.first_name
puts kfraz.last_name
mfraz.email = "mfraz38@example.com"
puts mfraz.email
mfraz.username = "dante38"
puts mfraz.username
