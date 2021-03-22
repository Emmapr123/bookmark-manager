require 'bookmarks'

describe Bookmarks do
  let(:mark) { Bookmarks.all }

  describe '#all' do
    it 'should be able to print a list with all bookmarks' do 
      expect(mark).to include 'http://www.github.com'
      expect(mark).to include 'http://www.emmapriester.com'
      expect(mark).to include 'http://www.hotmail.com'
    end 
  end 
end