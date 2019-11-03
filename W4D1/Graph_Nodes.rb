class GraphNode
    attr_accessor :neighbors, :val

    def initialize(val)
        @val = val
        @neighbors = []
    end

end

def bfs(starting_node, target_value)
    to_check = [starting_node]
    visited = []

    until to_check.empty?
        current_node = to_check.shift
        print current_node.val
        puts
        return current_node if current_node.val == target_value
        visited << current_node
        current_node.neighbors.each do |node|
            to_check << node if !visited.include?(node)
        end
    end
    return nil
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]
