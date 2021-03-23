require 'pg'

class Bookmarks 

  def self.all
    connection = PG.connect(dbname: ENV['database_test'])
    result = connection.exec('SELECT * FROM bookmarks;')
    result.map { |bookmark| bookmark['url'] }
  end 

  def self.create(url)
    connection = PG.connect(dbname: ENV['database_test'])
    result = connection.exec("INSERT INTO bookmarks(url) VALUES ('#{url}')")
  end 

end 