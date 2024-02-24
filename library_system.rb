class Book
    attr_reader :title, :author, :available
  
    def initialize(title, author)
      @title = title
      @author = author
      @available = true
    end
  
    def borrow
      @available = false
    end
  
    def return_book
      @available = true
    end
  end
  
  class Member
    attr_reader :name, :borrowed_books
  
    def initialize(name)
      @name = name
      @borrowed_books = []
    end
  
    def borrow_book(book)
      if book.available
        book.borrow
        @borrowed_books << book
        true
      else
        false
      end
    end
  
    def return_book(book)
      if @borrowed_books.include?(book)
        book.return_book
        @borrowed_books.delete(book)
        true
      else
        false
      end
    end
  end
  
  class Library
    attr_reader :books, :members
  
    def initialize
      @books = []
      @members = []
    end
  
    def add_book(book)
      @books << book
    end
  
    def add_member(member)
      @members << member
    end
  end