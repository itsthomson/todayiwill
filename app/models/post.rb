class Post < ActiveRecord::Base

validates_presence_of :name
validates_presence_of :message

  def self.random_post
    # This is not efficient, but it's simple.
    # TODO: make this faster when necessary
    all.rand
  end
end
