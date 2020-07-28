class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
        self.val = val
        self.neighbors = []
    end

    def add_neighbor(sub)
    self.neighbors << sub
  end

  def bfs(trget)
    
  end
end