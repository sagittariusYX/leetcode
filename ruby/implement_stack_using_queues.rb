class Stack
  # Initialize your data structure here.
  def initialize
    @q1, @q2 = [], []
  end

  # @param {Integer} x
  # @return {void}
  def push(x)
    if @q1.empty?
      @q2 << x
      return
    end

    @q1 << x
    return
  end

  # @return {void}
  def pop
    if @q1.empty?
      while true
        e = @q2.shift
        return if @q2.empty?
        @q1 << e
      end
    end

    while true
      e = @q1.shift
      return if @q1.empty?
      @q2 << e
    end
  end

  # @return {Integer}
  def top
    if @q1.empty?
      while true
        e = @q2.shift
        @q1 << e
        return e if @q2.empty?
      end
    end

    while true
      e = @q1.shift
      @q2 << e
      return e if @q1.empty?
    end
  end

  # @return {Boolean}
  def empty
    @q1.empty? && @q2.empty?
  end
end

