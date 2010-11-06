class Post < ActiveRecord::Base
  validates :name  , :presence => true
  validates :title , :presence => true
                     # :length   => { :minimun => 5 }
  
  has_many :comments, :dependent => :destroy

end

