require 'database_connection'
# require 'pg'

describe DatabaseConnection do 

  describe '.setup' do 
    it 'connects to a database' do 
      expect(PG).to receive(:connect).with(dbname: 'bookmark_manager_test')
      spider = DatabaseConnection.setup('bookmark_manager_test')
    end
  end 

  


end 

