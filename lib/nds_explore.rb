require 'pp'


$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds
end

def print_first_directors_movie_titles

  first_director_movies = directors_database[0][:movies]
  row_index = 0 
 while row_index < first_director_movies.length do
    puts first_director_movies[row_index][:title]
    row_index += 1

  end
end

def gross_totals(nds)
  
  result = {}
  name_index = 0
  ww_gross_index = 0
  ww_gross_total = 0
  
  while name_index < directors_database.length do
    puts directors_database[name_index][:name]
    
    while ww_gross_index < directors_database[name_index].length do
      
      ww_gross_total += directors_database[name_index][:movies][ww_gross_index][:worldwide_gross]
      
      ww_gross_index += 1
      
    end
    
    result << {:directors_database[name_index][:name] => ww_gross_total }
    
    puts ww_gross_total
    
    name_index += 1 
  end
end 




 
def movie_with_director_name(director_name, movie_data)
  { 
    :title => movie_data[:title],
    :worldwide_gross => movie_data[:worldwide_gross],
    :release_year => movie_data[:release_year],
    :studio => movie_data[:studio],
    :director_name => director_name
  }
end

sample_coll = [{:title=>"The Godfather",
     :studio=>"Paramount",
     :worldwide_gross=>134966411,
     :release_year=>1972},
    {:title=>"Apocalypse Now",
     :studio=>"MGM",
     :worldwide_gross=>83471511,
     :release_year=>1979},
    {:title=>"Apocalypse Now Redux",
     :studio=>"Miramax",
     :worldwide_gross=>83471511,
     :release_year=>2001},
    {:title=>"Bram Stoker's Dracula",
     :studio=>"Columbia",
     :worldwide_gross=>82522790,
     :release_year=>1992},
    {:title=>"The Godfather Part III",
     :studio=>"Paramount",
     :worldwide_gross=>66666062,
     :release_year=>1990},
    {:title=>"Jack",
     :studio=>"Buena Vista",
     :worldwide_gross=>58620973,
     :release_year=>1996}]

def movies_with_director_key(name, movies_collection)
  result = []
  index = 0 
  
  while index < movies_collection.length do
    result << movie_with_director_name(name, movies_collection[index])
    index += 1 
  end
  result
end




 
result = {}
index = 0 
index_two = 1 
gross_array = []
studio_array = []

  while index < sample_coll.length do
    gross_array << sample_coll[index][:worldwide_gross]
    studio_array << sample_coll[index][:studio]
    index += 1
  end
  
  index = 0
  
  puts gross_array
  puts "\n"
  puts studio_array
  
  studio_array[0] == sample_coll[0][:worldwide_gross]
  
  while index && index_two < 2 do
    if studio_array[index] == studio_array[index_two]
      studio_array = studio_array.delete_at(index_two)
      gross_array[index] += gross_array.delete_at(index_two)
    end
  end 
  
  puts gross_array
  puts "\n"
  puts studio_array
      
      
      
      
      
      
      
      
      
      
      
      



