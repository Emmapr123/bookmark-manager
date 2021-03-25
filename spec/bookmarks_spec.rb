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
      mark = Bookmarks.create(url: 'http://www.twitter.com', title: 'Twitter')
      persisted_data = persisted_data(id: mark.id)

      expect(mark).to be_a Bookmarks
      expect(mark.id).to eq persisted_data['id']
      expect(mark.title).to eq 'Twitter'
      expect(mark.url).to eq 'http://www.twitter.com'
    end
  end

  describe '.delete' do 
    it 'deletes a bookmark' do
      david = Bookmarks.create(url: 'http://www.twitter.com', title: 'Twitter')
      david = Bookmarks.delete(id: 4)
      david = Bookmarks.all
      
      expect(david).not_to include 'Twitter'
    end
  end

  describe '.update' do 
    it 'can update a bookmark' do
      matthew = Bookmarks.create(url: 'http://www.twitter.com', title: 'Twitter')
      matthew = Bookmarks.update(id: 4, title: 'Shitter', url: 'http://www.shitter.com')
      matthew = Bookmarks.all 

      expect(matthew.last.title).to eq "Shitter"
      expect(matthew.last.url).to eq 'http://www.shitter.com'
    end
  end
end


