class Post < ActiveRecord::Base

  def self.random_post
    # This is not efficient, but it's simple.
    # TODO: make this faster when necessary
    all.rand
  end
end
