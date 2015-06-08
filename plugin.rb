# name: Test
# about: testing the plugin installation stuff with things
# version: 0.1.0
# author: Marvin Hinkley

class Test
  def initialize(stuff)
    @stuff = stuff
  end

  def do_stuff
    @stuff
  end
end

after_initialize do
  testObj = Test.new('things')
end
