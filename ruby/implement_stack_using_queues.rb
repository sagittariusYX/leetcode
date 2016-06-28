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
    else
      @q1 << x
    end
  end

  # @return {void}
  def pop
    if @q1.empty?
      _pop(@q2, @q1)
    else
      _pop(@q1, @q2)
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

  private def _pop(normal_queue, empty_queue)
    until normal_queue.size == 1
      empty_queue << normal_queue.shift
    end

    normal_queue.shift
  end
end

