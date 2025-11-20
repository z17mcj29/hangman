class GameLogic

  def retrieve_word

    #this is example text I got from the zetcode.com example from my lesson
    # !/user/bin/ruby
    #fname = 'alllines.rb'
    #File.readlines(fname).each do |line|
    # puts line
    #end
    # This lets you iterate line by line. I need to figure out how
    # to randomly choose lines and exit when I find a line that
    # fits my criteria of 5 to 12 characters.
    # In my mind what I would like to find is a way to randomly choose a line
    # each iteration until I find one that works.

    # I am thinking of using a random generator to choose an array value, then as I
    # iterate through the library I will use next to skip each word that isn't
    # correct. When I get to the right array value if it satisfies my condition of
    # between 5 and 12 characters I will use it else I will repeat the process.
    # I know this is a slow way that iterates over the entire array each time, but
    # I will start with this and figure out how to optimize the random part later.

    words_array = []

    File.foreach("lib/dictionary.txt") do |line|
      words_array << line if line.length >= 5 && line.length <= 12
    end

    #return words_array.include?("expansys")
    random_word = words_array.sample # It's crazy how many ways Ruby has to do things. I've never heard of sample before researching for this.
    return random_word

    # I know this didn't turn out to be anything like I wrote before building the method
    # but I'm still going to keep all the comments so I can look back later and see
    # my growth and mindset and what I went through. The pre build comments are how
    # I think the problem through and see where I am before I start building. I am sure
    # these problems are easy for some, but each of these steps take alot of thinking
    # and planning on my part. I'm glad I got this one working now.
  end

  def show_board(misguesses)
    
    # ____
    # O   |
    #/|\  |
    # |   |
    #/ \  |___

    # puts "#{'_____' if misguesses >= 1}"
    # puts "#{' O   |'}"
    # puts "#{'/|\  |'}"
    # puts "#{' |   |'}"
    # puts "#{'/ \  |___'}"

    if misguesses == 0
      puts "#{'     '}"
      puts "#{'     |'}"
      puts "#{'     |'}"
      puts "#{'     |'}"
      puts "#{'     |___'}"
    elsif misguesses == 1
      puts "#{'_____'}"
      puts "#{'     |'}"
      puts "#{'     |'}"
      puts "#{'     |'}"
      puts "#{'     |___'}"

    elsif misguesses == 2
      puts "#{'_____'}"
      puts "#{' O   |'}"
      puts "#{'     |'}"
      puts "#{'     |'}"
      puts "#{'     |___'}"
    elsif misguesses == 3
      puts "#{'_____'}"
      puts "#{' O   |'}"
      puts "#{' |   |'}"
      puts "#{'     |'}"
      puts "#{'     |___'}"
    elsif misguesses == 4
      puts "#{'_____'}"
      puts "#{' O   |'}"
      puts "#{'/|   |'}"
      puts "#{'     |'}"
      puts "#{'     |___'}"
    elsif misguesses == 5
      puts "#{'_____'}"
      puts "#{' O   |'}"
      puts "#{'/|\  |'}"
      puts "#{'     |'}"
      puts "#{'     |___'}"
    elsif misguesses == 6
      puts "#{'_____'}"
      puts "#{' O   |'}"
      puts "#{'/|\  |'}"
      puts "#{' |   |'}"
      puts "#{'     |___'}"
    elsif misguesses == 7
      puts "#{'_____'}"
      puts "#{' O   |'}"
      puts "#{'/|\  |'}"
      puts "#{' |   |'}"
      puts "#{'/    |___'}"
    elsif misguesses == 8
      puts "#{'_____'}"
      puts "#{' O   |'}"
      puts "#{'/|\  |'}"
      puts "#{' |   |'}"
      puts "#{'/ \  |___'}"
    end    

  end


end