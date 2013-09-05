
jQuery ->
  $('#cars-result').imagesLoaded ->
    $('#cars-result').isotope(
      itemSelector : '.box'
      layoutMode : 'masonry'
      animateOptions: {
        duration: 750,
        easing: 'linear',
        queue: false
      }
    )

  $('.show-click').click ->
    if $(this).text()=='more info'
      $(this).text('less info')
      $(this).parent('.box').find('.expand').slideDown 'fast', ->
        $('#cars-result').isotope('reLayout')
    else 
      $(this).text('more info')
      $(this).parent('.box').find('.expand').slideUp 'fast', ->
        $('#cars-result').isotope('reLayout')

      
