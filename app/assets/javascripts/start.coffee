# Typography

$('pre').addClass('prettyprint')

# Modal

(($) ->
  $.extend sModal: (options) ->
    defaults =
      element: '.s-modal'

    _ = $.extend(defaults, options)

    $(':not(' + _.element + ')').not(_.element).click( ->
      $(_.element + '[style="display: block;"]').fadeOut 'fast'
    ).children().click (e) ->
      false if $(_.element + '[style="display: block;"]').length > 0
    $(_.element + ' .s-close').click -> $(this).closest(_.element).fadeOut()

) jQuery

$.sModal()

# End Concatenation

$.fn.s_endconcat = () -> 
  try
    @each -> $(@).html ($(@).html().replace (new RegExp '((?:[^ ]* ){' + ($(@).html().match(/\s/g).length - 1) + '}[^ ]*) '), "$1&nbsp;")
  catch e
    return false
$('.s-endconcat').s_endconcat()

# Growls

growls = "[class^=\"s-growls-growl\"]"
(($) ->
  $("body").append "<div id=\"s-growls\"></div>"
  $.extend sGrowl: (options) ->
    defaults =
      delay: 0
      color: "green"
      container: "#s-growls"
      text: ""
      class: ""
      icon: ""

    _ = $.extend(defaults, options)
    
    # FORMATTING
    _.fIcon = ((if _.icon then "<span class='fa fa-" + _.icon + "'></span> " else ""))
    _.fTitle = ((if _.title then "<h5>" + _.fIcon + _.title + "</h5>" else ""))
    _.fText = ((if _.text then "<p>" + _.text + "</p>" else ""))
    
    # UNIQUE IDENTIFICATION
    @id = Math.floor(Math.random() * 1000)
    
    # CREATE FULL DOM OBJECT
    @html = document.createElement("div")
    @html.className = "s-tile s-tile-" + @id + " s-" + _.color + " " + _.class
    xHtml = "<a style=\"pointer-events: auto;\" class=\"s-close\">&times;</a>"
    $(@html).html xHtml + _.fTitle + " " + _.fText
    
    # APPEND ALERT TO CONTAINER
    $(_.container).prepend @html

    # CLOSE GROWL
    $('.s-tile .s-close').click -> 
      $(@).closest('.s-tile').fadeOut('fast')
    
    # SET DELAYS
    if _.delay > 0
      fn = ((delay, id) ->
        setTimeout (->
          $(".s-tile-" + id).fadeOut()
        ), delay
      )(_.delay, @id)

) jQuery

# Dropdowns

$('.s-dropdown').click ->  $(this).parent().toggleClass('dropdown_open')

# Dropdowns - alt

window.clickMenu = (id, $) ->
  _ = @
  $ = window.$ if typeof $ != 'function'
  @menu =
    menu:             $ 'nav.mainHeader#' + id
    menu_item:        $ '#' + id + ' .mainHeader-menu-item > a'
    menu_item_menu_item:        $ '#' + id + ' .mainHeader-menu-item-menu-item > a'
    open:             false
    targeted:         false
    closeMenu:        -> $(_.menu.menu).removeClass 'clicked'; _.menu.clearHovers(); @open = false
    openMenu:         -> $(_.menu.menu).addClass 'clicked'; @open = true
    clearHovers:      -> $(_.menu.menu_item).removeClass('hover').find('.mainHeader-menu-item-menu').hide();return
    init:             ->
      $(_.menu.menu_item_menu_item)
        .mouseover -> $(@).focus()
        .click ->
          location.href = ($(@).attr 'href')
      $(_.menu.menu_item)
        .click ->
          if _.menu.open && _.menu.targeted 
            _.menu.closeMenu() 
          else 
            if _.menu.targeted
              $(@).addClass('hover')
            _.menu.openMenu()
        .hover(
          -> 
            _.menu.targeted = true
          -> 
            _.menu.targeted = false
            _.menu.clearHovers() if !_.menu.open
        )
        .mouseover ->
          _.menu.clearHovers()
          $(_.menu.menu_item).blur()
          $(@).addClass 'hover'
          false

      $('html').click -> _.menu.closeMenu() if (!_.menu.targeted && _.menu.open )

      $(window).blur -> _.menu.closeMenu()
      ( 
        $('iframe').contents().keydown -> _.menu.closeMenu()
        $($('iframe').get(0).contentWindow.document).click -> _.menu.closeMenu()
      ) if $('iframe').length > 0  

  _.menu.init()

# MISC

# This makes the click surface of the fixed pane "hide" while the user tries to inspect element.

(($) ->
  $.fn.sFixedPane = ->
    $(@).mouseover ->
      $(@).addClass('scrollable')
    $(@).mouseout ->
      $(@).removeClass('scrollable')
) jQuery
$('.s-fixedPane').sFixedPane()