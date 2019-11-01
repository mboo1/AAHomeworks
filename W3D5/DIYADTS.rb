class Stack
    def initialize
        @stack = []
    end

    def push(el)
        @stack << el
    end

    def pop
        @stack.pop
    end

    def peek
        return @stack[-1]
    end
end

class Queue

    def initialize
        @que = []
    end

    def enqueue(ele)
        @que << ele
    end

    def dequeue
        @que.shift
    end

    def peek
        @que[0]
    end

end

class Map

    def initialize
        @map = []
    end

    def set(key, value)
        found = false

        @map.each do |pair|
            if pair[0] == key
                pair[1] = value
                found = true
            end
        end
        @map << [key, value] if !found
    end

    def get(key)
        @map.each {|pair| return pair[1] if pair[0] == key}
    end

    def delete(key)
        @map.each_with_index {|pair, i| @map.delete_at(i) if key == pair[0]}
    end

    def show
        return @map
    end

end