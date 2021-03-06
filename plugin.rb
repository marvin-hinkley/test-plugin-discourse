# name: Test
# about: testing the plugin installation stuff with things
# version: 0.1.0
# author: Marvin Hinkley
# url: https://github.com/marvin-hinkley/test-plugin-discourse

enabled_site_setting :test_enabled

class Test
  def initialize(stuff)
    @stuff = stuff
  end

  def do_stuff
    @stuff
  end
end

after_initialize do
  testObj = Test.new(SiteSetting.test_string)
end
