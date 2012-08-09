class PubSub
  constructor: (@events=[]) ->
  subscribe: (name, func) ->
    if @events[name]
      @events[name].push(func)
    else
      @events[name] = [func]
  publish: (name) ->
    if @events[name]
      for event in @events[name]
        event()
  unsubscribe: (name) ->
    delete @events[name]
