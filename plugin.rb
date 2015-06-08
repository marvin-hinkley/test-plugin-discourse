def name
  'test'
end

register_javascript <<JS
  alert('The test plugin is installed!');
JS
