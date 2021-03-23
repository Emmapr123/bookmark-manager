require 'bookmarks'
require_relative './test_helper'

describe Bookmarks do
  let(:mark) { Bookmarks.all }
  let(:steven) { Bookmarks.create('Makers','http://www.makers.tech') }

  describe '#all' do
    it 'should be able to print a list with all bookmarks' do
      truncates
      add_bookmark
      expect(mark).to include 'Github'
      expect(mark).to include 'http://www.github.com'
      expect(mark).to include 'Emma Priester'
      expect(mark).to include 'http://www.emmapriester.com'
      expect(mark).to include 'Hotmail'
      expect(mark).to include 'http://www.hotmail.com'
    end
  end

  describe '#create' do
    it 'can create a new bookmark' do
      steven
      expect(mark).to include "Makers"
      expect(mark).to include "http://www.makers.tech"
    end
  end
end
