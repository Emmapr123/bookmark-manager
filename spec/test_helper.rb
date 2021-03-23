require 'pg'

def truncates
  connection = PG.connect(dbname: ENV['database_test'])
  result = connection.exec('TRUNCATE TABLE bookmarks;')
end

def add_bookmark
  connection = PG.connect(dbname: ENV['database_test'])
  result = connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.github.com')")
  result = connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.emmapriester.com')")
  result = connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.hotmail.com')")
end
