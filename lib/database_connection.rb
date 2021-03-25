require 'pg'

<<<<<<< HEAD
 class DatabaseConnection
   def self.setup(dbname)
     @connection = PG.connect(dbname: dbname)
   end

   def self.connection
     @connection
   end

   def self.query(sql)
     @connection.exec(sql)
   end
 end
=======
class DatabaseConnection

  def self.setup(dbname)
    PG.connect(dbname: dbname)
  end 

end 
>>>>>>> e4b94d5e3a7a2498549231ea73af57230f4789f5
