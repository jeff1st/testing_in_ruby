class Timer
    attr_accessor :seconds
    def initialize(hours = 0, minutes = 0, seconds = 0)
        @hours = hours
        @minutes = minutes
        @seconds = seconds
    end

    def mod_time
        if @seconds > 59
            @minutes += @seconds/60
            @seconds = @seconds%60
        end
        if @minutes > 59
            @hours += @minutes/60
            @minutes = @minutes%60
        end
    end
    
    def transform_time_first h
        h2 = h/10
        h2
    end

    def transform_time_sec h
        h1 = h%10
        h1
    end

    def time_string
        self.mod_time
        "#{self.transform_time_first(@hours)}#{self.transform_time_sec(@hours)}:#{self.transform_time_first(@minutes)}#{self.transform_time_sec(@minutes)}:#{self.transform_time_first(@seconds)}#{self.transform_time_sec(@seconds)}"
    end
end
