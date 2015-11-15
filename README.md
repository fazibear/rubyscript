# ruby_script

Attempt to convert ruby syntax to JS syntax

## usage

```
$ bundle install
$ ruby lib/ruby_script.rb examples/test.rb
```

## input

```ruby
def costam(a,b,c)
  5
end

Test.new.x(e)

consol.log(costam(4))
```

## output
```js
var costam = function(a, b, c){
  return 5;
}

Test.new().x(e())
consol().log(costam(4))
```
