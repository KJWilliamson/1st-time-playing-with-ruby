# https://try.ruby-lang.org/
# https://ruby-doc.org/
# https://www.ruby-lang.org/en/documentation/
# http://rubykoans.com/
# https://gorails.com/episodes/rails-for-beginners-part-1-installing-ruby-on-rails
# https://www.youtube.com/watch?v=fmyvWz5TUWg
# https://www.youtube.com/watch?v=B3Fbujmgo60
# https://rubygarage.org/blog/how-to-learn-ruby-on-rails
# https://www.udemy.com/course/ruby-for-absolute-beginners/?LSNPUBID=JVFxdTr9V80&ranEAID=JVFxdTr9V80&ranMID=39197&ranSiteID=JVFxdTr9V80-lI0pPAXUqovtsNIK35qoRg&utm_medium=udemyads&utm_source=aff-campaign
# https://www.youtube.com/watch?v=Mwe06DYjSNc



puts "Hello, World!"

puts "kamela".reverse

puts 5 * 5

# Well, I’m sure you’ve been to a website that screamed, Hey, your password is too short!
# some programs use that simple .length code.
puts "Kamela".length

# prints out Kamela 5 times
puts "Kamela " * 5

#it's not possible to reverse a number
# puts 40.reverse
# can turn it into a string & reverse it
puts 40.to_s.reverse
# to_s converts things to strings
# to_i converts things to integers (numbers)
# to_a converts things to arrays
puts 67.to_s
puts "89".to_i
# What are arrays?!
# They are lists. Type in a pair of brackets:
puts [12, 47, 89, 78].max
# Good, good. But it’s annoying to have to retype that list every time you need it, isn’t it?
# Let’s save our numbers inside a ticket like so:
ticket = [12, 47, 89, 78]
puts ticket
# You’ve hung on to your lotto numbers, tucking them away inside a variable called ticket. But any other name, like jimmyslist, would have been fine too.
# Programming, you will discover, is mostly about working with variables.
# Let’s put your lotto numbers in order, how about?
puts ticket.sort!
# Did you notice that the sort! method has a big, bright exclamation at the end?
# A lot of times Ruby methods shout like that if they alter the variable for good. It’s nothin special, just a mark.
# Ruby uses the square brackets [ ] to target an element. The square brackets are very common in Ruby. They are like sights used to line up a target. 
puts ticket[0]
puts ticket[1]
puts ticket[2]
puts ticket[3]

poem = "My toast has flown from my hand
And my toast has gone to the moon.
But when I saw it on television,
Planting our flag on Halley's comet,
More still did I want to eat it."

puts poem
# The gsub method is short for global substitute. It replaces all occurences of “toast” with “honeydew”.
puts poem.gsub("toast", "honeydew")
puts poem.reverse
#So the whole poem’s been turned backwards, letter-by-letter.
puts poem.lines.reverse
# Two things happened. You turned the poem into a list using lines. Lines decides the way the string is split up and converts it into an Array.
# Then, you reversed that list. You had each line. You reversed them. That’s it.

#Combining methods like this is called method chaining.
puts poem.lines.reverse.join
# the join method took that array of lines & put them together into a String

################################################
# Exclamations
#Methods may have exclamations (and also question marks) in their name. These are just there to better explain what their function is. No big deal.

#String manipulation
#Search and change strings

#Chaining
#Chaining methods lets you get a lot more done. Break up a poem, reverse it, reassemble it: poem.lines.reverse.join
################################################
# complete list of string methods
# https://ruby-doc.org/core-3.1.2/String.html

puts poem.downcase
puts poem.upcase

# empty hash
books = {}
# You’ve made an empty hash. A hash is like an array, only every one of its elements has a name.

#We’re going to stuff some miniature book reviews in our new hash. Here’s our rating system:

# :splendid → a masterpiece
# :quite_good → enjoyed, sure, yes
# :mediocre → equal parts great and terrible
# :quite_not_good → notably bad
# :abysmal → steaming wreck
# To rate a book, put the title in square brackets and put the rating after the equals. For example:
books["Black Spring"] = :quite_good
# These ratings are not strings. When you place a colon in front of a simple word, you get a symbol. Symbols are cheaper than strings (in terms of computer memory.) If you use a word over and over in your program, use a symbol. Rather than having thousands of copies of that word in memory, the computer will store the symbol only once.

# More importantly, a symbol tells you that it is not just any old word but has a meaning within your program.

books["A Wrinkle In Time"] = :quite_good
books["Skeleton Crew"] = :quite_good

