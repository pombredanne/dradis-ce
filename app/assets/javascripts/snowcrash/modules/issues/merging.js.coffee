jQuery ->
  if ($('body.issues.merging').length)

    $('.change_merge_option').click ->
      $('.merge_option').toggle()
      $("input[name='id']").prop('disabled', (i,v) -> !v)
      false

   $('.expand').click ->
     $(@).next().toggle()
     text = "collapse"
     text = "expand" if $(@).find('small').html() == "collapse"
     $(@).find('small').html(text)
     false
