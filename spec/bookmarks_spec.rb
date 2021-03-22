require 'bookmarks'

describe Bookmarks do
  let(:mark) { Bookmarks.all }

  describe '#all' do
    it 'should be able to print a list with all bookmarks' do 
      expect(mark).to include 'github.com'
      expect(mark).to include 'emmapriester.com'
      expect(mark).to include 'hotmail.com'
    end 
  end 
end