puts books
puts books.length
# One great thing about Ruby is that names are often reused, which means fewer names you need to remember.
# Remember how we retrieved items from an array using a number:
# puts ticket[1].
# For a hash this works the same way, except we don’t use a number to get an element but a name.
# So, if you’d like to look up one of your old reviews, again put the title in the square. But leave off the equals. Just like this:
puts books["Black Spring"]
# Keep in mind that hashes won’t keep things in order. That’s not their job. It’ll just pair up two things: a key and a value.
# In your reviews, the book’s title is the key and the rating is the value.
# If you want to just see the titles of all the books you’ve reviewed:
puts books.keys
puts books.values

# So are you giving out harsh, unfair reviews? Let’s keep score with a new hash ratings:
# Then, okay, now let’s count up your reviews. Just stay with me. Type:
# Hash.new    Returns a new, empty hash. If this hash is subsequently accessed by a key that doesn’t correspond to a hash entry, the value returned depends on the style of new used to create the hash. In the first form, the access returns nil. If obj is specified, this single object will be used for all default values. If a block is specified, it will be called with the hash object and the key, and should return the default value. It is the block’s responsibility to store the value in the hash if required.
ratings = Hash.new{0}

books.values.each { |rate|
    # That += 1 line means: increase the value by 1.
    ratings[rate] += 1
}
puts ratings
# One of the amazing new things we’ve just used is a block. We’re going to explore these more in this and the next lesson. But, basically, a block is a bit of Ruby code surrounded by curly braces.
# Let’s try another block:
5.times { print "Odelay! " }
# Blocks are always attached to methods. Like the times method, which takes the block and runs the code over and over. (In our example: five times.)
# As we saw in the first example with a block (when counting ratings) we can pass a value to the block. Which values are passed is determined by the method that is running the block.
# The values that are received by the block are placed in the variable name at the beginning of the block, between two pipe symbols: |
# Let’s try that with this block:
5.times { |time|
    puts time
}
# Here, method .times sends a value to variable |time|. But note that variable time is only known within the block.

# Hashes The little dictionary with the curly pages: {}
# Symbols  Tiny, efficient code words with a colon, like: :splendid
# Blocks   Chunks of code which can be tacked on to many of Ruby’s methods. Here’s the code you used to build a scorecard:
# books.values.each { |rate| ratings[rate] += 1 }

# One other little thing we haven’t really talked about openly: method arguments. Remember when we changed the poem a little bit? We used: poem.gsub(“toast”, “honeydew”)
# The gsub method needs 2 arguments, which we passed to gsub by including two strings between parentheses. Arguments tell the method exactly what to do.
# Parentheses   Actually, most of the time Ruby doesn’t mind if you omit the parentheses. So this would have worked too: poem.gsub “toast”, “honeydew”
# We have already used another method with a parameter. Many times in fact, though it was not very obvious:

puts "Hello"
puts("Hello")

# Yes puts is also a method. Using puts with or without parentheses is the same to Ruby, but the version without parentheses is a bit easier to read. And it saves you valuable typing time!
# So if to is a method and be is an argument we now know the answer to this age old question. It is really just a matter of preference whether you want to be or to(be).

# Next to using Ruby’s built in methods (like puts, sort, times) you can define your own methods. Why is that a good idea? Two reasons:
#To make your program shorter. If you have to do the same thing in more than one part of your code it is easier to put that code in a separate method. Your code will be shorter.
# To make your code easier to read. Suppose your program needs to do a lot of different things. You could stuff all code into one long piece. But it would be very difficult to read and understand that code later.
# Instead you should cut up your code in different methods and give each method an easy to understand English name. You will thank yourself later.
# So how do we define a method? Like this:
# def tame (number_of_shrews)
# end
# Hey, okay, you done it. You’re making your own method. You started with def, followed by the name of the method. And a list of arguments which the method will need. This isn’t too scary and dangerous! All we have to do is fill it up with Ruby and finish it up with end.
# Here’s the code:
def tame (number_of_shrews)
    number_of_shrews.times {
        puts "Tamed a shrew"
    }
end
# A new method is born. Let us use it now:
puts tame 5

# Most methods do not only want some parameters as input, but will also give something back. I have changed our method a bit so it will return a value to you. Try it:
def radiohead( number_of_albums )
  number_of_albums.times {
    puts "Ok Computer"
  }
  return number_of_albums
end

puts radiohead(3)
# Return   And, since you’re getting so advanced and capable here, one other tip: you can omit the word return from the last line of the method. Ruby will automagically return the last value that was used inside the method.
# So we can change the last line to just: number_of_shrews.
# But since method .times also returns the number_of_shrews we can remove the entire last line. So in fact our original method already did what we wanted all along!

