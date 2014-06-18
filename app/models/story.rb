class Story < ActiveRecord::Base

  validates :title, :url, :category, :upvotes, presence: true

  def self.search_for(query)                                                       
      where('title LIKE :query OR category LIKE :query', :query => "%#{query}%") 
  end    

  def self.popular
      where('upvotes > 5') 
  end
end