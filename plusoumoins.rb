require 'pry'

def time_diff(start_time, end_time)
  seconds_diff = (start_time - end_time).to_i.abs

  hours = seconds_diff / 3600
  seconds_diff -= hours * 3600

  minutes = seconds_diff / 60
  seconds_diff -= minutes * 60

  seconds = seconds_diff

  "#{hours.to_s.rjust(2, '0')}:#{minutes.to_s.rjust(2, '0')}:#{seconds.to_s.rjust(2, '0')}"
end

compris = 0
validnumb = [10, 100, 1000, 10000]

while validnumb.include?(compris) == false
  system "clear"
  puts "Sur quelle grandeur veux tu jouer?(10, 100, 1000, 10000"
  compris = gets.chomp.to_i
end

nombre = rand(compris)
timestart = Time.now

reponse = "x"
while reponse != nombre
  puts "Choisi un nombre entre 0 et #{compris}"
  reponse = gets.chomp.to_i
  if reponse.is_a?(Fixnum) 
    if reponse < nombre
      puts "Le nombre à trouver est plus grand que #{reponse}"
    elsif reponse > nombre
      puts "Le nombre à trouver est plus petit que #{reponse}"
    else
      puts "Bravo vous avez trouvé le nombre était bien #{reponse}"
    end
  else
    puts "Il faut choisir un nombre entier"
  end
end
timeend = Time.now

stringtime = time_diff(timestart, timeend)

puts "Vous avez mis #{stringtime}"


