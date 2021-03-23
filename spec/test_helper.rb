require 'pg'

def truncates
  connection = PG.connect(dbname: ENV['database_test'])
  result = connection.exec('TRUNCATE TABLE bookmarks;')
end 

def add_bookmark
  connection = PG.connect(dbname: ENV['database_test'])
  result = connection.exec('INSERT INTO bookmarks VALUES ('1', 'http://www.github.com')')
end 
