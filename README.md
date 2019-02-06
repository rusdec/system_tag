# SystemTag
Rails plugin provides variables from .yml files to fronend.

Like superlite version of gem gon.

## Usage
### Add initialization file
1. Create `config/initialize/system_tag.rb`:

```ruby
SystemTag::YamlLoader.configure do |config|
  config.keys_file = Rails.root.join('config/system_tag.yml')
  config.data_file = Rails.root.join('config/application.yml')
end
```
- `keys_file` - .yml file with list of keys provided to frontend
- `data_file` - .yml file with with application variables

### Add keys file
For example we use `config/application.yml` and it looks like:

```yml
production:
  AGENTS_ADDRESS: https://agents.mysite.ru
  NODE_ADDRESS: api.mysite.ru:9000
  ...
```

and we wants provide `NODE_ADDRESS` key to the frontend. Then we creates `config/system_tag.yml` which looks like:

```yml
production:
  - NODE_ADDRESS
```
### Add tags to views
Next we need add tags to our view. For example in layout `layouts/_header.slim`

```slim
,,,
  = SystemTag.tags
  ,,,
```
### Add system_tag.es6 to application
- Copy `system_tag.es6` to your assets javascripts directory

```bash
cp PLUGGIN_DIR/app/assets/javascripts/system_tag.es6 APP_DIR/app/assets/javascripts/
```
- Add it to application.js

```js
...
//= require system_tag
,,,
```

### Usage in frontend
- Directly: `SystemTag.node_address // => api.mysite.ru:9000`
- Using function `tag()`:`SystemTag.tag('node_address') // => api.mysite.ru:9000`


## Installation
Add this line to your application's Gemfile:

```ruby
gem 'system_tag', git: 'https://github.com/rusdec/system_tag'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install system_tag
```

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
