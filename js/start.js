// Generated by CoffeeScript 1.6.3
(function(){var e;$("pre").addClass("prettyprint");(function(e){return e.extend({sModal:function(t){var n,r;n={element:".s-modal"};r=e.extend(n,t);e(":not("+r.element+")").not(r.element).click(function(){return e(r.element+'[style="display: block;"]').fadeOut("fast")}).children().click(function(t){if(e(r.element+'[style="display: block;"]').length>0)return!1});return e(r.element+" .s-close").click(function(){return e(this).closest(r.element).fadeOut()})}})})(jQuery);$.sModal();$.fn.s_endconcat=function(){var e;try{return this.each(function(){return $(this).html($(this).html().replace(new RegExp("((?:[^ ]* ){"+($(this).html().match(/\s/g).length-1)+"}[^ ]*) "),"$1&nbsp;"))})}catch(t){e=t;return!1}};$(".s-endconcat").s_endconcat();e='[class^="s-growls-growl"]';(function(e){e("body").append('<div id="s-growls"></div>');return e.extend({sGrowl:function(t){var n,r,i,s;n={delay:0,color:"green",container:"#s-growls",text:"","class":"",icon:""};s=e.extend(n,t);s.fIcon=s.icon?"<span class='fa fa-"+s.icon+"'></span> ":"";s.fTitle=s.title?"<h5>"+s.fIcon+s.title+"</h5>":"";s.fText=s.text?"<p>"+s.text+"</p>":"";this.id=Math.floor(Math.random()*1e3);this.html=document.createElement("div");this.html.className="s-tile s-tile-"+this.id+" s-"+s.color+" "+s["class"];i='<a style="pointer-events: auto;" class="s-close">&times;</a>';e(this.html).html(i+s.fTitle+" "+s.fText);e(s.container).prepend(this.html);e(".s-tile .s-close").click(function(){return e(this).closest(".s-tile").fadeOut("fast")});if(s.delay>0)return r=function(t,n){return setTimeout(function(){return e(".s-tile-"+n).fadeOut()},t)}(s.delay,this.id)}})})(jQuery);$(".s-dropdown").click(function(){return $(this).parent().toggleClass("dropdown_open")});window.clickMenu=function(e,t){var n;n=this;typeof t!="function"&&(t=window.$);this.menu={menu:t("nav.mainHeader#"+e),menu_item:t("#"+e+" .mainHeader-menu-item > a"),menu_item_menu_item:t("#"+e+" .mainHeader-menu-item-menu-item > a"),open:!1,targeted:!1,closeMenu:function(){t(n.menu.menu).removeClass("clicked");n.menu.clearHovers();return this.open=!1},openMenu:function(){t(n.menu.menu).addClass("clicked");return this.open=!0},clearHovers:function(){t(n.menu.menu_item).removeClass("hover").find(".mainHeader-menu-item-menu").hide()},init:function(){t(n.menu.menu_item_menu_item).mouseover(function(){return t(this).focus().click(function(){return location.href=t(this).attr("href")})});t(n.menu.menu_item).click(function(){if(n.menu.open&&n.menu.targeted)return n.menu.closeMenu();n.menu.targeted&&t(this).addClass("hover");return n.menu.openMenu()}).hover(function(){return n.menu.targeted=!0},function(){n.menu.targeted=!1;if(!n.menu.open)return n.menu.clearHovers()}).mouseover(function(){n.menu.clearHovers();t(n.menu.menu_item).blur();t(this).addClass("hover");return!1});t("html").click(function(){if(!n.menu.targeted&&n.menu.open)return n.menu.closeMenu()});t(window).blur(function(){return n.menu.closeMenu()});if(t("iframe").length>0){t("iframe").contents().keydown(function(){return n.menu.closeMenu()});return t(t("iframe").get(0).contentWindow.document).click(function(){return n.menu.closeMenu()})}}};return n.menu.init()};(function(e){return e.fn.sFixedPane=function(){e(this).mouseover(function(){return e(this).addClass("scrollable")});return e(this).mouseout(function(){return e(this).removeClass("scrollable")})}})(jQuery);$(".s-fixedPane").sFixedPane()}).call(this);