# Methods    Methods can be defined with def and have a name. Methods make your program shorter and easier to read.
# Parameters    Methods can have parameters.
# Return values    Methods (almost) always return a value.



# Many, many, many websites are available that you can ask for information. For instance this link will give you all current Google news feeds about Ruby.
#bYour web browser will probably display it quite nicely for you. If you look at the source (type: control-U) you will see a long string of strangely formatted text. In the Google example it is in the rss format.
# Formats    There are many other formats, with strange names, available and used on the web, like: html, xml and json. Yes, even this very website uses a couple of these.
# Ruby kindly provides a method to convert json data to a Ruby hash. 
# Ruby has a method for iterating. It is called each. We have seen it before when creating our book rating system.
# Ruby lets us select values from a hash. The select method uses a block to let us define what to select and returns what it found.
# We can then use the results returned by select in the each method as before by simply adding it after the select block. This is another example of method chaining, which we saw earlier when reversing a poem.
# Ruby has a neat way of doing that. It is just like printing a string like: puts “Hi, my name is Jimmy”. But instead of the literal value Jimmy we use the value of a variable.
# First replace Jimmy with #{}. If Ruby sees a hash symbol # followed by a curly brace { it looks for a variable between the first brace and the following closing brace }. So we can use this: “Hi, my name is #{name}”.


# Decision making, in real life this can be a real problem. Not for us though. Ruby makes it very easy to make decisions.

if 1 < 2
  puts "It is true: 1 is less than 2"
end
# The key word here is if. If can be placed before a method or after a method, like so:
puts "It is true: 1 is less than 2" if 1 < 2
# If is a method that requires one parameter. That parameter can be any expression that you want to test. The outcome of the expression must be either true or false. Here are a couple of expressions with their outcomes:

puts 5 <= 10  
puts 'abc' == 'def'
puts true
puts 123456
puts 0
puts nil
puts 'xyz'.empty? 
puts 'a' > '5'

# Did you see the 2 equal signs in ‘abc’ == ‘def’?
# This == means is equal to. The single equal sign that we have seen before means assign a value to a variable.
# To make it more confusing: you can use the assignment after an if method like this:

a = 0

if a == 100
  puts "Expression is true, but a is now: #{a}"
else
  puts "#{a} is not equal to 100"
end
# else   In the code above I have added an else expression. This part will be executed when the if test-expression evaluates to false.

# We’ll define two methods first and then take a decision:
def hungry?(time_of_day_in_hours)
  puts "Me hungry." if time_of_day_in_hours > 12
  true
  puts "Me not hungry." if time_of_day_in_hours < 12
  false
end

def eat_an(what)
  puts "Me eat #{what}.\n"
end

eat_an 'apple' if hungry?(14)

eat_an 'apple' if hungry?(10)

#######################################################
#Earlier, we created a hash like this:

# the empty curly braces {} is a shortcut for Hash.new.
# Hash.new
# Not a School Class, a Working Class
# You see, the empty curly braces {} is a shortcut for Hash.new. The new method is used to make objects of a certain class. Think “class” as in “working class” — a specific group of objects which are similar, have the same jobs, the same shirts. What use is a class?

# BlurbalizerTM   You just had a brilliant idea for a new app. It is going to be the next instant messaging platform. You want an app where people can send each other short messages. You call these messages BlurbsTM. A BlurbTM has a maximum length of just 40 characters. Let’s do a mood setting too.

# Where to start    Well, you might store your BlurbsTM entries in a json file, right? But how would you keep track of the content of the entry and the time it was posted? And when you loaded the file, how would it look in Ruby? Would it be a Hash? Or an Array? Or an Array of Arrays? Or something else?


# You’ve opened up a new BlurbTM class. What is your blog entry made of? The content, sure. Also, a time when the BlurbTM was posted. And a mood.
# Okay, so you’ve got the first line of the class, here’s the rest:
# Class names always begin with a capital letter.

#######################################################
# class Blurb
#    attr_accessor :content, :time, :mood
#end
######################################################


# Accessors Are the Dangling Limbs
# Hey, good class, man. You’ve got a new BlurbTM class.
# In the class definition, you used a method called attr_accessor. There are many attribute methods like this which add little settings to classes. These attributes are just variables attached to a class.
# Think of it this way. A class is like a person. That star-shaped human thing out there. And the attributes are the dangling limbs, the different parts that make up a body and other people can shake hands with.
# Now   To create a BlurbTM and set the content:


# Let’s add an initialize method to our class. This method is called whenever a new BlurbTM is created. At the same time we can limit the length of the BlurbTM content to 40 characters.

# (That parameter content=“” is there to make sure that we know content is a string, even if no content parameter is passed to the initialize method.)

