def Sluggish_Octopus(arr)
    longest = ''
    arr.each do |fish1|
        longest = fish1 if arr.all?{|fish2| fish1.length >= fish2.length }
    end
    longest
end

def Dominant_Octopus(arr)
    longest = ''
    arr.each_with_index do |fish, i|
        longest = fish if arr[i+1..-1].all? {|fish2| fish.length > fish2.length}
    end
    longest
end

def Fast(arr)
    longest = ''
    arr.each do |fish|
        longest = fish if fish.length > longest.length
    end
    longest
end

def slow_dance(dir, arr)
    return arr.index(dir)
end

def fast_dance(dir, arr)
    hash = {}
    arr.each_with_index do |dir, i|
        hash[dir] = i
    end 
    return hash[dir]
end


p Sluggish_Octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
p Dominant_Octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
p Fast(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

p slow_dance('up', tiles_array)
p fast_dance('up', tiles_array)