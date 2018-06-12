class Timer
  #write your code here
  attr_accessor :seconds

  def initialize 
    @seconds = 0
  end
  
  def time_string
    puts @seconds
    hours = @seconds / 3600
    minutes = (@seconds - hours * 3600) / 60
    seconds = @seconds - hours * 3600 - minutes * 60
    sprintf("%02d:%02d:%02d", hours, minutes, seconds)
  end
end
