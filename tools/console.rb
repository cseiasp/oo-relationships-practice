require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

guest1 = Guest.new("guest1")
guest2 = Guest.new("guest2")
guest3 = Guest.new("guest3")

list1 = Listing.new("San Fran")
list2 = Listing.new("Barcelona")
list3 = Listing.new("Barcelona")

trip1 = Trip.new(list1,guest1)
trip2 = Trip.new(list2,guest2)
trip3 = Trip.new(list3,guest3)
trip4 = Trip.new(list2,guest2)
trip5 = Trip.new(list2,guest3)
trip6 = Trip.new(list3,guest2)

binding.pry
0