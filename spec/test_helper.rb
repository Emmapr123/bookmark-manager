require 'pg'

def truncates
  connection = PG.connect(dbname: ENV['database_test'])
  result = connection.exec('TRUNCATE TABLE bookmarks;')
end

def add_bookmark
  connection = PG.connect(dbname: ENV['database_test'])
  result = connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.github.com', 'Github')")
  result = connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.emmapriester.com', 'Emma Priester')")
  result = connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.hotmail.com', 'Hotmail')")
end
