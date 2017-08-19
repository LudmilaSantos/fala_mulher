class Post < ActiveRecord::Base
 
  #attr_accessor :name, :contact, :denouncement, :kind
  validates :contact, :denouncement, :kind, presence: true
 
end