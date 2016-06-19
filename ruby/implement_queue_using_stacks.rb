class Queue
  # Initialize your data structure here.
  def initialize
    @in, @out = [], [] 
  end

  # @param {Integer} x
  # @return {void}
  def push(x)
    @in.push(x)
  end

  # @return {void}
  def pop
    if @out.empty?
      @out.push(@in.pop) until @in.empty?
    end
    @out.pop
  end

  # @return {Integer}
  def peek
    if @out.empty?
      @out.push(@in.pop) until @in.empty?
    end
    @out[-1]
  end

  # @return {Boolean}
  def empty
    @in.empty? && @out.empty? 
  end
end
