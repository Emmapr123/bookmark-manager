require 'bookmarks'
require_relative './test_helper'

describe Bookmarks do
  let(:mark) { Bookmarks.all }
  let(:steven) { Bookmarks.create('Makers','http://www.makers.tech') }

  describe '#all' do
    it 'should be able to print a list with all bookmarks' do
      truncates
      add_bookmark
      expect(mark).to include 'Github: http://www.github.com'
      expect(mark).to include 'Emma Priester: http://www.emmapriester.com'
      expect(mark).to include 'Hotmail: http://www.hotmail.com'
    end
  end

  describe '#create' do
    it 'can create a new bookmark' do
      steven
      expect(mark).to include "Makers: http://www.makers.tech"
    end
  end
end
