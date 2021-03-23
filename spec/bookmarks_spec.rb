require 'bookmarks'
require_relative './test_helper'

describe Bookmarks do
  let(:mark) { Bookmarks.all }

  describe '#all' do
    it 'should be able to print a list with all bookmarks' do 
      truncates 
      add_bookmark
      expect(mark).to include 'http://www.github.com'
      expect(mark).to include 'http://www.emmapriester.com'
      expect(mark).to include 'http://www.hotmail.com'
    end 
  end 
end