require 'pg'

def add_bookmark
  connection = PG.connect(dbname: 'bookmark_manager_test')
  result = connection.exec("TRUNCATE TABLE bookmarks RESTART IDENTITY;")
  result = connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.github.com', 'Github')")
  result = connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.emmapriester.com', 'Emma Priester')")
  result = connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.hotmail.com', 'Hotmail')")
end

def persisted_data(id:)
  connection = PG.connect(dbname: 'bookmark_manager_test')
  result = connection.query("SELECT * FROM bookmarks WHERE id = #{id};")
  result.first
end
