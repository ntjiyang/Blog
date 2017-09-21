$(document).ready(function(){
	//------------------------------TWITTER CODE----------------------------------------------------------------------------
$.getJSON('http://twitter.com/status/user_timeline/mojo.json?count=3&callback=?', function(data){
		$.each(data, function(index, item){
			$('#twitter_update_list').append('<div class="tweet"><p>' + item.text.linkify() + '</p><p>' + relative_time(item.created_at) + '</p><span class="widget-border"></span></div>');
		});

	});
	
	//------------------------------CODE FOR THE TOOLTIPS----------------------------------------------------------------------------
	// create custom animation algorithm for jQuery called "bouncy"
    $.easing.bouncy = function (x, t, b, c, d) {
        var s = 1.70158;
        if ((t/=d/2) < 1) return c/2*(t*t*(((s*=(1.525))+1)*t - s)) + b;
        return c/2*((t-=2)*t*(((s*=(1.525))+1)*t + s) + 2) + b;
    }

    // create custom tooltip effect for jQuery Tooltip
    $.tools.tooltip.addEffect(
        "bouncy",

	// opening animation
	function(done) {
	    this.getTip().animate({top: '-=10'}, 500, 'bouncy', done).show();
	},

	// closing animation
	function(done) {
	    this.getTip().animate({top: '+=0'}, 500, 'bouncy', function()  {
		$(this).hide();
		done.call();
	    });
	}
    );
    
        $("img[title], a[title]").tooltip({effect: 'bouncy'});
	
	
	//--------------------HANDLING SOME HOVER EFFECTS ON THE SITE---------------------------------------------------------
	//This little chunk of code handles some hover effects for the categories widget. 

	
	//------------------------------MAKING THE TABS WIDGET WORK----------------------------------------------------------------------------
	//calling the pagination script for the blog and the lightbox script for the galleries.
	 
	
});

//this function makes the links active in the twitter feeds. without it, the links are just text
String.prototype.linkify = function() {
	return this.replace(/[A-Za-z]+:\/\/[A-Za-z0-9-_]+\.[A-Za-z0-9-_:%&\?\/.=]+/, function(m) {
		return m.link(m);
	});
};

//this function makes the date stamp in the feed look like a human readable date. 
function relative_time(time_value) {
  var values = time_value.split(" ");
  time_value = values[1] + " " + values[2] + ", " + values[5] + " " + values[3];
  var parsed_date = Date.parse(time_value);
  var relative_to = (arguments.length > 1) ? arguments[1] : new Date();
  var delta = parseInt((relative_to.getTime() - parsed_date) / 1000);
  delta = delta + (relative_to.getTimezoneOffset() * 60);

  var r = '';
  if (delta < 60) {
	r = 'a minute ago';
  } else if(delta < 120) {
	r = 'couple of minutes ago';
  } else if(delta < (45*60)) {
	r = (parseInt(delta / 60)).toString() + ' minutes ago';
  } else if(delta < (90*60)) {
	r = 'an hour ago';
  } else if(delta < (24*60*60)) {
	r = '' + (parseInt(delta / 3600)).toString() + ' hours ago';
  } else if(delta < (48*60*60)) {
	r = '1 day ago';
  } else {
	r = (parseInt(delta / 86400)).toString() + ' days ago';
  }
  return r;
}
