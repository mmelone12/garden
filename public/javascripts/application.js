// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

jQuery.ajaxSetup({ 'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")} })

function _ajax_request(url, data, callback, type, method) {
    if (jQuery.isFunction(data)) {
        callback = data;
        data = {};
    }
    return jQuery.ajax({
        type: method,
        url: url,
        data: data,
        success: callback,
        dataType: type
        });
}

jQuery.extend({
    put: function(url, data, callback, type) {
        return _ajax_request(url, data, callback, type, 'PUT');
    },
    delete_: function(url, data, callback, type) {
        return _ajax_request(url, data, callback, type, 'DELETE');
    }
});

jQuery.fn.submitWithAjax = function() {
  this.unbind('submit', false);
  this.submit(function() {
    $.post(this.action, $(this).serialize(), null, "script");
    return false;
  })

  return this;
};

//Send data via get if JS enabled
jQuery.fn.getWithAjax = function() {
  this.unbind('click', false);
  this.click(function() {
    $.get($(this).attr("href"), $(this).serialize(), null, "script");
    return false;
  })
  return this;
};

//Send data via Post if JS enabled
jQuery.fn.postWithAjax = function() {
  this.unbind('click', false);
  this.click(function() {
    $.post($(this).attr("href"), $(this).serialize(), null, "script");
    return false;
  })
  return this;
};


jQuery.fn.putWithAjax = function() {
  this.unbind('click', false);
  this.click(function() {
    $.put($(this).attr("href"), $(this).serialize(), null, "script");
    return false;
  })
  return this;
};



jQuery.fn.deleteWithAjax = function() {
  this.removeAttr('onclick');
  this.unbind('click', false);
  this.click(function() {
    $.delete_($(this).attr("href"), $(this).serialize(), null, "script");
    return false;
  })
  return this;
};


//This will "ajaxify" the links
function ajaxLinks(){
    $('.ajaxForm').submitWithAjax();
    $('a.get').getWithAjax();
    $('a.post').postWithAjax();
    $('a.put').putWithAjax();
    $('a.delete').deleteWithAjax();
}

$(document).ready(function() {

// All non-GET requests will add the authenticity token
  // if not already present in the data packet
 $(document).ajaxSend(function(event, request, settings) {
       if (typeof(window.AUTH_TOKEN) == "undefined") return;
       // IE6 fix for http://dev.jquery.com/ticket/3155
       if (settings.type == 'GET' || settings.type == 'get') return;

       settings.data = settings.data || "";
       settings.data += (settings.data ? "&" : "") + "authenticity_token=" + encodeURIComponent(window.AUTH_TOKEN);
     });

  ajaxLinks();
});

$(document).ready(function(){
				//Examples of how to assign the ColorBox event to elements
				$("a[rel='example1']").colorbox();
				$("a[rel='example2']").colorbox({transition:"fade"});
				$("a[rel='example3']").colorbox({transition:"none", width:"75%", height:"75%"});
				$("a[rel='example4']").colorbox({slideshow:true});
				$(".example5").colorbox();
				$(".example6").colorbox({iframe:true, innerWidth:425, innerHeight:344});
				$(".example7").colorbox({width:"80%", height:"80%", iframe:true});
				$(".example8").colorbox({width:"50%", inline:true, href:"#inline_example1"});
				$(".example9").colorbox({
					onOpen:function(){ alert('onOpen: colorbox is about to open'); },
					onLoad:function(){ alert('onLoad: colorbox has started to load the targeted content'); },
					onComplete:function(){ alert('onComplete: colorbox has displayed the loaded content'); },
					onCleanup:function(){ alert('onCleanup: colorbox has begun the close process'); },
					onClosed:function(){ alert('onClosed: colorbox has completely closed'); }
				});

				//Example of preserving a JavaScript event for inline calls.
				$("#click").click(function(){ 
					$('#click').css({"background-color":"#f00", "color":"#fff", "cursor":"inherit"}).text("Open this window again and this message will still be here.");
					return false;
				});
			}); 
		
$(document).ready(function(){
		$(".listselect").listselect();
	});                 
	
$(function() {
			$( "#resizable" ).resizable({
				containment: "#container"
			});
		}); 					
	
$(function() {
	$( "drag" ).draggable({ snap: true, grid: [ 20,20]});
	$( ".droppable" ).droppable({
		drop: function( event, ui ) {
			$( this )
				.addClass( "ui-state-highlight" )
				.find( "p" )
					.html( "Dropped!" );
			}
		});
	});	
	
$(function() {
		$( "#droppable1" ).droppable({
			drop: function( event, ui ) {
				$( this )
					.addClass( "ui-state-highlight" )
					.find( "p" )
						.html( "Dropped!" );
			}
		});
	});
	
$(function() {
    $('div.circle').mouseover(function() {
        $('div.outer-circle').addClass('hover');
        $('div.middle-circle').addClass('hover');
    });
    $('div.circle').mouseout(function() {
        $('div.outer-circle').removeClass('hover');
        $('div.middle-circle').removeClass('hover');
    });
});

$(function() {
		// there's the gallery and the trash
		var $gallery = $( "#gallery" ),
			$trash = $( "#trash" );

		// let the gallery items be draggable
		$( "li", $gallery ).draggable({
			cancel: "a.ui-icon", // clicking an icon won't initiate dragging
			revert: "invalid", // when not dropped, the item will revert back to its initial position
			containment: $( "#demo-frame" ).length ? "#demo-frame" : "document", // stick to demo-frame if present
			helper: "clone",
			cursor: "move"
		});

		// let the trash be droppable, accepting the gallery items
		$trash.droppable({
			accept: "#gallery > li",
			activeClass: "ui-state-highlight",
			drop: function( event, ui ) {
				deleteImage( ui.draggable );
			}
		});

		// let the gallery be droppable as well, accepting items from the trash
		$gallery.droppable({
			accept: "#trash li",
			activeClass: "custom-state-active",
			drop: function( event, ui ) {
				recycleImage( ui.draggable );
			}
		});

		// image deletion function
		var recycle_icon = "<a href='link/to/recycle/script/when/we/have/js/off' title='Recycle this image' class='ui-icon ui-icon-refresh'>Recycle image</a>";
		function deleteImage( $item ) {
			$item.fadeOut(function() {
				var $list = $( "ul", $trash ).length ?
					$( "ul", $trash ) :
					$( "<ul class='gallery ui-helper-reset'/>" ).appendTo( $trash );

				$item.find( "a.ui-icon-trash" ).remove();
				$item.append( recycle_icon ).appendTo( $list ).fadeIn(function() {
					$item
						.animate({ width: "48px" })
						.find( "img" )
							.animate({ height: "36px" });
				});
			});
		}

		// image recycle function
		var trash_icon = "<a href='link/to/trash/script/when/we/have/js/off' title='Delete this image' class='ui-icon ui-icon-trash'>Delete image</a>";
		function recycleImage( $item ) {
			$item.fadeOut(function() {
				$item
					.find( "a.ui-icon-refresh" )
						.remove()
					.end()
					.css( "width", "96px")
					.append( trash_icon )
					.find( "img" )
						.css( "height", "72px" )
					.end()
					.appendTo( $gallery )
					.fadeIn();
			});
		}

		// image preview function, demonstrating the ui.dialog used as a modal window
		function viewLargerImage( $link ) {
			var src = $link.attr( "href" ),
				title = $link.siblings( "img" ).attr( "alt" ),
				$modal = $( "img[src$='" + src + "']" );

			if ( $modal.length ) {
				$modal.dialog( "open" );
			} else {
				var img = $( "<img alt='" + title + "' width='384' height='288' style='display: none; padding: 8px;' />" )
					.attr( "src", src ).appendTo( "body" );
				setTimeout(function() {
					img.dialog({
						title: title,
						width: 400,
						modal: true
					});
				}, 1 );
			}
		}

		// resolve the icons behavior with event delegation
		$( "ul.gallery > li" ).click(function( event ) {
			var $item = $( this ),
				$target = $( event.target );

			if ( $target.is( "a.ui-icon-trash" ) ) {
				deleteImage( $item );
			} else if ( $target.is( "a.ui-icon-zoomin" ) ) {
				viewLargerImage( $target );
			} else if ( $target.is( "a.ui-icon-refresh" ) ) {
				recycleImage( $item );
			}

			return false;
		});
	});
	
$(function(){
  $(".gardenselect").click(function(){
    $(this).hide( "highlight" )
	       .find('input:checkbox').prop("checked", true)
    });
});  
	 