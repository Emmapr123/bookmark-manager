require 'pg'

class Bookmarks 

  def self.all
    connection = PG.connect(dbname: ENV['database_test'])
    result = connection.exec('SELECT * FROM bookmarks;')
    result.map { |bookmark| "#{bookmark['title']}: #{bookmark['url']}" }
  end 

  def self.create(title, url)
    connection = PG.connect(dbname: ENV['database_test'])
    result = connection.exec("INSERT INTO bookmarks(title, url) VALUES ('#{title}', '#{url}')")
  end 

end 