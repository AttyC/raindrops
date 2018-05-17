# Raindrops Tech Test


## The Specification
"Write a function that takes as its input a number (n) and converts it to a string, the contents of which depend on the number's factors.  

- if the number has a factor of 3, output 'Pling'  
- if the number has a factor of 5, output 'Plang'  
- if the number has a factor of 7, output 'Plong'  
- if the number does not have any of the above as a factor, simply return the number's digits  

__Examples:__  
- 28's factors are 1, 2, 4, 7, 14 and 28: this would be a simple 'Plong'  
- 30's factors are 1, 2, 3, 5, 6, 10, 15, 30: this would be a 'PlingPlang'  
- 34 has four factors: 1, 2, 17, and 34: this would be '34'  

This test can be completed in a language of your choice and should be made available on your GitHub account. You should write tests to cover your expected range of inputs and outputs. Commit often and document well.""

#### My approach

I chose Ruby language, with RSpec for testing. I used Rubocop for code cleanup.

The tests and logic didn't take very long, so I spent a bit of time refactoring the code and cleaning it up with the help of the ```rubocop``` gem.

My initial impression was that this is very close to FizzBuzz, so I sat with that thought for a bit, then I decided to ignore any previous assumptions and work on it as a new problem.

I diagrammed the specification and made a note of some tests and edge cases (e.g. if the input is not an integer)

#### Considerations
My code checks the factors in the order specified, so the final string is in the correct order as specified above, in the case of multiple factors.

#### Run the code:
(you must have Ruby installed: [Install Ruby](https://www.ruby-lang.org/en/documentation/installation/))
##### Open Terminal (Mac) or the command line (Windows) and clone the repository:
```
git clone https://github.com/AttyC/raindrops.git
cd raindrops
bundle install
```
##### Open irb:

```
irb
```

##### Follow the instructions to require the file and run the code, using different input integers:

```
require './lib/raindrop.rb'
r = Raindrop.new

r.raindrop_output(3)
r.raindrop_output(5)
r.raindrop_output(75)
r.raindrop_output(105)
r.raindrop_output(113)
```

Exit when finished:
```
exit
```

#### Run the tests and see them pass!
```
rspec
```
