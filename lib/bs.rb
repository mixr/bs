# bs.rb
require "faker"
require "linguistics"

get "/" do
  init_linguistics
  bs = Faker::Company.bs.split(" ")
  bs = participling_first_word(bs)
  "#{bs.join(" ")}!"
end

# turn the first word into present participle and capitalize it
def participling_first_word(bs)
  bs.insert( 0, bs.shift.capitalize.en.present_participle )
end

# initializes linguistics to use english
def init_linguistics
  Linguistics::use(:en)
end
