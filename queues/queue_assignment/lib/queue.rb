module Launch
  class QueueIsEmpty < StandardError
  end
  class Queue
    def initialize
      @contents = []
    end

    def enter(value)
      @contents << value
    end

    def empty?
      @contents.empty?
    end

    def peek
      @contents.last
    end

    def leave
      if self.empty?
        raise QueueIsEmpty
      else
        @contents.shift
      end
    end

  end
end