#######################################################
# class Blurb
#   attr_accessor :content, :time, :mood

#   def initialize(mood, content="")
#     @time    = Time.now
#     @content = content[0..39]
#     @mood    = mood
#   end
# end

# Blurb.new.time
########################################################


# Did you see how inside the class we used the at-symbols (@time). Outside the class, we use accessors: blurb.time = Time.now but inside we use the object’s variables:
# @time = Time.now   They’re the exact same thing, but expressed in two different places of your program.
# Create another BlurbTM
# When a new BlurbTM is created, the initialize method is used to check for any arguments to new.
# Uh, we need two arguments:

########################################################
# Blurb2 = Blurb.new :confused, "I can not believe Mt. Hood was stolen!"
########################################################


# Classes   Everything in Ruby is some kind of object. Classes explain objects, how a certain object works. For example, you made a few BlurbTM objects and these objects are explained in the Blurb class. In other words: you call them Blurb objects. You can use classes to (kinda) model real life objects.
# Accessors     Accessors are variables attached to an object which can be used outside the object. (blurb2.time = Time.now)
# Object variables    Object variables are the same variables you’re using for accessors, but inside the object. (@time = Time.now)

# Let’s finish your app   You have app entries, but no actual app. It still needs a title, someplace to store all BlurbsTM and a timeline in order to work.
# Guess what, we’re going to use another class. I’ve given all the code for the new class in one go. Just take your time to study it. I’m in no hurry, I’ll wait for you in the next lesson.
#####################################################
# class Blurbalizer
#   def initialize(title)
#     @title  = title
#     @blurbs = [] # A fresh clean array
#                  # for storing Blurbs
#   end

#   def add_a_blurb(mood, content)
#     # The << means add to the end of the array
#     @blurbs << Blurb.new(mood, content)
#   end

#   def show_timeline
#     puts "Blurbify: #{@title} has #{@blurbs.count} Blurbs"

#     @blurbs.sort_by { |t|
#       t.time
#     }.reverse.each { |t|
#       puts "#{t.content.ljust(40)} #{t.time}"
#     }
#   end
# end

# myapp = Blurbalizer.new "The Big Blurb"
########################################################

# There you are. Did you figure out what all that code in the BlurbalizerTM class does?
# In the BlurbalizerTM class are two methods (add_a_blurb and show_timeline). You can use a method outside the class, just like we did with accessors.
# Time to start using BlurbalizerTM. I’ve already loaded some BlurbsTM for you, but feel free to add your own.
# We’re no longer creating BlurbsTM directly, but we use the add_a_blurb method of the BlurbalizerTM class. This way we can be sure all our BlurbsTM are stored in the myapp object.

###################################################
# myapp.add_a_blurb :moody, "Add Blurb here"

# myapp.show_timeline
####################################################


# Some beautiful things can be done with the simple parts of Ruby, especially when you combine them together into new things. Here we’ve got an app made of a class containing another class. And, actually, Ruby really does good with this kind of creature. It is called object oriented programming.
# We have arrived at the last programming excercise of TryRuby. If you want, you can add some more features to BlurbalizerTM.
# Maybe you want to print the mood as a smiley in the show_timeline method. You could add a moodify method to the BlurbTM class and then use that method in the show_timeline method:

#######################################################
# class Blurb
#   attr_accessor :content, :time, :mood

#   def initialize(mood, content="")
#     @time    = Time.now
#     @content = content[0..39]
#     @mood    = mood
#   end

#   def moodify
#     if    @mood == :sad
#       return ":-("
#     elsif @mood == :happy
#       return ":-)"
#     # Add other moods here
#     end

#     # The default mood
#     ":-|"
#   end
# end

# class Blurbalizer
#   def initialize(title)
#     @title  = title
#     @blurbs = []
#   end

#   def add_a_blurb(mood, content)
#     @blurbs << Blurb.new(mood, content)
#   end

#   def show_timeline
#     puts "Blurbalizer: #{@title} has #{@blurbs.count} Blurbs"

#     @blurbs.sort_by { |t|
#       t.time
#     }.reverse.each { |t|
#       puts "#{t.content.ljust(40)} #{t.time}"
#     }
#   end
# end

# myapp.show_timeline

#######################################################

# This last section took a moment to wind down, to give you some pointers as to how you can use Ruby.
# If you enjoyed yourself, you can continue with the TryRuby Playground or download and install Ruby: ruby-lang.org
# Once you have Ruby installed, you can create a file, let say my_first_program.rb, with a text editor, type some Ruby code and then run it by opening a command prompt and typing:

# ruby my_first_program.rb




