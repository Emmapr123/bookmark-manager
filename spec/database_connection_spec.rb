require 'database_connection'
<<<<<<< HEAD

describe DatabaseConnection do
  let(:connection) { DatabaseConnection.setup('bookmark_manager_test')
 }
  describe '.setup' do
    it 'should set up a connection to the database' do 
      expect(PG).to receive(:connect).with(dbname: 'bookmark_manager_test')

      DatabaseConnection.setup('bookmark_manager_test')
    end
  end

  describe '.connection' do
    it 'should know the connection' do
      expect(connection).to eq connection
    end
  end

  describe '.query' do
    it 'should pass the connection a quiry' do 
      expect(connection).to receive(:exec).with('SELECT * FROM bookmarks')
      DatabaseConnection.query('SELECT * FROM bookmarks')
    end
  end
end
=======
# require 'pg'

describe DatabaseConnection do 

  describe '.setup' do 
    it 'connects to a database' do 
      expect(PG).to receive(:connect).with(dbname: 'bookmark_manager_test')
      spider = DatabaseConnection.setup('bookmark_manager_test')
    end
  end 

  


end 

>>>>>>> e4b94d5e3a7a2498549231ea73af57230f4789f5
