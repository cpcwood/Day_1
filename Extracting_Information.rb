require 'date'

# A hash of all house prices and transactions
# Data from the Land Registry and transformed through Postcodes.io

hash = {["Basingstoke and Deane", "Tadley South"]=>
  {:count=>1,
   :average=>94000,
   :transactions=>
    [[94000,
      "RG26 3UR",
      Date.parse("1995-09-01")]]},
 ["Camden", "Cantelowes"]=>
  {:count=>1,
   :average=>215000,
   :transactions=>
    [[215000,
      "NW1 9UB",
      Date.parse("1995-03-10")]]},
 ["Conwy", "Capelulo"]=>
  {:count=>1,
   :average=>40000,
   :transactions=>
    [[40000,
      "LL34 6RW",
      Date.parse("1995-03-24")]]},
 ["Luton", "Leagrave"]=>
  {:count=>1,
   :average=>30500,
   :transactions=>
    [[30500, "LU4 9JG", Date.parse("1995-11-30")]]},
 ["Melton", "Asfordby"]=>
  {:count=>1,
   :average=>37500,
   :transactions=>
    [[37500,
      "LE14 3YP",
      Date.parse("1995-08-31")]]},
 ["Sheffield", "Beighton"]=>
  {:count=>1,
   :average=>41950,
   :transactions=>
    [[41950, "S20 2QW", Date.parse("1995-06-30")]]},
 ["Stratford-on-Avon", "Wellesbourne East"]=>
  {:count=>1,
   :average=>70500,
   :transactions=>
    [[70500,
      "CV35 9RZ",
      Date.parse("1995-03-24")]]},
 ["Sunderland", "Millfield"]=>
  {:count=>1,
   :average=>26000,
   :transactions=>
    [[26000, "SR4 7DY", Date.parse("1995-12-18")]]},
 ["Taunton Deane", "Bishop's Lydeard"]=>
  {:count=>1,
   :average=>51500,
   :transactions=>
    [[51500, "TA4 3NJ", Date.parse("1995-02-24")]]},
 ["Test Valley", "St Mary's"]=>
  {:count=>1,
   :average=>60000,
   :transactions=>
    [[60000,
      "SP10 1JG",
      Date.parse("1995-06-23")]]}}


hash.each{|key, value|
  puts "A house was sold in #{key[0]}, #{key[1]} for #{value[:transactions][0][0]} on #{value[:transactions][0][2].strftime('%a %d %b %Y') }"
}


def search(hash)
  while true
    puts 'Please select district or ward'
    input = STDIN.gets.chomp
    break if input == 'district' || input == 'ward'
  end
  if input == 'district'
    puts 'All districts...'
    hash.each_key{|key| puts key[0]}
    while true
      puts 'Please enter district to filter by'
      input = STDIN.gets.chomp
      break if hash.any?{|key, value| key[0] == input}
    end
    hash.each{|key, value|
      if key[0] == input
        puts "A house was sold in #{key[0]}, #{key[1]} for #{value[:transactions][0][0]} on #{value[:transactions][0][2].strftime('%a %d %b %Y') }"
      end
    }
  else
    if input == 'ward'
      puts 'All wards...'
      hash.each_key{|key| puts key[1]}
      while true
        puts 'Please enter ward to filter by'
        input = STDIN.gets.chomp
        break if hash.any?{|key, value| key[1] == input}
      end
      hash.each{|key, value|
        if key[1] == input
          puts "A house was sold in #{key[0]}, #{key[1]} for #{value[:transactions][0][0]} on #{value[:transactions][0][2].strftime('%a %d %b %Y') }"
        end
      }
    end
  end
end

search(hash)
