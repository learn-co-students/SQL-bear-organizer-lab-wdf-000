def selects_all_female_bears_return_name_and_age
  "SELECT name, age FROM bears where GENDER='F';"
end

def selects_all_bears_names_and_orders_in_alphabetical_order
  "SELECT name FROM bears ORDER BY name;"
end

def selects_all_bears_names_and_ages_that_are_alive_and_order_youngest_to_oldest
  "SELECT name, age FROM bears where alive=1 ORDER BY age"
end

def selects_oldest_bear_and_returns_name_and_age
  "SELECT name, age FROM bears WHERE age = (SELECT MAX(age) from bears) LIMIT 1;"
end

def select_youngest_bear_and_returns_name_and_age
  "select name, age from bears where age = (select MIN(age) from bears);"
end

def selects_most_prominent_color_and_returns_with_count
  "select color, count(color) from bears WHERE color = (select MAX(color) from bears);"
end

# "select MAX(color), COUNT(color) from bears;"

def counts_number_of_bears_with_goofy_temperaments
  "select COUNT(name) from bears where temperament = 'goofy';"
end

def selects_bear_that_killed_Tim
  "select * from bears where temperament= 'aggressive';"
end
