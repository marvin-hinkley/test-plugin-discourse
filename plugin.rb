# name: Test
# about: testing the plugin installation stuff with things
# version: 0.1.0
# author: Marvin Hinkley
# url: https://github.com/marvin-hinkley/test-plugin-discourse

enabled_site_setting :test_setting

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
  register_javascript <<JS
console.log('I am from the test plugin!');
JS
end
