require 'database_connection'

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

