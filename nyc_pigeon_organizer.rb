require "pry"

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |key, value| #key:color,gender,lives #value:hash
  value.each do |describe, array| #describe:purple, male, subway
  array.each do |name| #name:index inside array
  if pigeon_list.has_key?(name)
   if pigeon_list[name].has_key?(key)
  pigeon_list[name][key] << describe.to_s
  else
    pigeon_list[name][key] = [describe.to_s]
  end

  #set name level 1-> key level 2 with describe as value of the hash
else
  pigeon_list[name] = {key => [describe.to_s]} #describe was symbol before so turn it to String
      end
     end
    end
  end
  pigeon_list
end