{log, createHotWithPostCreate, arrayWith} = require 'art-foundation'
{ParsePusherDbModel} = require 'art-flux-parse'

createHotWithPostCreate module, class Chat extends ParsePusherDbModel

  @fields
    user:     @fieldTypes.requiredTrimmedString
    message:  @fieldTypes.requiredTrimmedString
    chatRoom: @fieldTypes.requiredTrimmedString

  @query "chatRoom",
    customParseQuery: (chatRoom, query, models) ->
      log "customParseQuery chatRoom: #{chatRoom}"
      query.equalTo "chatRoom", chatRoom
      query.descending "lastPostCreatedAt"

  postMessage: (user, message) ->
    @post
      user: user
      message: message
      chatRoom: "main"