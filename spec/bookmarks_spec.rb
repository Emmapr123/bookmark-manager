require 'bookmarks'
require_relative './test_helper'

describe Bookmarks do

  describe '#all' do
    it 'should be able to print a list with all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      steven = Bookmarks.all
   
      expect(steven.length).to eq 3
      expect(steven.first).to be_a Bookmarks
      expect(steven.first.title).to eq 'Github'
      expect(steven.first.url).to eq 'http://www.github.com'
    end
  end

  describe '.create' do 
    it 'creates a new bookmark' do 
      mark = Bookmarks.create(url: 'http://twitter.com', title: 'Twitter')
      persisted_data = PG.connect(dbname: 'bookmark_manager_test').query("SELECT * FROM bookmarks WHERE id = #{mark.id};")

      expect(mark).to be_a Bookmarks
      expect(mark.title).to eq 'Twitter'
      expect(mark.url).to eq 'http://twitter.com'
    end
  end
end


