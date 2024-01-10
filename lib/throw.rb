class Throw
    def initialize
      @points=rand(1..10)
    end
  
    def do_throw
      print 'Press "t" to throw the bowling ball: '
  
    if gets.chomp == 't'
      puts "Pines down: #{@points}"
  
    else
      print `You didn't press "t", you won't get any points`
    end
  end
  end
  