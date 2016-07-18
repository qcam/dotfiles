#!/usr/bin/ruby
require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:SAVE_HISTORY] = 10000000
IRB.conf[:AUTO_INDENT] = true

class Object
  def find_me
    self.find_by_email 'cam@example.com'
  end
end
