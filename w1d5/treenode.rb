class TreeNode

  attr_accessor :left_child, :right_child, :parent

  def initialize(value=nil, children=[], parent=nil)
    @value = value
    @children = children
    @parent = parent
  end

  def parent
    @parent
  end

  def children
    # setting self.children
    # creating a new node
    # passing in some value from self that
    #   represents parenthood
    @left_child = self.new(nil, [], self)
    @right_child = self.new
  end

end