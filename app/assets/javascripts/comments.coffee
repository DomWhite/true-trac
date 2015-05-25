window.client = new Faye.Client('/faye')
 
jQuery ->
  try
   client.unsubscribe '/comments'
  catch
   console?.log "Can't unsubscribe." # print a message only if console is defined

  client.subscribe '/comments', (payload) ->
    $('#comments').find('.media-list').prepend(payload.message) if payload.message

  $('#new_comment').submit -> $(this).find("input[type='submit']").val('Sending...').prop('disabled', true)