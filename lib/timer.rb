module Reactor
  # Timer objects created by Reactor::Base#add_to_timer are instances
  # of this class. You can call cancel on them to stop them from executing
  class Timer
    include Comparable
  
    attr_reader :time_of_fire, :periodical
    
    def initialize(timers, time, periodical, &block)
      @timers = timers
      @time = time * 1000
      @periodical = periodical
      @block = block
      @active = true
      add_to_timers
    end
    
    def fire
      return unless @active
      @block.call
      add_to_timers if @periodical
    end
    
    # Cancels the timer
    # It will be lazily removed from the timer's list later
    def cancel
      @active = false
    end

    def add_to_timers
      @time_of_fire = (Time.now.to_f * 1000).to_i + @time
      @timers.insert_sorted(self)      
    end

    def <=>(other)
      self.time_of_fire <=> other.time_of_fire
    end
    
  end
end
