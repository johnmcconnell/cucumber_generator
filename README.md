# CucumberGenerator

## Examples

```
rails g feature Model
```
produces the model features and step_definitions found [here](https://github.com/johnmcconnell/cucumber_generator_app/tree/master/features)

```
rails g feature LoginModel --user=user
```

produces the login_model features and step_definitions found [here](https://github.com/johnmcconnell/cucumber_generator_app/tree/master/features)

Lastly you can specify which requests you wish to support

For example:

```
rails g feature Model # runs the builders for show, index, new, edit, delete
rails g feature Model show index # runs the builder for show, index
```

## Installation

add to your gemfile

```
group :development do
  gem 'cucumber_generator'
end
```

## Legacy from bundler?

This project rocks and uses MIT-LICENSE.
