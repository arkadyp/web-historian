<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://www.facebook.com/2008/fbml" class="ie ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://www.facebook.com/2008/fbml" class="ie ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://www.facebook.com/2008/fbml" class="ie ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://www.facebook.com/2008/fbml" class="ie ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://www.facebook.com/2008/fbml"> <!--<![endif]-->
<head>
	<title>NFL.com - Official Site of the National Football League</title>
	
	<!-- BEGIN DECORATOR yui/home/home -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=1024" /><link rel="shortcut icon" href="http://i.nflcdn.com/static/site/5.20/img/favicon.png" type="image/png" />
	<link rel="apple-touch-icon" href="http://i.nflcdn.com/static/site/5.20/img/apple/apple-touch-icon-57x57.png" />
	<link rel="apple-touch-icon" sizes="72x72" href="http://i.nflcdn.com/static/site/5.20/img/apple/apple-touch-icon-72x72.png" />
	<link rel="apple-touch-icon" sizes="114x114" href="http://i.nflcdn.com/static/site/5.20/img/apple/apple-touch-icon-114x114.png" />
	<link href="http://m.nfl.com/" media="handheld" rel="alternate" title="Mobile/PDA" type="text/html" />
<!-- BEGIN TAG custom-fonts fonts="NFLEndzoneSansCondMedium, NFLEndzoneSlabBold, NFLEndzoneTechBold" -->



<script>
(function () {
	var NOOP = function () {},
		embedFonts = function() {
			if (!window.YUI) {
				return setTimeout(embedFonts, 500);
			}
			
  				YUI.add("font-endzonesans-condmedium", NOOP);
				
  				YUI.add("font-endzoneslab-bold", NOOP);
				
  				YUI.add("font-endzonetech-bold", NOOP);
				
		};
	embedFonts();
}());
</script>








<!-- BEGIN TAG stylesheet files="font-endzonesans-condmedium/font-endzonesans-condmedium.css,font-endzoneslab-bold/font-endzoneslab-bold.css,font-endzonetech-bold/font-endzonetech-bold.css" media="all" type="" -->


	
	
	
			
		
		<link href="http://combine.nflcdn.com/yui/min2/index.php?5.2015455513012014116b82d05bfc54a6360fcb620bec6bb66003f7f5&amp;b=yui3%2Fstatic%2F5.20%2Fscripts%2Fmodules&amp;f=font-endzonesans-condmedium/font-endzonesans-condmedium.css,font-endzoneslab-bold/font-endzoneslab-bold.css,font-endzonetech-bold/font-endzonetech-bold.css" rel="stylesheet" media="handheld, all"/>
		
	
	


<!-- END TAG stylesheet -->

<!-- END TAG custom-fonts -->
<!-- END DECORATOR yui/home/home -->

	

	







<!-- BEGIN TAG stylesheet files="redesign/global-2010.css,modules/modules.css,home-2011/home.css,teams/colors.css,footer-2012/footer-2012.css" media="" type="" -->


	
	
	
			
		
		<link href="http://combine.nflcdn.com/yui/min2/index.php?5.2015455513012014116b82d05bfc54a6360fcb620bec6bb66003f7f5&amp;b=yui3%2Fstatic%2F5.20%2Fstyles&amp;f=redesign/global-2010.css,modules/modules.css,home-2011/home.css,teams/colors.css,footer-2012/footer-2012.css" rel="stylesheet"/>
		
	
	


<!-- END TAG stylesheet -->

	<link rel="stylesheet" href="http://s.nflcdn.com/static/site/5.20/styles/header-2012/header-2012.css" type="text/css" media="screen" charset="utf-8"/>

    
	
<!-- BEGIN TAG mbox -->

<script>
if (!window.mboxCreate) {
	document.write('<scri' + 'pt src="http://s.nflcdn.com/static/site/5.20/scripts/analytics/mbox.js"><' + '/scr' + 'ipt>');
	document.write('<scri' + 'pt src="//nfl.demdex.net/event?d_stuff=1&d_dst=1&d_rtbd=json&d_cts=1&d_cb=aam_tnt_cb"><' + '/scr' + 'ipt>');
}
</script>


  
  

<!-- END TAG mbox -->


	
  
  
    <!-- BEGIN INCLUDE global/nfl-constants -->
    <script>/* SS_TYPE : SB */


(function(){
	try{
	var m = navigator.userAgent.match(/MSIE ([^;]*)|Trident.*; rv:([0-9.]+)/),
		numberify = function(s) {
			var c = 0;
			return parseFloat(s.replace(/\./g, function() {
				return (c++ === 1) ? '' : '.';
			}));
		},
		ieVer;

	if (m && (m[1] || m[2])) {
		ieVer = numberify(m[1] || m[2]);
	}

	if(ieVer){
		if(window.location.href.indexOf('partner/scorestrip') != -1){
			setTimeout(function(){
				if(nfl && !nfl.constants.IS_MOBILE){
					nfl.Y.use('node', function(Y){
						Y.one('body').setStyles({overflow: 'hidden'});
					});
				}
			}, 1000);
		}
		setTimeout(function(){
			if(nfl && !nfl.constants.IS_MOBILE){
				nfl.Y.use('node', function(Y){
					Y.one('#scorestrip.responsive') && Y.one('#scorestrip.responsive').setStyles({overflowY: 'hidden'});
				});
			}
		}, 1000);
	}
	}catch(err){}
})();







if (window.location.href.search('nfl.com/scores') > -1){
	window.useYUIQueryString = true;
}
/* REWARDS_ENABLED : true */

(function (w) {
  "use strict";
  var nfl = w.nfl = w.nfl || {};
  nfl.constants = {
    ASSET_VERSION:            "5.20",
    ASSET_BUILD:              "15455513012014116b82d05bfc54a6360fcb620bec6bb66003f7f5",
    IMAGE_PATH:               "http:\/\/i.nflcdn.com\/static\/site\/5.20",
    STYLE_PATH:               "http:\/\/s.nflcdn.com\/static\/site\/5.20",
    SCRIPT_PATH:              "http:\/\/s.nflcdn.com\/static\/site\/5.20",
    FLASH_PATH:               "http:\/\/flash.static.nfl.com\/static\/site\/5.20",
    ENV:                      "PROD",
    IS_MOBILE:                false,
    CARRIER:                  "",
    ID_MANAGER:               "https:\/\/id2.s.nfl.com",
    ECM_IMAGE_PATH:           "http:\/\/static.nfl.com\/static\/content\/",
    SEARCH_DOMAIN:            "search.nfl.com",
    SITELIFE_URL:             "http:\/\/pluck.nfl.com",
    SITE_URL:                 "http:\/\/www.nfl.com",
    FANTASY_DOMAIN:           "http:\/\/fantasy.nfl.com",
    FANTASY_API:              "http:\/\/api.fantasy.nfl.com",
    PLAYOFF_CHALLENGE_DOMAIN: "http:\/\/playoffchallenge.fantasy.nfl.com",
    PLAYOFF_CHALLENGE_API:    "http:\/\/api.playoffchallenge.fantasy.nfl.com",
    FEEDS_URL:                "http:\/\/feeds.nfl.com",
    PREDICTPICK_DOMAIN:       "http:\/\/predictpick.nfl.com",
    FACEBOOK_APP_ID:          "108273802559405",
    TWITTER_ID:               "DkWLqcP3j8i9wHuJ7fiw",
    YUI_ENABLED:              true,
    YUI_COMBO_URL:            "http:\/\/combine.nflcdn.com\/yui\/min2\/index.php",
    YUI_DEPLOY_URL:           "http:\/\/s.nflcdn.com\/yui",
    YUI_VERSION:              "3.10.3",
    NFL_COMBO_ENABLED:        true,
    NFL_COMBO_URL:            "http:\/\/combine.nflcdn.com\/yui\/min2\/index.php",
    NFL_MIN_ENABLED:          false,
    COUNTRY_CODE:             "us",
    ET_OFFSET:                (function () {
      var offset  = ("-0500").match(/([\+\-]\d\d)(\d\d)/),
        hours   = parseInt(offset[1], 10),
        minutes = parseInt(offset[2], 10);

      return (hours + (minutes / 60)) * 60 * 60 * 1000;
    }()),
    GIGYA_CONF: {
      APIKey: "2_kMCvXUlFCZJhwaNXbxzePaXPYb9T__rgiF5y7EnWuEM5a84cueVv-MkPRKjVFc31",
      enabledProviders: "facebook,twitter,google,yahoo,messenger",
      facebookExtraPermissions: "offline_access",
      cid: w.location.pathname.substr(0, 100),
      shortURLs: "whenRequired",
      sessionExpiration: 0
    },
    SS_TYPE: 'SB'
  };



nfl.constants.SS_CONF = nfl.constants.SS_CONF || {};
nfl.constants.SS_CONF.trackingSponPixel = '';

	
		nfl.constants.REWARDS_ENABLED = true;
	
	


	
	
		nfl.constants.REWARDS_DRIVEBAR_ENABLED = true;
	

  // set s_account on the window, allow it to be overriden, and set it on nfl.constants too
  nfl.constants.ANALYTICS = w.s_account = w.s_account || "cbsnfl,nflmultiplatform";
  nfl.SHARED_VIDEO_URL = "http://combine.nflcdn.com/yui/min2/index.php?5.2015455513012014116b82d05bfc54a6360fcb620bec6bb66003f7f5&g=nflui";
}(window));</script>
    
      
      
        
      
      
      
      
    
    
      
        <script src="http://combine.nflcdn.com/yui/min2/index.php?5.2015455513012014116b82d05bfc54a6360fcb620bec6bb66003f7f5&amp;g=nflbase,nflui"></script>
        
      
      
    
    <!-- END INCLUDE global/nfl-constants -->
    <!-- BEGIN HEADER ADDITIONS -->
    
<style>
	
		body {
			background: #121212 url('http://static.nfl.com/static/content/public/static/img/head/jan-20-background.jpg') no-repeat top center;
		}
	


	
</style>

<script>
	(function(){
		try{
		var m = navigator.userAgent.match(/MSIE ([^;]*)|Trident.*; rv:([0-9.]+)/),
			numberify = function(s) {
				var c = 0;
				return parseFloat(s.replace(/\./g, function() {
					return (c++ === 1) ? '' : '.';
				}));
			},
			ieVer,
			isIE11orAbove = Object.hasOwnProperty.call(window, "ActiveXObject") && !window.ActiveXObject;;

        if (m && (m[1] || m[2])) {
        	ieVer = numberify(m[1] || m[2]);
        }

		if(ieVer && isIE11orAbove){
			YUI.add('swf', function (Y, NAME) {

				/**
				 * Embed a Flash applications in a standard manner and communicate with it
				 * via External Interface.
				 * @module swf
				 */

				var Event = Y.Event,
					SWFDetect = Y.SWFDetect,
					Lang = Y.Lang,
					uA = Y.UA,
					Node = Y.Node,
					Escape = Y.Escape,

				// private
					FLASH_CID = "clsid:d27cdb6e-ae6d-11cf-96b8-444553540000",
					FLASH_TYPE = "application/x-shockwave-flash",
					FLASH_VER = "10.0.22",
					EXPRESS_INSTALL_URL = "http://fpdownload.macromedia.com/pub/flashplayer/update/current/swf/autoUpdater.swf?" + Math.random(),
					EVENT_HANDLER = "SWF.eventHandler",
					possibleAttributes = {align: "", allowFullScreen: "", allowFullScreenInteractive: "", allowNetworking: "", allowScriptAccess: "", base: "", bgcolor: "", loop: "", menu: "", name: "", play: "", quality: "", salign: "", scale: "", tabindex: "", wmode: ""};

				/**
				 * The SWF utility is a tool for embedding Flash applications in HTML pages.
				 * @module swf
				 * @title SWF Utility
				 * @requires event-custom, node, swfdetect
				 */

				/**
				 * Creates the SWF instance and keeps the configuration data
				 *
				 * @class SWF
				 * @uses Y.Event.Target
				 * @constructor
				 * @param {String|HTMLElement} id The id of the element, or the element itself that the SWF will be inserted into.
				 *        The width and height of the SWF will be set to the width and height of this container element.
				 * @param {String} swfURL The URL of the SWF to be embedded into the page.
				 * @param {Object} p_oAttributes (optional) Configuration parameters for the Flash application and values for Flashvars
				 *        to be passed to the SWF. The p_oAttributes object allows the following additional properties:
				 *        <dl>
				 *          <dt>version : String</dt>
				 *          <dd>The minimum version of Flash required on the user's machine.</dd>
				 *          <dt>fixedAttributes : Object</dt>
				 *          <dd>An object literal containing one or more of the following String keys and their values: <code>align,
				 *              allowFullScreen, allowNetworking, allowScriptAccess, base, bgcolor, menu, name, quality, salign, scale,
				 *              tabindex, wmode.</code> event from the thumb</dd>
				 *        </dl>
				 */

				function SWF(p_oElement /*:String*/, swfURL /*:String*/, p_oAttributes /*:Object*/) {

					this._id = Y.guid("yuiswf");


					var _id = this._id;
					var oElement = Node.one(p_oElement);

					var p_oAttributes = p_oAttributes || {};

					var flashVersion = p_oAttributes.version || FLASH_VER;

					var flashVersionSplit = (flashVersion + '').split(".");
					var isFlashVersionRight = SWFDetect.isFlashVersionAtLeast(parseInt(flashVersionSplit[0], 10), parseInt(flashVersionSplit[1], 10), parseInt(flashVersionSplit[2], 10));
					var canExpressInstall = (SWFDetect.isFlashVersionAtLeast(8, 0, 0));
					var shouldExpressInstall = canExpressInstall && !isFlashVersionRight && p_oAttributes.useExpressInstall;
					var flashURL = (shouldExpressInstall) ? EXPRESS_INSTALL_URL : swfURL;
					var objstring = '<object ';
					var w, h;
					var flashvarstring = "yId=" + Y.id + "&YUISwfId=" + _id + "&YUIBridgeCallback=" + EVENT_HANDLER + "&allowedDomain=" + document.location.hostname;
					var isIE11orAbove = Object.hasOwnProperty.call(window, "ActiveXObject") && !window.ActiveXObject;

					Y.SWF._instances[_id] = this;
					if (oElement && (isFlashVersionRight || shouldExpressInstall) && flashURL) {
						objstring += 'id="' + _id + '" ';
						if (uA.ie && !isIE11orAbove) {
							objstring += 'classid="' + FLASH_CID + '" ';
						} else {
							objstring += 'type="' + FLASH_TYPE + '" data="' + Escape.html(flashURL) + '" ';
						}

						w = "100%";
						h = "100%";

						objstring += 'width="' + w + '" height="' + h + '">';

						if (uA.ie && !isIE11orAbove) {
							objstring += '<param name="movie" value="' + Escape.html(flashURL) + '"/>';
						}

						for (var attribute in p_oAttributes.fixedAttributes) {
							if (possibleAttributes.hasOwnProperty(attribute)) {
								objstring += '<param name="' + Escape.html(attribute) + '" value="' + Escape.html(p_oAttributes.fixedAttributes[attribute]) + '"/>';
							}
						}

						for (var flashvar in p_oAttributes.flashVars) {
							var fvar = p_oAttributes.flashVars[flashvar];
							if (Lang.isString(fvar)) {
								flashvarstring += "&" + Escape.html(flashvar) + "=" + Escape.html(encodeURIComponent(fvar));
							}
						}

						if (flashvarstring) {
							objstring += '<param name="flashVars" value="' + flashvarstring + '"/>';
						}

						objstring += "</object>";
						//using innerHTML as setHTML/setContent causes some issues with ExternalInterface for IE versions of the player
						oElement.set("innerHTML", objstring);

						this._swf = Node.one("#" + _id);
					} else {
						/**
						 * Fired when the Flash player version on the user's machine is
						 * below the required value.
						 *
						 * @event wrongflashversion
						 */
						var event = {};
						event.type = "wrongflashversion";
						this.publish("wrongflashversion", {fireOnce: true});
						this.fire("wrongflashversion", event);
					}
				}

				/**
				 * @private
				 * The static collection of all instances of the SWFs on the page.
				 * @property _instances
				 * @type Object
				 */

				SWF._instances = SWF._instances || {};

				/**
				 * @private
				 * Handles an event coming from within the SWF and delegate it
				 * to a specific instance of SWF.
				 * @method eventHandler
				 * @param swfid {String} the id of the SWF dispatching the event
				 * @param event {Object} the event being transmitted.
				 */
				SWF.eventHandler = function (swfid, event) {
					SWF._instances[swfid]._eventHandler(event);
				};

				SWF.prototype = {
					/**
					 * @private
					 * Propagates a specific event from Flash to JS.
					 * @method _eventHandler
					 * @param event {Object} The event to be propagated from Flash.
					 */
					_eventHandler: function (event) {
						if (event.type === "swfReady") {
							this.publish("swfReady", {fireOnce: true});
							this.fire("swfReady", event);
						} else if (event.type === "log") {
						} else {
							this.fire(event.type, event);
						}
					},

					/**
					 * Calls a specific function exposed by the SWF's
					 * ExternalInterface.
					 * @method callSWF
					 * @param func {String} the name of the function to call
					 * @param args {Array} the set of arguments to pass to the function.
					 */

					callSWF: function (func, args) {
						if (!args) {
							args = [];
						}
						if (this._swf._node[func]) {
							return(this._swf._node[func].apply(this._swf._node, args));
						} else {
							return null;
						}
					},

					/**
					 * Public accessor to the unique name of the SWF instance.
					 *
					 * @method toString
					 * @return {String} Unique name of the SWF instance.
					 */
					toString: function () {
						return "SWF " + this._id;
					}
				};

				Y.augment(SWF, Y.EventTarget);

				Y.SWF = SWF;


			}, '3.10.3', {"requires": ["event-custom", "node", "swfdetect", "escape"]});
		}
	}catch(err){}

})();
</script>
    <!-- END HEADER ADDITIONS -->
  


	



<!-- BEGIN TAG javascript files="home-2011/home.js,header-2012/header-2012.js" type="" -->
<!-- 
	nfl_combo_enabled: true
	nfl_combo_url:     http://combine.nflcdn.com/yui/min2/index.php
	nfl_min_enabled:   false
	use_debug:         false
-->

	
	
	
		
		<script src="http://combine.nflcdn.com/yui/min2/index.php?5.2015455513012014116b82d05bfc54a6360fcb620bec6bb66003f7f5&amp;b=yui3%2Fstatic%2F5.20%2Fscripts&amp;f=home-2011/home.js,header-2012/header-2012.js"></script>
	
	

<!-- END TAG javascript -->


	<!-- BEGIN PAGE home/home -->
	
	
	<meta name="uses-newconsole" content="true" />
	<!-- template refresh:  -->
	<!-- template pushdown: false -->
	
	
		<!-- widget:  SCORESTRIP, id 78, name: scorestrip  -->
		<meta name="scorestrip-show" content="true" /><meta name="scorestrip-type" content="DEFAULT" />
		
		
	
		<!-- widget:  AD, id 76, name: adtop  -->
		
		
		
			<meta name="show-banner-ads" content="true" /><meta name="banner-ad-type" content="728x90" />
	
	
	<meta name="verify-v1" content="v4opAlzTd34c6TfBQeu4HAehib/JKiLvkPcyXhEWBW0=" />
	<meta name="google-site-verification" content="IzXo8HRWE7WsX0dc9iWLOdMQ04Odhr34SACccEZYwnk" />
	<meta property="fb:app_id" content="108273802559405" />

	
<!-- BEGIN ECM widgets/home/head-section-additions -->
<meta http-equiv="refresh" content="420" />
<meta name="msvalidate.01" content="EDD46A4B9FD14F0A47471FDE9821BA49" />
<meta name="og:title" content="NFL.com - Official Site of the National Football League" />
<meta name="description" content="The official source for NFL news, video highlights, fantasy football, game-day coverage, schedules, stats, scores and more." />
<meta name="keywords" content="nfl, nfl.com, nfl scores, nfl schedule, nfl standing, www.nfl.com, nfl stats, nfl results, nfl football, nfl video, nfl video highlights, nfl live scores, football, nfl scoreboard, national football league, nfl football scores, nfl teams, nfl news" />
<meta name="apple-itunes-app" content="app-id=389781154, affiliate-data=at=11l7iA&ct=hp" />



<style type="text/css">
    .yui3-nfl-video-ad-clicktracker {position: absolute !important;}
   #rr-hot-topic-photo-gallery{margin-bottom:3rem !important;}
</style>











<script>

if(navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPad/i) || navigator.userAgent.match(/iPod/i)) { addEventListener("load", function(){ setTimeout(function(){ window.scrollTo(0,1); },1500); }, false); }


</script>

<!-- END ECM widgets/home/head-section-additions -->
	<!-- END PAGE home/home -->

	
	

	
	
	
		
		<!-- DEFAULT BROWSER PANEL  com.nfl.site.domain.browserpanel.BrowserPanel@2705b52 -->
	


	
		

			<script>
				YUI().use('browser-panels',function(Y){
				    // load background ad
				    // browserPanel.adClickable: false
				    Y.NFLAds.BrowserPanels.set('clickable',false);

				    
					
				 		Y.NFLAds.BrowserPanels.set('bgPosFromConsole','scroll center 50px');
					

				    // 'renderOnResponse' is set to true, so no need
				    /*Y.NFLAds.BrowserPanels.on('loaded',function(e){
				         // fires on double click response
			             Y.NFLAds.BrowserPanels.show();
			        });*/
			        Y.NFLAds.BrowserPanels.load("http://ad.doubleclick.net/adj/nfl.home/landing;s1=landing;slot=background;url=landing;nfl=ad;!category=;kw=;tile={tile};test=;sz=1x1;{aamnfl};u={aam_did}{dcopt}");  // load BP
				});

			</script>

		
		
	






</head>
<body id="com-nfl" class="">

	<!-- BEGIN DECORATOR yui/home/home -->
	<div style="display:none">
<script type="text/javascript">
// Send UserID via Prop36 to Omniture
var userIdFromCookie = decodeURIComponent(document.cookie).match(/u=([^&]*)/);
if (userIdFromCookie){s_analytics.prop36 = userIdFromCookie[1];}

var loggingOff = true,
	noOmnitureCall = noOmnitureCall || false;
//applyFireBugX();
isPageTypeError();
//moved all the functions into s_code_common.js until we can overhaul this atrocity

/**
* s_analytics.trackLinkClick will send a request to omniture indicating a minor level page event occurred
* @param {String} _propNum is a number provided by Marketing.  ex, prop1, prop14, prop35, etc.
* @param {String} _propValue is the value to place within the prop.  ex, Avatar, Friends_alerts, Message_Alerts, Global_Alerts, etc.
* TO DO: update this function so it accepts multiple prop values.
*/
s_analytics.trackLinkClick = function(_propNum, _propValue) {
	var s_analytics = s_gi(s_account),
	    propName    = 'prop' + _propNum;
	s_analytics.linkTrackEvents = "";
	s_analytics.linkTrackVars = "prop" + _propNum;
	s_analytics[propName] = _propValue;
	s_analytics.events = '';
	s_analytics.tl(true, 'o', _propValue);
	// should empty out the track properties after the call is made.  this is a directive from omniture.
	s_analytics.linkTrackEvents = "";
	s_analytics.linkTrackVars = "";
}

/* analytics_file: main.js */
function initAnalytics(){
	if (window.$ && $('analytics') && $('analytics').getAttribute('content') == 'schedule-release') {
		setChannel('schedules');
		setPageName('nfl:schedules:release');
		setHierarchy('nfl:schedules|release');
		return;
	}
	setChannel('home');
	setPageName('nfl:home:landing');
	setHierarchy('nfl:home|landing');
}



function applyFooter() {  
	if (noOmnitureCall == true) return;
	/******* ****** DO NOT ALTER ANYTHING BELOW THIS LINE ! **************/
	try { 
		var s_code = s_analytics.t();
		if (s_code) document.write(s_code);
	} catch(e) { 
		console.warn(e);
	}
}
/* Fix for Omniture code which fails VML element check. */
(function(w) { 
	if(w.Y && w.Y.UA.ie && w.Y.UA.ie <= 8){
		var fn = function(){
			var orig = s_analytics.ot; 
			if(!orig){
				setTimeout(fn, 1000);
			}else{
			   s_analytics.ot = function(el) { 
			       return el.tagUrn ? '' : ('shape,group,path,rect,roundrect,line,polyline,oval,image,curve,arc'.indexOf(el.tagName) != -1 ? '' : orig(el)); 
			   };
			}
		}
		fn();
	}
})(window);
</script>
</div>
	<div id="com-nfl-doc">
		
		<div id="hd" class="global">

      
      <div id="header-2012" >
        
<!-- Begin Header 2012  -->
<script>
nfl.use('cookie', 'node', function (Y) {
  Y.on('contentready', function () {
    if (Y.one('#homepage') != null) {
      if ( Y.Cookie.get('navigationTeamsDDOpen') === 'false') {
        Y.one('body').setStyle('backgroundPosition', 'center 0px');
      } else {
         Y.one('body').setStyle('backgroundPosition', 'center 40px');
      }
    }
  }, '#team-sites-header-bar');
})
</script>
<style>

#hd-scorestrip{text-align: left! important}
#hd-scorestrip .main-countdown-clock .top{margin-bottom: 0}
#b-nav-group-evolution a{text-decoration: none;}

</style>
  <script type="text/javascript" charset="utf-8" class="teams">
    "use strict";
    YUI().add("header-season", function(Y){
      Y.namespace("NFL.Header2012").season = { seasonType : "REG", year : 2013 };      
    });
    YUI().add("header-teams", function(Y){
      Y.namespace("NFL.Header2012").teams = {
        "BUF" : { "abbr" : "BUF", "url" : "http://www.buffalobills.com/", "teamPage":"/teams/buffalobills/profile?team=BUF", "city" : "Buffalo", "nickname" : "Bills", "conference": "AFC", "division": "East", "shopId" : "Buffalo_Bills_Gear/source/bm-nflcom-Header-Bills", "facebook": "BuffaloBills", "twitter": "BuffaloBills" },
        "MIA" : { "abbr" : "MIA", "url" : "http://www.miamidolphins.com/", "teamPage":"/teams/miamidolphins/profile?team=MIA", "city" : "Miami", "nickname" : "Dolphins", "conference": "AFC", "division": "East", "shopId" : "Miami_Dolphins_Gear/source/bm-nflcom-Header-Dolphins", "facebook": "MiamiDolphins", "twitter": "MiamiDolphins" },
        "NE" : { "abbr" : "NE", "url" : "http://www.patriots.com/", "teamPage":"/teams/newenglandpatriots/profile?team=NE", "city" : "New England", "nickname" : "Patriots", "conference": "AFC", "division": "East", "shopId" : "New_England_Patriots_Gear/source/bm-nflcom-Header-Patriots", "facebook": "newenglandpatriots", "twitter": "PATRIOTS" },
        "NYJ" : { "abbr" : "NYJ", "url" : "http://www.newyorkjets.com/", "teamPage":"/teams/newyorkjets/profile?team=NYJ", "city" : "New York", "nickname" : "Jets", "conference": "AFC", "division": "East", "shopId" : "New_York_Jets_Gear/source/bm-nflcom-Header-Jets", "facebook": "Jets", "twitter": "nyjets" },
        "BAL" : { "abbr" : "BAL", "url" : "http://www.baltimoreravens.com/", "teamPage":"/teams/baltimoreravens/profile?team=BAL", "city" : "Baltimore", "nickname" : "Ravens", "conference": "AFC", "division": "North", "shopId" : "Baltimore_Ravens_Gear/source/bm-nflcom-Header-Ravens", "facebook": "baltimoreravens", "twitter": "Ravens" },
        "CIN" : { "abbr" : "CIN", "url" : "http://www.bengals.com/", "teamPage":"/teams/cincinnatibengals/profile?team=CIN", "city" : "Cincinnati", "nickname" : "Bengals", "conference": "AFC", "division": "North", "shopId" : "Cincinnati_Bengals_Gear/source/bm-nflcom-Header-Bengals", "facebook": "bengals", "twitter": "Bengals" },
        "CLE" : { "abbr" : "CLE", "url" : "http://www.clevelandbrowns.com/", "teamPage":"/teams/clevelandbrowns/profile?team=CLE", "city" : "Cleveland", "nickname" : "Browns", "conference": "AFC", "division": "North", "shopId" : "Cleveland_Browns_Gear/source/bm-nflcom-Header-Browns", "facebook": "clevelandbrowns", "twitter": "OfficialBrowns" },
        "PIT" : { "abbr" : "PIT", "url" : "http://www.steelers.com/", "teamPage":"/teams/pittsburghsteelers/profile?team=PIT", "city" : "Pittsburgh", "nickname" : "Steelers", "conference": "AFC", "division": "North", "shopId" : "Pittsburgh_Steelers_Gear/source/bm-nflcom-Header-Steelers", "facebook": "steelers", "twitter": "steelers" },
        "HOU" : { "abbr" : "HOU", "url" : "http://www.houstontexans.com/", "teamPage":"/teams/houstontexans/profile?team=HOU", "city" : "Houston", "nickname" : "Texans", "conference": "AFC", "division": "South", "shopId" : "Houston_Texans_Gear/source/bm-nflcom-Header-Texans", "facebook": "HoustonTexans", "twitter": "HoustonTexans" },
        "IND" : { "abbr" : "IND", "url" : "http://www.colts.com/", "teamPage":"/teams/indianapoliscolts/profile?team=IND", "city" : "Indianapolis", "nickname" : "Colts", "conference": "AFC", "division": "South", "shopId" : "Indianapolis_Colts_Gear/source/bm-nflcom-Header-Colts", "facebook": "colts", "twitter": "nflcolts" },
        "JAC" : { "abbr" : "JAC", "url" : "http://www.jaguars.com/", "teamPage":"/teams/jacksonvillejaguars/profile?team=JAC", "city" : "Jacksonville", "nickname" : "Jaguars", "conference": "AFC", "division": "South", "shopId" : "Jacksonville_Jaguars_Gear/source/bm-nflcom-Header-Jaguars", "facebook": "jacksonvillejaguars", "twitter": "jaguarsinsider" },
        "TEN" : { "abbr" : "TEN", "url" : "http://www.titansonline.com/", "teamPage":"/teams/tennesseetitans/profile?team=TEN", "city" : "Tennessee", "nickname" : "Titans", "conference": "AFC", "division": "South", "shopId" : "Tennessee_Titans_Gear/source/bm-nflcom-Header-Titans", "facebook": "titans", "twitter": "tennesseetitans" },
        "DEN" : { "abbr" : "DEN", "url" : "http://www.denverbroncos.com/", "teamPage":"/teams/denverbroncos/profile?team=DEN", "city" : "Denver", "nickname" : "Broncos", "conference": "AFC", "division": "West", "shopId" : "Denver_Broncos_Gear/source/bm-nflcom-Header-Broncos", "facebook": "DenverBroncos", "twitter": "Denver_Broncos" },
        "KC" : { "abbr" : "KC", "url" : "http://www.kcchiefs.com/", "teamPage":"/teams/kansascitychiefs/profile?team=KC", "city" : "Kansas City", "nickname" : "Chiefs", "conference": "AFC", "division": "West", "shopId" : "Kansas_City_Chiefs_Gear/source/bm-nflcom-Header-Chiefs", "facebook": "KansasCityChiefs", "twitter": "kcchiefs" },
        "OAK" : { "abbr" : "OAK", "url" : "http://www.raiders.com/", "teamPage":"/teams/oaklandraiders/profile?team=OAK", "city" : "Oakland", "nickname" : "Raiders", "conference": "AFC", "division": "West", "shopId" : "Oakland_Raiders_Gear/source/bm-nflcom-Header-Raiders", "facebook": "Raiders", "twitter": "RAIDERS" },
        "SD" : { "abbr" : "SD", "url" : "http://www.chargers.com/", "teamPage":"/teams/sandiegochargers/profile?team=SD", "city" : "San Diego", "nickname" : "Chargers", "conference": "AFC", "division": "West", "shopId" : "San_Diego_Chargers_Gear/source/bm-nflcom-Header-Chargers", "facebook": "chargers", "twitter": "chargers" },
        "DAL" : { "abbr" : "DAL", "url" : "http://www.dallascowboys.com/", "teamPage":"/teams/dallascowboys/profile?team=DAL", "city" : "Dallas", "nickname" : "Cowboys", "conference": "NFC", "division": "East", "shopId" : "Dallas_Cowboys_Gear/source/bm-nflcom-Header-Cowboys", "facebook": "DallasCowboys", "twitter": "dallascowboys" },
        "NYG" : { "abbr" : "NYG", "url" : "http://www.giants.com/", "teamPage":"/teams/newyorkgiants/profile?team=NYG", "city" : "New York", "nickname" : "Giants", "conference": "NFL", "division": "East", "shopId" : "New_York_Giants_Gear/source/bm-nflcom-Header-Giants", "facebook": "newyorkgiants", "twitter": "Giants" },
        "PHI" : { "abbr" : "PHI", "url" : "http://www.philadelphiaeagles.com/", "teamPage":"/teams/philadelphiaeagles/profile?team=PHI", "city" : "Philadelphia", "nickname" : "Eagles", "conference": "NFC", "division": "East", "shopId" : "Philadelphia_Eagles_Gear/source/bm-nflcom-Header-Eagles", "facebook": "philadelphiaeagles", "twitter": "Eagles" },
        "WAS" : { "abbr" : "WAS", "url" : "http://www.redskins.com/", "teamPage":"/teams/washingtonredskins/profile?team=WAS", "city" : "Washington", "nickname" : "Redskins", "conference": "NFC", "division": "East", "shopId" : "Washington_Redskins_Gear/source/bm-nflcom-Header-Redskins", "facebook": "redskins", "twitter": "Redskins" },
        "CHI" : { "abbr" : "CHI", "url" : "http://www.chicagobears.com/", "teamPage":"/teams/chicagobears/profile?team=CHI", "city" : "Chicago", "nickname" : "Bears", "conference": "NFC", "division": "North", "shopId" : "Chicago_Bears_Gear/source/bm-nflcom-Header-Bears", "facebook": "ChicagoBears", "twitter": "ChicagoBears" },
        "DET" : { "abbr" : "DET", "url" : "http://www.detroitlions.com/", "teamPage":"/teams/detroitlions/profile?team=DET", "city" : "Detroit", "nickname" : "Lions", "conference": "NFC", "division": "North", "shopId" : "Detroit_Lions_Gear/source/bm-nflcom-Header-Lions", "facebook": "DetroitLions", "twitter": "DetroitLionsNFL" },
        "GB" : { "abbr" : "GB", "url" : "http://www.packers.com/", "teamPage":"/teams/greenbaypackers/profile?team=GB", "city" : "Green Bay", "nickname" : "Packers", "conference": "NFC", "division": "North", "shopId" : "Green_Bay_Packers_Gear/source/bm-nflcom-Header-Packers", "facebook": "Packers", "twitter": "packers" },
        "MIN" : { "abbr" : "MIN", "url" : "http://www.vikings.com/", "teamPage":"/teams/minnesotavikings/profile?team=MIN", "city" : "Minnesota", "nickname" : "Vikings", "conference": "NFC", "division": "North", "shopId" : "Minnesota_Vikings_Gear/source/bm-nflcom-Header-Vikings", "facebook": "minnesotavikings", "twitter": "VikingsFootball" },
        "ATL" : { "abbr" : "ATL", "url" : "http://www.atlantafalcons.com/", "teamPage":"/teams/atlantafalcons/profile?team=ATL", "city" : "Atlanta", "nickname" : "Falcons", "conference": "NFC", "division": "South", "shopId" : "Atlanta_Falcons_Gear/source/bm-nflcom-Header-Falcons", "facebook": "atlantafalcons", "twitter": "Atlanta_Falcons" },
        "CAR" : { "abbr" : "CAR", "url" : "http://www.panthers.com/", "teamPage":"/teams/carolinapanthers/profile?team=CAR", "city" : "Carolina", "nickname" : "Panthers", "conference": "NFC", "division": "South", "shopId" : "Carolina_Panthers_Gear/source/bm-nflcom-Header-Panthers", "facebook": "CarolinaPanthers", "twitter": "Panthers" },
        "NO" : { "abbr" : "NO", "url" : "http://www.neworleanssaints.com/", "teamPage":"/teams/neworleanssaints/profile?team=NO", "city" : "New Orleans", "nickname" : "Saints", "conference": "NFC", "division": "South", "shopId" : "New_Orleans_Saints_Gear/source/bm-nflcom-Header-Saints", "facebook": "neworleanssaints", "twitter": "Saints" },
        "TB" : { "abbr" : "TB", "url" : "http://www.buccaneers.com/", "teamPage":"/teams/tampabaybuccaneers/profile?team=TB", "city" : "Tampa Bay", "nickname" : "Buccaneers", "conference": "NFC", "division": "South", "shopId" : "Tampa_Bay_Buccaneers_Gear/source/bm-nflcom-Header-Bucs", "facebook": "tampabaybuccaneers", "twitter": "TBBuccaneers" },
        "ARI" : { "abbr" : "ARI", "url" : "http://www.azcardinals.com/", "teamPage":"/teams/arizonacardinals/profile?team=ARI", "city" : "Arizona", "nickname" : "Cardinals", "conference": "NFC", "division": "West", "shopId" : "Arizona_Cardinals_Gear/source/bm-nflcom-Header-Cardinals", "facebook": "arizonacardinals", "twitter": "AZCardinals" },
        "STL" : { "abbr" : "STL", "url" : "http://www.stlouisrams.com/", "teamPage":"/teams/st.louisrams/profile?team=STL", "city" : "St. Louis", "nickname" : "Rams", "conference": "NFC", "division": "West", "shopId" : "St_Louis_Rams/source/bm-nflcom-Header-Rams", "facebook": "Rams", "twitter": "STLouisRams" },
        "SF" : { "abbr" : "SF", "url" : "http://www.sf49ers.com/", "teamPage":"/teams/sanfrancisco49ers/profile?team=SF", "city" : "San Francisco", "nickname" : "49ers", "conference": "NFC", "division": "West", "shopId" : "San_Francisco_49ers_Gear/source/bm-nflcom-Header-49ers", "facebook": "SANFRANCISCO49ERS", "twitter": "49ers" },
        "SEA" : { "abbr" : "SEA", "url" : "http://www.seahawks.com/", "teamPage":"/teams/seattleseahawks/profile?team=SEA", "city" : "Seattle", "nickname" : "Seahawks", "conference": "NFC", "division": "West", "shopId" : "Seattle_Seahawks_Gear/source/bm-nflcom-Header-Seahawks", "facebook": "Seahawks", "twitter": "Seahawks" }
      };
    });

    nfl.use('node', function (Y) {
      Y.one('#b-nav-group-evolution a').on('click', function(e){
        e.stopImmediatePropagation();
      });
    });
  </script>

  
  <div class="logo">
     <a href="http://www.nfl.com/" title="Home Page">
      <img src="http://static.nfl.com/static/content//public/static/img/navigation/shields/header-shield.png" alt="NFL.com"/>
    </a>    
  </div>

  
  <div class="search-container">
    <form class="yui3-searchbox yui3-skin-sam" action="http://search.nfl.com/search" method="get">
      <div class="search-logo"></div>
      <div>
        <input type="text" name="query" maxlength="50" value="Search NFL.com" data-placeholder="Search NFL.com"/>
        <button class="submit" type="submit">Search</button>
      </div>
    </form>    
  </div>

  <!-- Signed in / Signed out Container -->
  <div class="user">
    <div id="signed-in" class="signed-in">
      <div class="float-left">
        Welcome, <a href="{userLink}" class="user-profile-link">{user}</a>
      </div>      
      <div class="user-profile float-left">
        <a class="arrow-container" href="#">
          <i class="profile-down-arrow"></i>
        </a>
        <div class="links">
          <div class="header">
            <div class="float-right">
              <a href="http://www.nfl.com/fans/settings" class="gray">
                <i class="settings"></i>
                MANAGE
              </a>
            </div>
            MY ACCOUNT
          </div>
          <ul>
            <li><a href="#" class="profile">My Profile</a></li>
            <li><a href="/rewards/myrewards" class="rewards">My Rewards</a></li>
            <li><a href="#" class="logout">Log Out</a></li>
            <li><a href="#" class="social facebook" data-provider="facebook">Link Facebook</a></li>
            <li><a href="#" class="social twitter" data-provider="twitter">Link Twitter</a></li>
          </ul>          
        </div>
      </div>

      <div id="header-notifications">
        <div id="bd-notifications-new-items">
          <div class="yui3-header-notification-default">Loading&hellip;</div>
        </div>
      </div>

    </div>
    <div id="signed-out" class="signed-out">
      <a href="" class="sign-in">Sign In</a>
      |
      <a hef="" class="register">Register</a>
    </div>
  </div>
  
  <div class="clear"></div>
  

<!--nfl:mbox name="headerScoresStatsMbox"-->
  
  <div class="main-nav">
    <div class="top-inner-shadow"></div>
    <ul class="top-nav-items">

      <!-- Begin Fantasy -->
      <li class="fantasy b-nav-group" id="b-nav-group-fantasy">
        <div class="top-label">
          <a href="http://www.nfl.com/fantasyfootball" class="top-nav fantasy">
            Fantasy Football
            <div class="icon-container">
                <i class="icon"></i>
                <i class="top-nav-down-arrow"></i>
            </div>
          </a>
        </div>
        <div id="header-nav-fantasy" class="nav-place-holder"></div>
      </li>
      <!-- End Fantasy -->

      <!-- Begin News -->
      <li class="news b-nav-group" id="b-nav-group-news">
        <div class="top-label">
          <a href="http://www.nfl.com/news" class="top-nav news">
            News<span class="nav-and-media-text"> &amp; Media</span>
            <div class="icon-container">
                <i class="icon"></i>
                <i class="top-nav-down-arrow"></i>
            </div>
          </a>
        </div>
        <div id="header-nav-news" class="nav-place-holder"></div>
      </li>
      <!-- End News -->

      <!-- Begin Video -->
      <li class="video b-nav-group" id="b-nav-group-video">
        <div class="top-label">
          <a href="http://www.nfl.com/videos" class="top-nav video">
            Video
            <div class="icon-container">
                <i class="icon"></i>
                <i class="top-nav-down-arrow"></i>
            </div>
          </a>
        </div>
        <div id="header-nav-video" class="nav-place-holder"></div>
      </li>
      <!-- End Video -->
      
      <!-- Begin Scores -->
      <li class="scores-single b-nav-group" id="b-nav-group-scores-single">
        <div class="top-label">
          <a href="http://www.nfl.com/scores" class="top-nav scores-single">
            Scores
            <div class="icon-container">
                <i class="icon"></i>
            </div>
          </a>
        </div>
      </li>
      <!-- End Scores -->

      <!-- Begin Schedules -->
      <li class="header-item-schedules b-nav-group" id="b-nav-group-schedules" style="margin: 0!important; position: inherit">
        <div class="top-label">
          <a href="http://www.nfl.com/schedules/2013/POST" class="top-nav header-link-schedules" style="margin: 0!important">
            Schedules
            <div class="icon-container">
              <i class="icon"></i>
              <i class="top-nav-down-arrow"></i>
            </div>
          </a>
        </div>
        <div id="header-nav-schedules" class="nav-place-holder"></div>
          <script>
          window.nfl.navABType = 'combined';
          </script>
      </li>
      <!-- End Schedule -->

      <!-- Begin Standings -->
      <li class="standings b-nav-group" id="b-nav-group-standings">
        <div class="top-label">
          <a href="http://www.nfl.com/standings" class="top-nav standings">
            Standings
            <div class="icon-container">
              <i class="icon"></i>
            </div>
          </a>
        </div>
      </li>
      <!-- End Standings -->

      <!-- Begin Stats -->
      <li class="stats b-nav-group" id="b-nav-group-stats">
        <div class="top-label">
          <a href="http://www.nfl.com/stats" class="top-nav stats">
            Stats
            <div class="icon-container">
                <i class="icon"></i>
                <i class="top-nav-down-arrow"></i>
            </div>
          </a>
        </div>
        <div id="header-nav-stats" class="nav-place-holder"></div>
      </li>
      <!-- End Stats -->
   

      <!-- Begin GamePass -->
      <li class="game-pass b-nav-group" id="b-nav-group-watch-games">
        <div class="top-label">
          <a href="http://subscriptions.nfl.com/nflsubs?icampaign=Prod_GP_Nav&cvsorc=Homepage.GR.GP_Nav" class="top-nav game-pass">
              Watch NFL Games Live
            <div class="icon-container">
                <i class="icon"></i>
                <i class="top-nav-down-arrow"></i>
            </div>
          </a>
        </div>
        <div id="header-nav-gamepass" class="nav-place-holder"></div>
      </li>
      <!-- End GamePass -->

      <!-- Begin Tickets -->
      <li class="tickets b-nav-group" id="b-nav-group-tickets">
        <div class="top-label">
          <a href="http://www.nfl.com/tickets" class="top-nav tickets">
            Tickets
            <div class="icon-container">
                <i class="icon"></i>
                <i class="top-nav-down-arrow"></i>
            </div>
          </a>
        </div>
        <div id="header-nav-tickets" class="nav-place-holder"></div>
      </li>
      <!-- End Tickets -->

      <!-- Begin Shop -->
      <li class="shop b-nav-group" id="b-nav-group-shop">
        <div class="top-label">
          <a href="http://www.nflshop.com/source/bm-nflcom-Header-Shop-Tab" class="top-nav shop" target="_blank">
            Shop
            <div class="icon-container">
                <i class="icon"></i>
                <i class="top-nav-down-arrow"></i>
            </div>
          </a>
        </div>
        <div id="header-nav-shop" class="nav-place-holder"></div>
      </li>
      <!-- End Shop -->
      <!-- Begin Fans -->
      <li class="fans b-nav-group" id="b-nav-group-fans" style="display: none">
        <div class="top-label">
          <a href="http://www.nfl.com/fans" class="top-nav fans">
            Fans
            <div class="icon-container">
                <i class="icon"></i>
                <i class="top-nav-down-arrow"></i>                
            </div>  
          </a>
        </div>
        <div id="header-nav-fans" class="nav-place-holder"></div>  
      </li>
      <!-- End Fans -->

    </ul>
    <div class="clear"></div>
  </div>
<!--/nfl:mbox-->


  <!-- Faux 3d Strip -->
  <div class="faux-3d-strip">
    <div class="left-wing"></div>
    <div class="long-strip"></div>
    <div class="right-wing"></div>
  </div>
  
  <!-- Secondary Navigation -->
  <div class="secondary-nav">
    <div class="announcement b-nav-group" id="b-nav-group-announcement">
      <div id="header-nav-networkschedule" class="nav-place-holder"></div>
    </div>
    <ul class="secondary-nav-items secondar-nav-hide">

      <li class="b-nav-group" id="b-nav-group-evolution">
        <div class="top-label"><a href='http://www.nflevolution.com/' target="_blank" style="color: white">health & safety</a></div>
      </li>
         
      <li class="b-nav-group" id="b-nav-group-espanol">
        <div id="header-nav-espanol" class="nav-place-holder"></div>
        <div class="top-label">En Espa&ntilde;ol</div>
      </li>
     
      <li class="b-nav-group" id="b-nav-group-mobile">
        <div id="header-nav-mobile" class="nav-place-holder"></div>
        <div class="top-label">Mobile</div>
      </li>

      <li class="b-nav-group" id="b-nav-group-network">
        <div id="header-nav-network" class="nav-place-holder"></div>
        <div class="top-label">NFL Network</div>
      </li>
    </ul>
  </div>
<!-- End Header 2012  -->
<!--script>
  nfl.use('node', function (Y) {
    Y.one('#header-2012').delegate("click", (function(e) {
      
      var linkNode, linkText, linkValue, navGroupId, s_analytics, _ref2;

      linkNode = e.currentTarget;
      linkNode.set("hideFocus", true);

      navGroupId = (_ref2 = linkNode.ancestor(".b-nav-group")) != null ? _ref2.getAttribute("id") : void 0;
      if (navGroupId) {
        linkText = linkNode.get("text").toLowerCase().replace(/[\W\s]/g, "");
        if (linkText === "") {
          linkText = linkNode.getAttribute('data-tracking-text');
        }
        linkValue = "header-" + navGroupId.replace("b-nav-group-", "") + "-" + linkText + "-scores-stats-" + window.nfl.navABType;
        s_analytics = s_gi(s_account);
        s_analytics.tl(this, 'o', linkText, {
          linkTrackVars: "events,eVar12",
          linkTrackEvents: "event50",
          events: "event50",
          eVar12: linkValue
        });
      }
    }), "a");
  });
</script-->
      </div>
	  <script type="text/javascript" charset="utf-8">
		nfl.Y.NFL.LoadHeader2012({
            loadBaseCSS : false
		});
	  </script>

		
		
			<div id="hd-scorestrip" class="hp-show">
				<div id="hdscorestripContainer"></div>
				<script type="text/javascript">
				nfl.Y.use('scorestrip-factory','node', function(Y) {
					var _showSS	= true, _ssNode = Y.one('#hd-scorestrip');
					if(_ssNode){
						_showSS = (_ssNode.getStyle('display') == 'none' || nfl.constants.SS_TYPE == 'NONE') ? false : _showSS;
						if(!_showSS){ _ssNode.remove(); }
					}
					if(_showSS){
						nfl.ss = new Y.ScoreStrip({
							render: "#hdscorestripContainer"
						});
					}
				});
				</script>
			</div>
		
    </div>
    
		
			<div id="page-top-ad">
			<!-- bannerAdType: "728x90" -->

		<div class="adcontainer" id="ad1391109118383top" style="width:728px;height:90px;">
			<noscript>
				<a href="http://ad.doubleclick.net/jump/nfl.home/landing;s1=landing;slot=top;url=landing;nfl=ad;!category=;kw=;tile={tile};test=;sz=728x90;{aamnfl};u={aam_did}{dcopt}" target="_blank">
					<img class="adImg" src="http://ad.doubleclick.net/ad/nfl.home/landing;s1=landing;slot=top;url=landing;nfl=ad;!category=;kw=;tile={tile};test=;sz=728x90;{aamnfl};u={aam_did}{dcopt}" width="728" height="90" border="0" alt=""/>
				</a>
			</noscript>
		</div>
		
		
			
				
				<script>
nfl.use("ads-v2", function (Y) {
	var Ads = Y.NFL.Ads,
		Ad = new Ads.Ad({
			id: 'ad1391109118383top',
			type: 'adi',
			path: 'http://ad.doubleclick.net/adi/nfl.home/landing;s1=landing;slot=top;url=landing;nfl=ad;!category=;kw=;tile={tile};test=;sz=728x90;{aamnfl};u={aam_did}{dcopt}',
			width: 728,
			height: 90,
			
			render: "#ad1391109118383top"
		});
	
	
		
});
				</script>
			
			
		</div>
		
		
		<div id="doc">
			<div id="doc-wrap">
				<div id="main-content" class="content-div default">
					<div class="c">
      			<meta name="decorator" content="home-home-yui"/>


<!-- BEGIN PAGE labs/responsive/forked -->

  
  
    













	<div id="homepage" class="grid">
		


		
		<!--
			template.id = 5000
			template.name = template9
			template.pushDownAd = false
			template.showScorestrip = true

			HomepageWidgetBean(s)
			template: [[com.nfl.site.domain.pagelayout.TemplateWidget@1b0978f5, com.nfl.site.domain.pagelayout.TemplateWidget@ae42ab1], [com.nfl.site.domain.pagelayout.TemplateWidget@9aed00d, com.nfl.site.domain.pagelayout.TemplateWidget@33dd0a72, com.nfl.site.domain.pagelayout.TemplateWidget@74d8dcf7, com.nfl.site.domain.pagelayout.TemplateWidget@4993180f], [com.nfl.site.domain.pagelayout.TemplateWidget@5810a685, com.nfl.site.domain.pagelayout.TemplateWidget@2d2492ee, com.nfl.site.domain.pagelayout.TemplateWidget@3c2a5e69, com.nfl.site.domain.pagelayout.TemplateWidget@19c5e5b, com.nfl.site.domain.pagelayout.TemplateWidget@40f6a930, com.nfl.site.domain.pagelayout.TemplateWidget@1ddafa2, com.nfl.site.domain.pagelayout.TemplateWidget@135b5a3, com.nfl.site.domain.pagelayout.TemplateWidget@6d27e0f3]]
		-->
		
			<!-- start column 1 -->
				<div class="col span-10">
						


					


					
						
					
						
					
						
					
						
					

					

					

						

						

						

						

						

						<!-- WIDGET type: FEATURECP, id 69, name: fcp
							config:
							
							urlparams: ""
						-->

						
							<!-- BEGIN WIDGET home-2011/featurecp -->
<div id="feature-cp-wrapper">
	
	
	
	
	
	
	
		
		
			<script id="tmpl-feature-cp-editorial" type="text/html">
				<!-- BEGIN WIDGET widgets/home-2011/views/cp -->




  
  	
  	
    
      
  		
  				
  		
  		
  		
  			<div id="centerpiece1391109118231-0" class="centerpiece top-right" data-tracking-module="HP11_cp" data-tracking-id="Taming wild horses">
	<div class="image"><a href="http://www.nfl.com/news/story/0ap2000000319753/article/can-seahawks-slow-down-broncos-passcatchers" data-tracking-pos="cp_image" target="_self">
					<img src="http://static.nfl.com/static/content/public/photo/2014/01/30/0ap2000000320162.jpg" alt="Taming wild horses" width="640" />
				</a></div><h1 class="heading"><a href="http://www.nfl.com/news/story/0ap2000000319753/article/can-seahawks-slow-down-broncos-passcatchers" data-tracking-pos="cp_headline" target="_self">
						Taming wild horses
					</a></h1>
		<div class="caption">
			How do the Seahawks plan on stopping Denver's stable of pass catchers? Marc Sessler investigates. <a href="http://www.nfl.com/news/story/0ap2000000319753/article/can-seahawks-slow-down-broncos-passcatchers" data-tracking-pos="cp_more" target="_self"><strong>Read</strong></a></div><div class="related"><a href="http://www.nfl.com/superbowl/story/0ap2000000320002/article/legion-of-booms-tight-bond-behind-seahawks-dominant-d" data-tracking-id="Legend of the Legion of Boom" data-trackin-pos="cp_related_1" target="_top">Legend of the Legion of Boom</a> | <a href="http://www.nfl.com/superbowl/story/0ap2000000317681/article/seattle-seahawks-vs-denver-broncos-an-unprecedented-event" data-tracking-id="Best offense vs. best defense" data-trackin-pos="cp_related_2" target="_top">Best offense vs. best defense</a> | <a href="http://www.nfl.com/videos/nfl-network-gameday/0ap2000000319462/Sherman-They-re-still-waiting-for-me-to-fail" data-tracking-id="Sherman goes 1-on-1 with Deion" data-trackin-pos="cp_related_3" target="_top">Sherman goes 1-on-1 with Deion</a></div><div class="video-container"></div></div>

  		
  	
	


<!-- END WIDGET widgets/home-2011/views/cp -->
		
			</script>
		
	
	<script id="tmpl-feature-cp-fantasy" type="text/html">
		<!-- BEGIN WIDGET widgets/home-2011/views/cp -->


  




<!-- END WIDGET widgets/home-2011/views/cp -->

	</script>
	<script id="tmpl-feature-cp-subs" type="text/html">
		<!-- BEGIN WIDGET widgets/home-2011/views/cp -->


  




<!-- END WIDGET widgets/home-2011/views/cp -->

	</script>
</div>
<script>
// logic pulled from the centerpiece-conditional module
nfl.Y.use('nfl-ranked-widget-plugin', 'nfl-ranked-widget-frequencycap-plugin', 'dust-helpers-nfl', function (Y) {
	var countryCode = nfl.constants.COUNTRY_CODE,
		isDomestic = !countryCode || (countryCode == 'us' || countryCode == 'mx'),
		compiledTmpl, editorialCP;
	if(isDomestic){
		compiledTmpl = '(function(){dust.register("hpCpTmpl",body_0);function body_0(chk,ctx){return chk.helper("isSignedIn",ctx,{"else":body_1,"block":body_4},null);}function body_1(chk,ctx){return chk.helper("hasReachedFrequencyCap",ctx,{"else":body_2,"block":body_3},null);}function body_2(chk,ctx){return chk.reference(ctx.get("fantasy"),ctx,"h",["s"]);}function body_3(chk,ctx){return chk.reference(ctx.get("editorial"),ctx,"h",["s"]);}function body_4(chk,ctx){return chk.helper("hasFantasyTeam",ctx,{"else":body_5,"block":body_8},null);}function body_5(chk,ctx){return chk.helper("hasReachedFrequencyCap",ctx,{"else":body_6,"block":body_7},null);}function body_6(chk,ctx){return chk.reference(ctx.get("fantasy"),ctx,"h",["s"]);}function body_7(chk,ctx){return chk.reference(ctx.get("editorial"),ctx,"h",["s"]);}function body_8(chk,ctx){return chk.reference(ctx.get("editorial"),ctx,"h",["s"]);}return body_0;})();';
	}else{
		compiledTmpl = '(function(){dust.register("hpCpTmpl",body_0);function body_0(chk,ctx){return chk.helper("isSignedIn",ctx,{"else":body_1,"block":body_4},null);}function body_1(chk,ctx){return chk.helper("hasReachedFrequencyCap",ctx,{"else":body_2,"block":body_3},null);}function body_2(chk,ctx){return chk.reference(ctx.get("subs"),ctx,"h",["s"]);}function body_3(chk,ctx){return chk.reference(ctx.get("editorial"),ctx,"h",["s"]);}function body_4(chk,ctx){return chk.helper("hasSubscriptions",ctx,{"else":body_5,"block":body_8},null);}function body_5(chk,ctx){return chk.helper("hasReachedFrequencyCap",ctx,{"else":body_6,"block":body_7},null);}function body_6(chk,ctx){return chk.reference(ctx.get("subs"),ctx,"h",["s"]);}function body_7(chk,ctx){return chk.reference(ctx.get("editorial"),ctx,"h",["s"]);}function body_8(chk,ctx){return chk.reference(ctx.get("editorial"),ctx,"h",["s"]);}return body_0;})();';
	}

	
		
		
			editorialCP = Y.one('#tmpl-feature-cp-editorial').getHTML();
		
	

	Y.one('#feature-cp-wrapper').plug(Y.NFL.RankedWidgetPlugin, {
		tmplName: 'hpCpTmpl',
		/*tmpl: Y.one('#tmpl-feature-cp').getHTML(),
		printCompiledTmpl: true,*/
		compiledTmpl: compiledTmpl,
		partials: {
			'editorial': {partial: editorialCP},
			'fantasy': {partial: Y.one('#tmpl-feature-cp-fantasy').getHTML(), alt: 'editorial'},
			'subs': {partial: Y.one('#tmpl-feature-cp-subs').getHTML(), alt: 'editorial'}
		},
		plugins: [{fn:Y.NFL.RankedWidgetFrequencyCapPlugin, cfg: {
			cookieName: 'hpCpFrequencyCap',
			frequencyCap: 3
		}}/* This plugin provide @hasReachedFrequencyCap helper */]
	});

});  
</script>
<!-- END WIDGET home-2011/featurecp -->

						

					

						

						

						

						

						

						<!-- WIDGET type: HEADLINES, id 52, name: headlines
							config:
							
							urlparams: ""
						-->

						

					

						

						

						

						

						

						<!-- WIDGET type: CONTENTSTREAM, id 70, name: cs
							config:
							
							urlparams: ""
						-->

						
							<!-- start module -->
			
<!--gc module-links-->
<div id="news-stream" data-tracking-module="HP11_content_stream">
	
<!-- BEGIN TAG mbox -->

<script>
if (!window.mboxCreate) {
	document.write('<scri' + 'pt src="http://s.nflcdn.com/static/site/5.20/scripts/analytics/mbox.js"><' + '/scr' + 'ipt>');
	document.write('<scri' + 'pt src="//nfl.demdex.net/event?d_stuff=1&d_dst=1&d_rtbd=json&d_cts=1&d_cb=aam_tnt_cb"><' + '/scr' + 'ipt>');
}
</script>


  
  

<!-- END TAG mbox -->

	<script>
		// key can be index or some key of content stream, passed from mboxCreate parameter
		// mbox offer should call makeMultiVarContentStream({profile.key}, "a");
		window.makeMultiVarContentStream = function (key, val) {
			if(!window.multiVarContentStream){
				window.multiVarContentStream = {};
			}
			window.multiVarContentStream[key] = val;
		};
	</script>
	<h2 class="heading"><span>Featured Headlines</span></h2>	
	<ol class="items">		
		
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-1 "><!-- index: 1-->
<!-- BEGIN WIDGET widgets/home-2011/views/headlines -->

<div class="news-stream-module headlines cf" data-tracking-module="HP11_headline_stack">
  
    
    <div class="image col" data-tracking-id="Kap blasts Sherman">
  			<a class="image-wrapper" href="/news/story/0ap2000000320309/article/colin-kaepernick-richard-shermans-rant-ridiculous" data-tracking-pos="THP_image"><img alt="Image: Kap blasts Sherman" id="HP11_headline_stack-1-img" src="http://static.nfl.com/static/content/public/photo/2014/01/30/0ap2000000320323.jpg" width="200"/></a>
    		
  			<div class="caption">
  				<h3>
  					<a href="/news/story/0ap2000000320309/article/colin-kaepernick-richard-shermans-rant-ridiculous" data-tracking-pos="THP_headline" class='heading'>
  						Kap blasts Sherman
  					</a>
  				</h3>
  				<p>
  					Colin Kaepernick was not amused by Richard Sherman's comments after the NFC title game. The 49ers QB ripped the Seahawks cornerback Thursday and revealed he's backing the Broncos.
  					<a href="/news/story/0ap2000000320309/article/colin-kaepernick-richard-shermans-rant-ridiculous" data-tracking-pos="THP_more" class="more"> Read</a>
  				</p>
  			</div>
  		</div>
		
	
	<div class="text col">
		<div class="label">
			<span class="article-title"></span>
			<a href="/news" data-tracking-id="latest_news" data-tracking-pos="Article_latest_news">Latest Headlines</a>
		</div>
		<ol><li data-tracking-pos="Article_1_1">
					<a href="/news/story/0ap2000000320378/article/marshawn-lynch-hopes-to-run-into-a-lot-of-people" data-tracking-id="Lynch on ground game: &#039;I get to run into a lot of people&#039;">Lynch on ground game: &#039;I get to run into a lot of people&#039;</a> |
						<a href="http://www.nfl.com/videos/seattle-seahawks/0ap2000000320221/Lynch-We-win-with-dynamic-plays" data-tracking-id="Watch">Watch</a></li><li data-tracking-pos="Article_1_2">
					<a href="/news/story/0ap2000000320229/article/weather-forecast-brightens-for-super-bowl-xlviii" data-tracking-id="Weather forecast brightens for Super Bowl XLVIII">Weather forecast brightens for Super Bowl XLVIII</a> |
						<a href="http://www.nfl.com/podcast/aroundtheleague-podcast" data-tracking-id="&#039;ATL Podcast&#039;">&#039;ATL Podcast&#039;</a></li><li data-tracking-pos="Article_1_3">
					<a href="/news/story/0ap2000000320319/article/cam-newton-i-will-respond-to-colin-kaepernick" data-tracking-id="Cam says he will respond to Kap&#039;s mock TD celebration">Cam says he will respond to Kap&#039;s mock TD celebration</a> |
						<a href="http://www.nfl.com/videos/carolina-panthers/0ap2000000320176/Cam-to-Colin-There-will-be-an-answer-for-mocking-TD-celebration" data-tracking-id="Watch">Watch</a></li><li data-tracking-pos="Article_1_4">
					<a href="/news/story/0ap2000000320388/article/michael-vick-ill-absolutely-be-a-week-1-starter" data-tracking-id="Michael Vick: I&#039;ll &#039;absolutely&#039; be a Week 1 starter">Michael Vick: I&#039;ll &#039;absolutely&#039; be a Week 1 starter</a> |
						<a href="http://www.nfl.com/news/story/0ap2000000316435/article/2014-nfl-free-agents-by-team" data-tracking-id="Free-agent list">Free-agent list</a></li><li data-tracking-pos="Article_1_5">
					<a href="/news/story/0ap2000000320387/article/pete-carroll-seahawks-need-to-move-peyton-manning" data-tracking-id="Carroll: We &#039;need to move&#039; Peyton">Carroll: We &#039;need to move&#039; Peyton</a> |
						<a href="http://www.nfl.com/news/story/0ap2000000320301/article/percy-harvin-its-been-a-weird-frustrating-year" data-tracking-id="Harvin: It&#039;s been a weird year">Harvin: It&#039;s been a weird year</a></li><li data-tracking-pos="Article_1_6">
					<a href="/news/story/0ap2000000320350/article/michael-bennett-peyton-manning-has-no-happy-feet" data-tracking-id="Michael Bennett on Peyton: &#039;I never seen his happy feet&#039;">Michael Bennett on Peyton: &#039;I never seen his happy feet&#039;</a> |
						<a href="http://www.nfl.com/superbowl/48" data-tracking-id="SB hub">SB hub</a></li><li data-tracking-pos="Article_1_7">
					<a href="http://www.nfl.com/news/story/0ap2000000320267/article/peyton-manning-adam-gase-very-special-for-broncos" data-tracking-id="Coach: Gase-Manning dynamic &#039;very special&#039;">Coach: Gase-Manning dynamic &#039;very special&#039;</a> |
						<a href="http://www.nfl.com/news/story/0ap2000000319788/article/peyton-manning-i-am-not-a-robot-for-denver-broncos" data-tracking-id="QB: I&#039;m not a robot">QB: I&#039;m not a robot</a></li><li data-tracking-pos="Article_1_8">
					<a href="/news/story/0ap2000000320181/article/richie-incognitos-lawyer-martin-sent-coarse-texts-too" data-tracking-id="Incognito&#039;s lawyer: Martin sent coarse texts, too">Incognito&#039;s lawyer: Martin sent coarse texts, too</a> |
						<a href="http://www.nfl.com/news/story/0ap2000000320016/article/dolphins-jonathan-martin-wants-to-return-to-nfl" data-tracking-id="Martin speaks">Martin speaks</a></li><li data-tracking-pos="Article_1_9">
					<a href="http://www.nflevolution.com/article/nfl-reports-concussions-have-dropped-13-percent-from-last-season?ref=0ap2000000320389" data-tracking-id="League reports concussions down 13 percent from last season">League reports concussions down 13 percent from last season</a></li></ol>
		<a href="/news" data-tracking-id="More News" data-tracking-pos="Article_more" class="more">More News</a>
	</div>
</div>
<!-- END WIDGET widgets/home-2011/views/headlines -->
</li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-2 video-row-container"><!-- index: 2--><!-- BEGIN PAGE widget/home-2011/video-row -->
<div class="news-stream-module video-row">
	<div class="label">
		<span class="logo-bug"></span>
		Video - Super Bowl Live

	</div>
	
	<ul class="cf">
			<li class="" data-tracking-id=""><div class="image-wrapper" style="background-image: url(http://static.nfl.com/static/content/public/video/2014/01/30/0ap2000000320337_video_rhr_210.jpg)">					
					<a class="play-button" href="/videos/nfl-player-interviews/0ap2000000320337/Vick-discusses-2014-plans" data-tracking-pos="Video_2_1"></a><img alt="Vick discusses 2014 plans" src="http://static.nfl.com/static/content/public/video/2014/01/30/0ap2000000320337_video_rhr_210.jpg" width="200" ></div>
				<h3 class="headline"><a href="/videos/nfl-player-interviews/0ap2000000320337/Vick-discusses-2014-plans" data-tracking-pos="Video_2_1" class="heading">Vick discusses 2014 plans</a></h3>
			</li>
			<li class="" data-tracking-id="Vick discusses 2014 plans"><div class="image-wrapper" style="background-image: url(http://static.nfl.com/static/content/public/video/2014/01/30/0ap2000000320260_video_rhr_210.jpg)">					
					<a class="play-button" href="/videos/nfl-super-bowl/0ap2000000320260/Brees-breaks-down-Super-Bowl-matchup" data-tracking-pos="Video_2_2"></a><img alt="Brees breaks down Super Bowl matchup" src="http://static.nfl.com/static/content/public/video/2014/01/30/0ap2000000320260_video_rhr_210.jpg" width="200" ></div>
				<h3 class="headline"><a href="/videos/nfl-super-bowl/0ap2000000320260/Brees-breaks-down-Super-Bowl-matchup" data-tracking-pos="Video_2_2" class="heading">Brees breaks down Super Bowl matchup</a></h3>
			</li>
			<li class="last" data-tracking-id="Brees breaks down Super Bowl matchup"><div class="image-wrapper" style="background-image: url(http://static.nfl.com/static/content/public/video/2014/01/30/0ap2000000320325_video_rhr_210.jpg)">					
					<a class="play-button" href="/videos/nfl-super-bowl/0ap2000000320325/Archie-Manning-I-ve-never-heard-Peyton-talk-about-his-legacy" data-tracking-pos="Video_2_3"></a><img alt="Archie Manning: &#039;I&#039;ve never heard Peyton talk about his legacy&#039;" src="http://static.nfl.com/static/content/public/video/2014/01/30/0ap2000000320325_video_rhr_210.jpg" width="200" ></div>
				<h3 class="headline"><a href="/videos/nfl-super-bowl/0ap2000000320325/Archie-Manning-I-ve-never-heard-Peyton-talk-about-his-legacy" data-tracking-pos="Video_2_3" class="heading">Archie Manning: 'I've never heard Peyton talk about his legacy'</a></h3>
			</li></ul>

	<p style="text-align:right"><a href="/videos" data-tracking-id="More Videos" data-tracking-pos="Video_2_more" class="more">More Videos</a></p>
</div>

<!-- END PAGE widget/home-2011/video-row -->
</li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-3 "><!-- index: 3-->
<!-- BEGIN TAG home/video -->
<div class="news-stream-module news-stream-video cf" data-tracking-id="Seattle Sound: Macklemore and Seahawks share golden year for Seattle">
  	<div class="image col">
  		<span class="image-wrapper">
  			<a href="/videos/nfl-super-bowl/0ap2000000320385/Seattle-Sound-Macklemore-and-Seahawks-share-golden-year-for-Seattle" data-tracking-pos="Video_3_image"><img id="HP11_content_stream-3-img" alt="" width="200" data-image="http://static.nfl.com/static/content/public/video/2014/01/30/0ap2000000320385_video_rhr_210.jpg" /></a>
  		</span>
  		<span class="play-button"><a href="/videos/nfl-super-bowl/0ap2000000320385/Seattle-Sound-Macklemore-and-Seahawks-share-golden-year-for-Seattle" data-tracking-pos="Video_3_image"></a></span></div>
  	<div class="text col">
  		<div class="label">
  			<span class="logo-bug"></span>
  			<a data-tracking-module="HP11_content_stream" href="/videos" data-tracking-pos="category_link" data-tracking-id="Video">Video</a>

  		</div>
  		<h3 class="heading"><a href="/videos/nfl-super-bowl/0ap2000000320385/Seattle-Sound-Macklemore-and-Seahawks-share-golden-year-for-Seattle" data-tracking-pos="Video_3_headline">Seattle Sound: Macklemore and Seahawks share golden year for Seattle</a></h3>
  		<div class="caption">
  			The past year has been a banner one for both Seattle native Macklemore and his beloved Seahawks.  The rapper sits down to discuss how both parties have been there from the beginning to support one another and enjoy each other's success.
  			<a href="/videos/nfl-super-bowl/0ap2000000320385/Seattle-Sound-Macklemore-and-Seahawks-share-golden-year-for-Seattle" data-tracking-pos="Video_3_more" class="more">Watch</a>
  		</div>
      
    		<div class="comments">
    			<a href="/videos/nfl-super-bowl/0ap2000000320385/Seattle-Sound-Macklemore-and-Seahawks-share-golden-year-for-Seattle" class="comment-count" data-tracking-pos="Video_3_comments" ><fb:comments-count href="http://nfl.com/goto?id=0ap2000000320385"></fb:comments-count></a>
  	 	 </div>
      
  	</div>
  </div><!-- END TAG home/video -->
 </li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-4 "><!-- index: 4--><!-- BEGIN TAG home/article -->
<div class="news-stream-module news-stream-article cf" data-tracking-id="Who ya got? Analysts provide their picks">
	<div class="image col">
			
			
			
		<a href="/superbowl/story/0ap2000000320280/article/super-bowl-xlviii-analyst-picks-favor-seahawks-over-broncos" data-tracking-pos="Article_4_image" class='image-wrapper'><img id="HP11_content_stream-4-img" alt="" width="200" data-image="http://static.nfl.com/static/content/public/photo/2014/01/30/0ap2000000320186.jpg"/><img id="HP11_content_stream-4-img" alt="" width="200" data-image="http://static.nfl.com/static/content/public/photo/2014/01/30/0ap2000000320186.jpg"/>
		</a>
	</div>
	<div class="text col">
		<div class="label">
			<span class="article-title">Super Bowl XLVIII
</span>
		</div>
		<h3 class="heading"><a href="/superbowl/story/0ap2000000320280/article/super-bowl-xlviii-analyst-picks-favor-seahawks-over-broncos" data-tracking-pos="Article_4_headline">Who ya got? Analysts provide their picks</a></h3>
		
			<div class="comments"><a href="/superbowl/story/0ap2000000320280/comments/super-bowl-xlviii-analyst-picks-favor-seahawks-over-broncos" class="comment-count" data-tracking-pos="Article_4_comments" ><fb:comments-count href="http://nfl.com/goto?id=0ap2000000320280"></fb:comments-count></a></div>
		
		
		<p class='blurb'>Enough with the ancillary analysis already! Who's going to win the game: Seattle Seahawks or Denver Broncos? Our analysts offer up their predictions, with one team emerging as a definite favorite. <a href="/superbowl/story/0ap2000000320280/article/super-bowl-xlviii-analyst-picks-favor-seahawks-over-broncos" data-tracking-pos="Article_4_more">Read</a></p>
	</div>
</div>
<!-- END TAG home/article -->
</li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-5 "><!-- index: 5-->
<!-- BEGIN TAG home/video -->
<div class="news-stream-module news-stream-video cf" data-tracking-id="Sherman: &#039;These are the two best teams&#039;">
  	<div class="image col">
  		<span class="image-wrapper">
  			<a href="/videos/nfl-super-bowl/0ap2000000320312/Sherman-These-are-the-two-best-teams" data-tracking-pos="Video_5_image"><img id="HP11_content_stream-5-img" alt="" width="200" data-image="http://static.nfl.com/static/content/public/video/2014/01/30/0ap2000000320312_video_rhr_210.jpg" /></a>
  		</span>
  		<span class="play-button"><a href="/videos/nfl-super-bowl/0ap2000000320312/Sherman-These-are-the-two-best-teams" data-tracking-pos="Video_5_image"></a></span></div>
  	<div class="text col">
  		<div class="label">
  			<span class="logo-bug"></span>
  			<a data-tracking-module="HP11_content_stream" href="/videos" data-tracking-pos="category_link" data-tracking-id="Video">Video</a>

  		</div>
  		<h3 class="heading"><a href="/videos/nfl-super-bowl/0ap2000000320312/Sherman-These-are-the-two-best-teams" data-tracking-pos="Video_5_headline">Sherman: 'These are the two best teams'</a></h3>
  		<div class="caption">
  			Seattle Seahawks cornerback Richard Sherman says the team's matchup against the Denver Broncos features the two best teams in the NFL.
  			<a href="/videos/nfl-super-bowl/0ap2000000320312/Sherman-These-are-the-two-best-teams" data-tracking-pos="Video_5_more" class="more">Watch</a>
  		</div>
      
    		<div class="comments">
    			<a href="/videos/nfl-super-bowl/0ap2000000320312/Sherman-These-are-the-two-best-teams" class="comment-count" data-tracking-pos="Video_5_comments" ><fb:comments-count href="http://nfl.com/goto?id=0ap2000000320312"></fb:comments-count></a>
  	 	 </div>
      
  	</div>
  </div><!-- END TAG home/video -->
 </li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-6 "><!-- index: 6-->
<!-- BEGIN TAG home/video -->
<div class="news-stream-module news-stream-video cf" data-tracking-id="N &#039;if&#039; L: What if the 2013 season looked different?">
  	<div class="image col">
  		<span class="image-wrapper">
  			<a href="/videos/n-if-l/0ap2000000319905/N-if-L-What-if-the-2013-season-looked-different" data-tracking-pos="Video_6_image"><img id="HP11_content_stream-6-img" alt="" width="200" data-image="http://static.nfl.com/static/content/public/video/2014/01/29/0ap2000000319905_video_rhr_210.jpg" /></a>
  		</span>
  		<span class="play-button"><a href="/videos/n-if-l/0ap2000000319905/N-if-L-What-if-the-2013-season-looked-different" data-tracking-pos="Video_6_image"></a></span></div>
  	<div class="text col">
  		<div class="label">
  			<span class="logo-bug"></span>
  			<a data-tracking-module="HP11_content_stream" href="/videos" data-tracking-pos="category_link" data-tracking-id="Video">Video</a>

  		</div>
  		<h3 class="heading"><a href="/videos/n-if-l/0ap2000000319905/N-if-L-What-if-the-2013-season-looked-different" data-tracking-pos="Video_6_headline">N 'if' L: What if the 2013 season looked different?</a></h3>
  		<div class="caption">
  			Dave Dameshek looks at how the 2013 NFL season would look entirely different had the ball bounced a few different ways and who'd be hoisting the Lombardi Trophy. Animation by <a href="http://www.bindledog.com" target="new">Bindledog.com</a>.
  			<a href="/videos/n-if-l/0ap2000000319905/N-if-L-What-if-the-2013-season-looked-different" data-tracking-pos="Video_6_more" class="more">Watch</a>
  		</div>
      
    		<div class="comments">
    			<a href="/videos/n-if-l/0ap2000000319905/N-if-L-What-if-the-2013-season-looked-different" class="comment-count" data-tracking-pos="Video_6_comments" ><fb:comments-count href="http://nfl.com/goto?id=0ap2000000319905"></fb:comments-count></a>
  	 	 </div>
      
  	</div>
  </div><!-- END TAG home/video -->
 </li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-7 "><!-- index: 7--><!-- BEGIN TAG home/article -->
<div class="news-stream-module news-stream-article cf" data-tracking-id="ATL After Dark: Jay Glazer&#039;s Super Bowl party">
	<div class="image col">
			
			
			
		<a href="/news/story/0ap2000000320321/article/atl-after-dark-jay-glazers-super-bowl-party" data-tracking-pos="Article_7_image" class='image-wrapper'><img id="HP11_content_stream-7-img" alt="" width="200" data-image="http://static.nfl.com/static/content/public/photo/2014/01/30/0ap2000000320354.jpg"/><img id="HP11_content_stream-7-img" alt="" width="200" data-image="http://static.nfl.com/static/content/public/photo/2014/01/30/0ap2000000320354.jpg"/>
		</a>
	</div>
	<div class="text col">
		<div class="label">
			<span class="article-title"><a data-tracking-module="HP11_content_stream" href="/news/around-the-league" data-tracking-pos="category_link" data-tracking-id="Around The League">Around The League</a>
</span>
		</div>
		<h3 class="heading"><a href="/news/story/0ap2000000320321/article/atl-after-dark-jay-glazers-super-bowl-party" data-tracking-pos="Article_7_headline">ATL After Dark: Jay Glazer's Super Bowl party</a></h3>
		
			<div class="comments"><a href="/news/story/0ap2000000320321/comments/atl-after-dark-jay-glazers-super-bowl-party" class="comment-count" data-tracking-pos="Article_7_comments" ><fb:comments-count href="http://nfl.com/goto?id=0ap2000000320321"></fb:comments-count></a></div>
		
		
		<p class='blurb'>So what's a Super Bowl party hosted by Jay Glazer really like? Around The League's Dan Hanzus was on the scene of a loud, crowded celebration loaded with athletes, agents, women and more. <a href="/news/story/0ap2000000320321/article/atl-after-dark-jay-glazers-super-bowl-party" data-tracking-pos="Article_7_more">Read</a></p>
	</div>
</div>
<!-- END TAG home/article -->
</li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-8 "><!-- index: 8-->
<!-- BEGIN TAG home/video -->
<div class="news-stream-module news-stream-video cf" data-tracking-id="Watch Derrick Coleman&#039;s media day">
  	<div class="image col">
  		<span class="image-wrapper">
  			<a href="/videos/nfl-super-bowl/0ap2000000320303/Watch-Derrick-Coleman-s-media-day" data-tracking-pos="Video_8_image"><img id="HP11_content_stream-8-img" alt="" width="200" data-image="http://static.nfl.com/static/content/public/video/2014/01/30/0ap2000000320303_video_rhr_210.jpg" /></a>
  		</span>
  		<span class="play-button"><a href="/videos/nfl-super-bowl/0ap2000000320303/Watch-Derrick-Coleman-s-media-day" data-tracking-pos="Video_8_image"></a></span></div>
  	<div class="text col">
  		<div class="label">
  			<span class="logo-bug"></span>
  			<a data-tracking-module="HP11_content_stream" href="/videos" data-tracking-pos="category_link" data-tracking-id="Video">Video</a>

  		</div>
  		<h3 class="heading"><a href="/videos/nfl-super-bowl/0ap2000000320303/Watch-Derrick-Coleman-s-media-day" data-tracking-pos="Video_8_headline">Watch Derrick Coleman's media day</a></h3>
  		<div class="caption">
  			Seattle Seahawks fullback Derrick Coleman is mic'd up during Super Bowl XLVIII's media day. Watch it from Coleman's perspective.
  			<a href="/videos/nfl-super-bowl/0ap2000000320303/Watch-Derrick-Coleman-s-media-day" data-tracking-pos="Video_8_more" class="more">Watch</a>
  		</div>
      
    		<div class="comments">
    			<a href="/videos/nfl-super-bowl/0ap2000000320303/Watch-Derrick-Coleman-s-media-day" class="comment-count" data-tracking-pos="Video_8_comments" ><fb:comments-count href="http://nfl.com/goto?id=0ap2000000320303"></fb:comments-count></a>
  	 	 </div>
      
  	</div>
  </div><!-- END TAG home/video -->
 </li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-9 video-row-container"><!-- index: 9--><!-- BEGIN PAGE widget/home-2011/video-row -->
<div class="news-stream-module video-row">
	<div class="label">
		<span class="logo-bug"></span>
		Video - NFL Fan Pass

	</div>
	
	<ul class="cf">
			<li class="" data-tracking-id=""><div class="image-wrapper" style="background-image: url(http://static.nfl.com/static/content/public/video/2014/01/30/0ap2000000320363_video_rhr_210.jpg)">					
					<a class="play-button" href="/videos/nfl-fan-pass/0ap2000000320363/NFL-Fan-Pass-Rank-goes-on-a-toboggan-ride" data-tracking-pos="Video_9_1"></a><img id="HP11_content_stream-9-1-img" alt="NFL Fan Pass: Rank goes on a toboggan ride" data-image="http://static.nfl.com/static/content/public/video/2014/01/30/0ap2000000320363_video_rhr_210.jpg" width="200"></div>
				<h3 class="headline"><a href="/videos/nfl-fan-pass/0ap2000000320363/NFL-Fan-Pass-Rank-goes-on-a-toboggan-ride" data-tracking-pos="Video_9_1" class="heading">NFL Fan Pass: Rank goes on a toboggan ride</a></h3>
			</li>
			<li class="" data-tracking-id="NFL Fan Pass: Rank goes on a toboggan ride"><div class="image-wrapper" style="background-image: url(http://static.nfl.com/static/content/public/video/2014/01/30/0ap2000000320349_video_rhr_210.jpg)">					
					<a class="play-button" href="/videos/nfl-fan-pass/0ap2000000320349/NFL-Fan-Pass-Jim-Kelly-inside-the-XBOX-ONE-Green-Room" data-tracking-pos="Video_9_2"></a><img id="HP11_content_stream-9-2-img" alt="NFL Fan Pass: Jim Kelly inside the XBOX ONE Green Room" data-image="http://static.nfl.com/static/content/public/video/2014/01/30/0ap2000000320349_video_rhr_210.jpg" width="200"></div>
				<h3 class="headline"><a href="/videos/nfl-fan-pass/0ap2000000320349/NFL-Fan-Pass-Jim-Kelly-inside-the-XBOX-ONE-Green-Room" data-tracking-pos="Video_9_2" class="heading">NFL Fan Pass: Jim Kelly inside the XBOX ONE Green Room</a></h3>
			</li>
			<li class="last" data-tracking-id="NFL Fan Pass: Jim Kelly inside the XBOX ONE Green Room"><div class="image-wrapper" style="background-image: url(http://static.nfl.com/static/content/public/video/2014/01/29/0ap2000000320108_video_rhr_210.jpg)">					
					<a class="play-button" href="/videos/nfl-fan-pass/0ap2000000320108/NFL-Fan-Pass-Super-Bowl-Blvd" data-tracking-pos="Video_9_3"></a><img id="HP11_content_stream-9-3-img" alt="NFL Fan Pass: Super Bowl Blvd." data-image="http://static.nfl.com/static/content/public/video/2014/01/29/0ap2000000320108_video_rhr_210.jpg" width="200"></div>
				<h3 class="headline"><a href="/videos/nfl-fan-pass/0ap2000000320108/NFL-Fan-Pass-Super-Bowl-Blvd" data-tracking-pos="Video_9_3" class="heading">NFL Fan Pass: Super Bowl Blvd.</a></h3>
			</li></ul>

	<p style="text-align:right"><a href="/videos" data-tracking-id="More Videos" data-tracking-pos="Video_9_more" class="more">More Videos</a></p>
</div>

<!-- END PAGE widget/home-2011/video-row -->
</li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-10 "><!-- index: 10--><!-- BEGIN TAG home/article -->
<div class="news-stream-module news-stream-article cf" data-tracking-id="What is The Seahawk Way?">
	<div class="image col">
			
			
			
		<a href="/news/story/0ap2000000319895/article/pete-carrolls-players-gush-about-the-seahawk-way" data-tracking-pos="Article_10_image" class='image-wrapper'><img id="HP11_content_stream-10-img" alt="" width="200" data-image="http://static.nfl.com/static/content/public/photo/2014/01/29/0ap2000000319911.jpg"/><img id="HP11_content_stream-10-img" alt="" width="200" data-image="http://static.nfl.com/static/content/public/photo/2014/01/29/0ap2000000319911.jpg"/>
		</a>
	</div>
	<div class="text col">
		<div class="label">
			<span class="article-title"><a data-tracking-module="HP11_content_stream" href="/news/around-the-league" data-tracking-pos="category_link" data-tracking-id="Around the League">Around the League</a>
</span>
		</div>
		<h3 class="heading"><a href="/news/story/0ap2000000319895/article/pete-carrolls-players-gush-about-the-seahawk-way" data-tracking-pos="Article_10_headline">What is The Seahawk Way?</a></h3>
		
			<div class="comments"><a href="/news/story/0ap2000000319895/comments/pete-carrolls-players-gush-about-the-seahawk-way" class="comment-count" data-tracking-pos="Article_10_comments" ><fb:comments-count href="http://nfl.com/goto?id=0ap2000000319895"></fb:comments-count></a></div>
		
		
		<p class='blurb'>What is it about Seattle that has everyone raving about the franchise? We've all heard of The Patriot Way, but Marc Sessler talked with Pete Carroll's troops to learn about The Seahawk Way. <a href="/news/story/0ap2000000319895/article/pete-carrolls-players-gush-about-the-seahawk-way" data-tracking-pos="Article_10_more">Read</a></p>
	</div>
</div>
<!-- END TAG home/article -->
</li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-11 "><!-- index: 11--><!-- BEGIN TAG home/article -->
<div class="news-stream-module news-stream-article cf" data-tracking-id="&#039;I do throw ducks&#039;">
	<div class="image col">
			
			
			
		<a href="/news/story/0ap2000000320151/article/denver-broncos-peyton-manning-i-do-throw-ducks" data-tracking-pos="Article_11_image" class='image-wrapper'><img id="HP11_content_stream-11-img" alt="" width="200" data-image="http://static.nfl.com/static/content/public/photo/2014/01/30/0ap2000000320160.jpg"/><img id="HP11_content_stream-11-img" alt="" width="200" data-image="http://static.nfl.com/static/content/public/photo/2014/01/30/0ap2000000320160.jpg"/>
		</a>
	</div>
	<div class="text col">
		<div class="label">
			<span class="article-title"><a data-tracking-module="HP11_content_stream" href="/news/around-the-league" data-tracking-pos="category_link" data-tracking-id="Around the League">Around the League</a>
</span>
		</div>
		<h3 class="heading"><a href="/news/story/0ap2000000320151/article/denver-broncos-peyton-manning-i-do-throw-ducks" data-tracking-pos="Article_11_headline">'I do throw ducks'</a></h3>
		
			<div class="comments"><a href="/news/story/0ap2000000320151/comments/denver-broncos-peyton-manning-i-do-throw-ducks" class="comment-count" data-tracking-pos="Article_11_comments" ><fb:comments-count href="http://nfl.com/goto?id=0ap2000000320151"></fb:comments-count></a></div>
		
		
		<p class='blurb'>Seahawks cornerback Richard Sherman, earlier this month, said that Peyton Manning throws some "ducks." On Thursday, the Denver Broncos quarterback responded, and he did so pridefully. <a href="/news/story/0ap2000000320151/article/denver-broncos-peyton-manning-i-do-throw-ducks" data-tracking-pos="Article_11_more">Read</a></p>
	</div>
</div>
<!-- END TAG home/article -->
</li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-12 "><!-- index: 12--><!-- ECM Widget: /widgets/home/content-stream/pull-quote.html-->				
						
<!-- BEGIN ECM labs/home/pull-quote -->
<!-- BEGIN TAG home/pullquote -->
<div class="pull-quote cf">
	<div class="col primary">
		<p class="quote">
			<q cite="http://www.nfl.com/news/story/0ap2000000320151/article/denver-broncos-peyton-manning-i-do-throw-ducks">
 I do throw ducks. I've thrown a lot of yards and touchdowns ducks. So I'm real proud of it.
</q>
		</p>
		<div class="col secondary">
			<a href="http://www.nfl.com/news/story/0ap2000000320151/article/denver-broncos-peyton-manning-i-do-throw-ducks" name="&amp;lid=responds to Richard Sherman&#039;s assertion that he throws ducks.&amp;lpos=Pullquote_12"><img id="HP11_ns_12_pullquote-img" alt="Peyton Manning" width="65" height="90" data-image="http://static.nfl.com/static/content/public/photo/2014/01/30/0ap2000000320172.jpg"/></a>			
		</div>
		<div style="clear:both"></div>
		<p class="from">
		- Peyton Manning,
		<a href="http://www.nfl.com/news/story/0ap2000000320151/article/denver-broncos-peyton-manning-i-do-throw-ducks" name="&amp;lid=responds to Richard Sherman&#039;s assertion that he throws ducks.&amp;lpos=Pullquote_12">responds to Richard Sherman&#039;s assertion that he throws ducks.</a>
		</p>
	</div>
	<div style="clear:both"></div>
</div>
<script>
nfl.use('imageloader',function(Y){
	var pullquoteImageGroup12 = new Y.ImgLoadGroup({name:'pullquote group 12',foldDistance: 200});
	pullquoteImageGroup12.registerImage({domId:'HP11_ns_12_pullquote-img',srcUrl:'http://static.nfl.com/static/content/public/photo/2014/01/30/0ap2000000320172.jpg'});
});
</script>
<!-- END TAG home/pullquote -->
<!-- END ECM labs/home/pull-quote --></li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-13 "><!-- index: 13--><!-- BEGIN TAG home/article -->
<div class="news-stream-module news-stream-article cf" data-tracking-id="Coach of the Year: A coach&#039;s ballot">
	<div class="image col">
			
			
			
		<a href="/news/story/0ap2000000319930/article/my-coach-of-the-year-ballot-ron-rivera-chip-kelly-merit-praise" data-tracking-pos="Article_13_image" class='image-wrapper'><img id="HP11_content_stream-13-img" alt="" width="200" data-image="http://static.nfl.com/static/content/public/photo/2014/01/29/0ap2000000319762.jpg"/><img id="HP11_content_stream-13-img" alt="" width="200" data-image="http://static.nfl.com/static/content/public/photo/2014/01/29/0ap2000000319762.jpg"/>
		</a>
	</div>
	<div class="text col">
		<div class="label">
			<span class="article-title">Under The Headset
</span>
		</div>
		<h3 class="heading"><a href="/news/story/0ap2000000319930/article/my-coach-of-the-year-ballot-ron-rivera-chip-kelly-merit-praise" data-tracking-pos="Article_13_headline">Coach of the Year: A coach's ballot</a></h3>
		
			<div class="comments"><a href="/news/story/0ap2000000319930/comments/my-coach-of-the-year-ballot-ron-rivera-chip-kelly-merit-praise" class="comment-count" data-tracking-pos="Article_13_comments" ><fb:comments-count href="http://nfl.com/goto?id=0ap2000000319930"></fb:comments-count></a></div>
		
		
		<p class='blurb'>Ron Rivera became "Riverboat Ron" and his team became a viable contender. Meanwhile, Chip Kelly lived up to the hype. Who was this season's top coach? Our resident coach, Brian Billick, weighs in. <a href="/news/story/0ap2000000319930/article/my-coach-of-the-year-ballot-ron-rivera-chip-kelly-merit-praise" data-tracking-pos="Article_13_more">Read</a></p>
	</div>
</div>
<!-- END TAG home/article -->
</li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-14 "><!-- index: 14-->
<!-- BEGIN TAG home/video -->
<div class="news-stream-module news-stream-video cf" data-tracking-id="Lynch: We win with dynamic plays">
  	<div class="image col">
  		<span class="image-wrapper">
  			<a href="/videos/super-bowl-live/0ap2000000320221/Lynch-We-win-with-dynamic-plays" data-tracking-pos="Video_14_image"><img id="HP11_content_stream-14-img" alt="" width="200" data-image="http://static.nfl.com/static/content/public/video/2014/01/30/0ap2000000320221_video_rhr_210.jpg" /></a>
  		</span>
  		<span class="play-button"><a href="/videos/super-bowl-live/0ap2000000320221/Lynch-We-win-with-dynamic-plays" data-tracking-pos="Video_14_image"></a></span></div>
  	<div class="text col">
  		<div class="label">
  			<span class="logo-bug"></span>
  			<a data-tracking-module="HP11_content_stream" href="/videos" data-tracking-pos="category_link" data-tracking-id="Video">Video</a>

  		</div>
  		<h3 class="heading"><a href="/videos/super-bowl-live/0ap2000000320221/Lynch-We-win-with-dynamic-plays" data-tracking-pos="Video_14_headline">Lynch: We win with dynamic plays</a></h3>
  		<div class="caption">
  			Seattle Seahawks running back Marshawn Lynch and fullback Michael Robinson address the media on which Denver Broncos defender their most concerned about.
  			<a href="/videos/super-bowl-live/0ap2000000320221/Lynch-We-win-with-dynamic-plays" data-tracking-pos="Video_14_more" class="more">Watch</a>
  		</div>
      
    		<div class="comments">
    			<a href="/videos/super-bowl-live/0ap2000000320221/Lynch-We-win-with-dynamic-plays" class="comment-count" data-tracking-pos="Video_14_comments" ><fb:comments-count href="http://nfl.com/goto?id=0ap2000000320221"></fb:comments-count></a>
  	 	 </div>
      
  	</div>
  </div><!-- END TAG home/video -->
 </li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-15 "><!-- index: 15--><!-- BEGIN TAG home/externallink -->
<div class="news-stream-module news-stream-article cf" data-tracking-id="Manziel passing on Super Bowl XLVIII trip">
	<div class="image col"><a href="http://www.nfl.com/news/story/0ap2000000320256/article/johnny-manziel-passing-on-super-bowl-trip" data-tracking-pos="Article_15_image" class='image-wrapper'>
				<img alt="" id="HP11_content_stream-15-img" width="200" data-image="http://static.nfl.com/static/content/public/photo/2014/01/30/0ap2000000320230.jpg"/>
			</a></div>
	<div class="text col">
		<div class="label">
			<span class="article-title"><a data-tracking-module="HP11_content_stream" href="/cfb247" data-tracking-pos="category_link" data-tracking-id="College Football 24/7">College Football 24/7</a>
</span>
		</div>
		<h3 class="heading"><a href="http://www.nfl.com/news/story/0ap2000000320256/article/johnny-manziel-passing-on-super-bowl-trip" data-tracking-pos="Article_15_headline">Manziel passing on Super Bowl XLVIII trip</a></h3>
		<p class='blurb'>Former Texas A&M quarterback and top NFL draft prospect Johnny Manziel has a way of showing up on the biggest of stages. But he's taking a pass on the biggest of them all. <a href="http://www.nfl.com/news/story/0ap2000000320256/article/johnny-manziel-passing-on-super-bowl-trip" data-tracking-pos="Article_15">Read</a></p>
	</div>
</div>
<!-- END TAG home/externallink -->
</li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-16 "><!-- index: 16--><!-- ECM Widget: /widgets/home/content-stream/twitter.html-->				
						
<!-- BEGIN ECM labs/home/twitter -->

<!-- BEGIN TAG home/tweet -->


<!-- BEGIN TAG custom-fonts fonts="NFLicons" -->



<script>
(function () {
	var NOOP = function () {},
		embedFonts = function() {
			if (!window.YUI) {
				return setTimeout(embedFonts, 500);
			}
			
  				YUI.add("font-nflicons", NOOP);
				
		};
	embedFonts();
}());
</script>








<!-- BEGIN TAG stylesheet files="font-nflicons/font-nflicons.css" media="all" type="" -->


	
	
	
	
		
		  
			<link href="http://s.nflcdn.com/static/site/5.20/scripts/modules/font-nflicons/font-nflicons.css?5.2015455513012014116b82d05bfc54a6360fcb620bec6bb66003f7f5" rel="stylesheet" media="handheld, all" />
  		
		
	


<!-- END TAG stylesheet -->

<!-- END TAG custom-fonts -->

<div class="news-stream-twitter cf">
	<h3 class="heading">From Twitter</h3>
	
		<p class="tweet">
			
Enjoyed visit to NY Stock Exchange this AM. The people of New York & New Jersey have been tremendous to us!!! <a href="https://twitter.com/johnelway/status/428918836210176000/photo/1">pic.twitter.com/gAnBEsiPIA</a> 
		</p>

		<div class="image">
			<a href="http://twitter.com/johnelway"><img src="https://pbs.twimg.com/profile_images/1207986387/elway_twitter_avatar3_bigger.jpg" alt="johnelway" width="48" height="48" /></a>
			<p class="from-user">
				<span class="name">
					John Elway<br />
					<a href="http://twitter.com/johnelway">@johnelway</a>
				</span>
			</p>

		</div>
		<div class="clear"></div>
		
	
			<a href="http://twitter.com/intent/retweet?tweet_id=428918836210176000&amp;lang=en" class='0' data-clickname="Twitter_Retweet"><span class="retweet-logo nflicon"></span> <span class="retweet">Retweet </span></a>
		
	<div class="follow-button">
		<a href="http://twitter.com/intent/user?screen_name=johnelway" class="0" data-clickname="Twitter_Follow"><span class="plus">+</span> Follow</a>
	</div>
</div>

<script type="text/javascript">
nfl.use('node',function(){
	Y.on('domready',function(){
		Y.all('.twitter-intent-link').on('click',function(e){
			var	windowOptions = 'scrollbars=yes,resizable=yes,toolbar=no,location=yes',
				href = e.currentTarget.get('href'),
	      		width = 550,
	      		height = 420,
	      		winHeight = screen.height,
	      		winWidth = screen.width,
	      		left = Math.round((winWidth / 2) - (width / 2)),
	       	 	top = 0;
			if (winHeight > height) {
	          top = Math.round((winHeight / 2) - (height / 2));
	        }
	        window.open(href,'intent',windowOptions + ',width=' + width +',height=' + height + ',left=' + left + ',top=' + top);
       	 	e.preventDefault();
		});
	});	
});
</script>
<!-- END TAG home/tweet -->

<!-- END ECM labs/home/twitter --></li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-17 video-row-container"><!-- index: 17--><!-- BEGIN PAGE widget/home-2011/video-row -->
<div class="news-stream-module video-row">
	<div class="label">
		<span class="logo-bug"></span>
		Video - NFLAM

	</div>
	
	<ul class="cf">
			<li class="" data-tracking-id=""><div class="image-wrapper" style="background-image: url(http://static.nfl.com/static/content/public/video/2014/01/30/0ap2000000320176_video_rhr_210.jpg)">					
					<a class="play-button" href="/videos/nfl-am/0ap2000000320176/Cam-to-Colin-There-will-be-an-answer-for-mocking-TD-celebration" data-tracking-pos="Video_17_1"></a><img id="HP11_content_stream-17-1-img" alt="Cam to Colin: There will be an answer for mocking TD celebration" data-image="http://static.nfl.com/static/content/public/video/2014/01/30/0ap2000000320176_video_rhr_210.jpg" width="200"></div>
				<h3 class="headline"><a href="/videos/nfl-am/0ap2000000320176/Cam-to-Colin-There-will-be-an-answer-for-mocking-TD-celebration" data-tracking-pos="Video_17_1" class="heading">Cam to Colin: There will be an answer for mocking TD celebration</a></h3>
			</li>
			<li class="" data-tracking-id="Cam to Colin: There will be an answer for mocking TD celebration"><div class="image-wrapper" style="background-image: url(http://static.nfl.com/static/content/public/video/2014/01/30/0ap2000000320173_video_rhr_210.jpg)">					
					<a class="play-button" href="/videos/nfl-am/0ap2000000320173/Does-Joe-Montana-think-Manning-is-the-best-quarterback-ever" data-tracking-pos="Video_17_2"></a><img id="HP11_content_stream-17-2-img" alt="Does Joe Montana think Manning is the best quarterback ever?" data-image="http://static.nfl.com/static/content/public/video/2014/01/30/0ap2000000320173_video_rhr_210.jpg" width="200"></div>
				<h3 class="headline"><a href="/videos/nfl-am/0ap2000000320173/Does-Joe-Montana-think-Manning-is-the-best-quarterback-ever" data-tracking-pos="Video_17_2" class="heading">Does Joe Montana think Manning is the best quarterback ever?</a></h3>
			</li>
			<li class="last" data-tracking-id="Does Joe Montana think Manning is the best quarterback ever?"><div class="image-wrapper" style="background-image: url(http://static.nfl.com/static/content/public/video/2014/01/30/0ap2000000320147_video_rhr_210.jpg)">					
					<a class="play-button" href="/videos/nfl-am/0ap2000000320147/Jerry-Rice-I-d-look-forward-to-going-against-Sherman" data-tracking-pos="Video_17_3"></a><img id="HP11_content_stream-17-3-img" alt="Jerry Rice: &#039;I&#039;d look forward to going against Sherman&#039;" data-image="http://static.nfl.com/static/content/public/video/2014/01/30/0ap2000000320147_video_rhr_210.jpg" width="200"></div>
				<h3 class="headline"><a href="/videos/nfl-am/0ap2000000320147/Jerry-Rice-I-d-look-forward-to-going-against-Sherman" data-tracking-pos="Video_17_3" class="heading">Jerry Rice: 'I'd look forward to going against Sherman'</a></h3>
			</li></ul>

	<p style="text-align:right"><a href="/videos" data-tracking-id="More Videos" data-tracking-pos="Video_17_more" class="more">More Videos</a></p>
</div>

<!-- END PAGE widget/home-2011/video-row -->
</li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-18 "><!-- index: 18--><!-- BEGIN TAG home/externallink -->
<div class="news-stream-module news-stream-article cf" data-tracking-id="Don&#039;t miss a moment of Super Bowl week">
	<div class="image col"><a href="http://www.nfl.com/mobile" data-tracking-pos="Article_18_image" class='image-wrapper'>
				<img alt="" id="HP11_content_stream-18-img" width="200" data-image="http://static.nfl.com/static/content/public/photo/2014/01/27/0ap2000000318283.jpg"/>
			</a></div>
	<div class="text col">
		<div class="label">
			<span class="article-title">NFL Mobile
</span>
		</div>
		<h3 class="heading"><a href="http://www.nfl.com/mobile" data-tracking-pos="Article_18_headline">Don't miss a moment of Super Bowl week</a></h3>
		<p class='blurb'>Get NFL Mobile to make sure you are never without football during Super Bowl week. The upgraded app includes access to Super Bowl news, event guide, maps and location-based alerts. Get it now. <a href="http://www.nfl.com/mobile" data-tracking-pos="Article_18">Read</a></p>
	</div>
</div>
<!-- END TAG home/externallink -->
</li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-19 "><!-- index: 19-->
<!-- BEGIN TAG home/video -->
<div class="news-stream-module news-stream-video cf" data-tracking-id="One Play - Best from each Super Bowl">
  	<div class="image col">
  		<span class="image-wrapper">
  			<a href="/videos/nfl-super-bowl/0ap2000000320074/One-Play-Best-from-each-Super-Bowl" data-tracking-pos="Video_19_image"><img id="HP11_content_stream-19-img" alt="" width="200" data-image="http://static.nfl.com/static/content/public/video/2014/01/29/0ap2000000320074_video_rhr_210.jpg" /></a>
  		</span>
  		<span class="play-button"><a href="/videos/nfl-super-bowl/0ap2000000320074/One-Play-Best-from-each-Super-Bowl" data-tracking-pos="Video_19_image"></a></span></div>
  	<div class="text col">
  		<div class="label">
  			<span class="logo-bug"></span>
  			<a data-tracking-module="HP11_content_stream" href="/videos" data-tracking-pos="category_link" data-tracking-id="Video">Video</a>

  		</div>
  		<h3 class="heading"><a href="/videos/nfl-super-bowl/0ap2000000320074/One-Play-Best-from-each-Super-Bowl" data-tracking-pos="Video_19_headline">One Play - Best from each Super Bowl</a></h3>
  		<div class="caption">
  			Super Bowl Sunday may be the greatest day in all of sports. Check out the single, most defining plays from every Super Bowl.
  			<a href="/videos/nfl-super-bowl/0ap2000000320074/One-Play-Best-from-each-Super-Bowl" data-tracking-pos="Video_19_more" class="more">Watch</a>
  		</div>
      
    		<div class="comments">
    			<a href="/videos/nfl-super-bowl/0ap2000000320074/One-Play-Best-from-each-Super-Bowl" class="comment-count" data-tracking-pos="Video_19_comments" ><fb:comments-count href="http://nfl.com/goto?id=0ap2000000320074"></fb:comments-count></a>
  	 	 </div>
      
  	</div>
  </div><!-- END TAG home/video -->
 </li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-20 "><!-- index: 20--><!-- BEGIN TAG home/article -->
<div class="news-stream-module news-stream-article cf" data-tracking-id="Can Seahawks slow down Broncos&#039; pass-catchers?">
	<div class="image col">
			
			
			
		<a href="/news/story/0ap2000000319753/article/can-seahawks-slow-down-broncos-passcatchers" data-tracking-pos="Article_20_image" class='image-wrapper'><img id="HP11_content_stream-20-img" alt="" width="200" data-image="http://static.nfl.com/static/content/public/photo/2014/01/29/0ap2000000319787.jpg"/><img id="HP11_content_stream-20-img" alt="" width="200" data-image="http://static.nfl.com/static/content/public/photo/2014/01/29/0ap2000000319787.jpg"/>
		</a>
	</div>
	<div class="text col">
		<div class="label">
			<span class="article-title"><a data-tracking-module="HP11_content_stream" href="/news/around-the-league" data-tracking-pos="category_link" data-tracking-id="Around the League">Around the League</a>
</span>
		</div>
		<h3 class="heading"><a href="/news/story/0ap2000000319753/article/can-seahawks-slow-down-broncos-passcatchers" data-tracking-pos="Article_20_headline">Can Seahawks slow down Broncos' pass-catchers?</a></h3>
		
			<div class="comments"><a href="/news/story/0ap2000000319753/comments/can-seahawks-slow-down-broncos-passcatchers" class="comment-count" data-tracking-pos="Article_20_comments" ><fb:comments-count href="http://nfl.com/goto?id=0ap2000000319753"></fb:comments-count></a></div>
		
		
		<p class='blurb'>Seattle's historically dominant pass defense has the task on Sunday of bottling up the greatest aerial attack we've ever witnessed. Can the Seahawks get the job done against Denver Broncos? <a href="/news/story/0ap2000000319753/article/can-seahawks-slow-down-broncos-passcatchers" data-tracking-pos="Article_20_more">Read</a></p>
	</div>
</div>
<!-- END TAG home/article -->
</li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-21 "><!-- index: 21--><!-- BEGIN TAG home/article -->
<div class="news-stream-module news-stream-article cf" data-tracking-id="Elway: Manning will have critics even if we win">
	<div class="image col">
			
			
			
		<a href="/news/story/0ap2000000319781/article/john-elway-doesnt-think-there-will-be-a-very-best-qb" data-tracking-pos="Article_21_image" class='image-wrapper'><img id="HP11_content_stream-21-img" alt="" width="200" data-image="http://static.nfl.com/static/content/public/photo/2014/01/29/0ap2000000319813.jpg"/><img id="HP11_content_stream-21-img" alt="" width="200" data-image="http://static.nfl.com/static/content/public/photo/2014/01/29/0ap2000000319813.jpg"/>
		</a>
	</div>
	<div class="text col">
		<div class="label">
			<span class="article-title"><a data-tracking-module="HP11_content_stream" href="/news/around-the-league" data-tracking-pos="category_link" data-tracking-id="Around The League">Around The League</a>
</span>
		</div>
		<h3 class="heading"><a href="/news/story/0ap2000000319781/article/john-elway-doesnt-think-there-will-be-a-very-best-qb" data-tracking-pos="Article_21_headline">Elway: Manning will have critics even if we win</a></h3>
		
			<div class="comments"><a href="/news/story/0ap2000000319781/comments/john-elway-doesnt-think-there-will-be-a-very-best-qb" class="comment-count" data-tracking-pos="Article_21_comments" ><fb:comments-count href="http://nfl.com/goto?id=0ap2000000319781"></fb:comments-count></a></div>
		
		
		<p class='blurb'>John Elway wants Peyton Manning to win multiple Super Bowls and shatter all of the records. However, he admitted when it comes to the "best ever" label, nothing will ever silence all the doubters. <a href="/news/story/0ap2000000319781/article/john-elway-doesnt-think-there-will-be-a-very-best-qb" data-tracking-pos="Article_21_more">Read</a></p>
	</div>
</div>
<!-- END TAG home/article -->
</li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-22 "><!-- index: 22--><!-- BEGIN TAG home/article -->
<div class="news-stream-module news-stream-article cf" data-tracking-id="Behind the Boom: What drives Seattle&#039;s secondary">
	<div class="image col">
			
			
			
		<a href="/superbowl/story/0ap2000000320002/article/legion-of-booms-tight-bond-fuels-seahawks-dominant-defense" data-tracking-pos="Article_22_image" class='image-wrapper'><img id="HP11_content_stream-22-img" alt="" width="200" data-image="http://static.nfl.com/static/content/public/photo/2014/01/29/0ap2000000319996.jpg"/><img id="HP11_content_stream-22-img" alt="" width="200" data-image="http://static.nfl.com/static/content/public/photo/2014/01/29/0ap2000000319996.jpg"/>
		</a>
	</div>
	<div class="text col">
		<div class="label">
			<span class="article-title">Super Bowl XLVIII
</span>
		</div>
		<h3 class="heading"><a href="/superbowl/story/0ap2000000320002/article/legion-of-booms-tight-bond-fuels-seahawks-dominant-defense" data-tracking-pos="Article_22_headline">Behind the Boom: What drives Seattle's secondary</a></h3>
		
			<div class="comments"><a href="/superbowl/story/0ap2000000320002/comments/legion-of-booms-tight-bond-fuels-seahawks-dominant-defense" class="comment-count" data-tracking-pos="Article_22_comments" ><fb:comments-count href="http://nfl.com/goto?id=0ap2000000320002"></fb:comments-count></a></div>
		
		
		<p class='blurb'>Earl Thomas and the Seattle Seahawks' suffocating pass defense didn't materialize out of thin air. Michael Silver explores how the Legion of Boom came together -- and what keeps it going strong. <a href="/superbowl/story/0ap2000000320002/article/legion-of-booms-tight-bond-fuels-seahawks-dominant-defense" data-tracking-pos="Article_22_more">Read</a></p>
	</div>
</div>
<!-- END TAG home/article -->
</li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-23 "><!-- index: 23--><!-- BEGIN TAG home/article -->
<div class="news-stream-module news-stream-article cf" data-tracking-id="Bringing the heat: Who will win Super Bowl XLVIII?">
	<div class="image col">
			
			
			
		<a href="/superbowl/story/0ap2000000320269/article/peyton-manning-broncos-to-beat-seahawks-cold-in-super-bowl" data-tracking-pos="Article_23_image" class='image-wrapper'><img id="HP11_content_stream-23-img" alt="" width="200" data-image="http://static.nfl.com/static/content/public/photo/2014/01/30/0ap2000000320254.jpg"/><img id="HP11_content_stream-23-img" alt="" width="200" data-image="http://static.nfl.com/static/content/public/photo/2014/01/30/0ap2000000320254.jpg"/>
		</a>
	</div>
	<div class="text col">
		<div class="label">
			<span class="article-title">Game Picks
</span>
		</div>
		<h3 class="heading"><a href="/superbowl/story/0ap2000000320269/article/peyton-manning-broncos-to-beat-seahawks-cold-in-super-bowl" data-tracking-pos="Article_23_headline">Bringing the heat: Who will win Super Bowl XLVIII?</a></h3>
		
			<div class="comments"><a href="/superbowl/story/0ap2000000320269/comments/peyton-manning-broncos-to-beat-seahawks-cold-in-super-bowl" class="comment-count" data-tracking-pos="Article_23_comments" ><fb:comments-count href="http://nfl.com/goto?id=0ap2000000320269"></fb:comments-count></a></div>
		
		
		<p class='blurb'>How will things shake out when the Denver Broncos and Seattle Seahawks meet in the cold for Super Bowl XLVIII? Elliot Harrison makes his pick -- and says a lot depends on Knowshon Moreno. <a href="/superbowl/story/0ap2000000320269/article/peyton-manning-broncos-to-beat-seahawks-cold-in-super-bowl" data-tracking-pos="Article_23_more">Read</a></p>
	</div>
</div>
<!-- END TAG home/article -->
</li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-24 "><!-- index: 24--><!-- ECM Widget: /widgets/home/content-stream/shop.html-->				
						
<!-- BEGIN ECM home/beta/shop -->
<!-- BEGIN TAG home/shop -->

	
		
		
	
	

<div class="news-stream-module news-stream-shop cf">
	<div class="image col">
		<a href="http://www.nflshop.com/source/bm-nflcom-200x115-BroncosSeahawksConfChamps-011914" name="&amp;lid=Get Broncos & Seahawks Championship Gear&amp;lpos=Shop_" class='image-wrapper'><img alt="Get Broncos & Seahawks Championship Gear" src="http://static.nfl.com/static/content/public/photo/2014/01/21/0ap2000000316113.jpg"  /></a>
	</div>
	<div class="text col">
		<div class="label">
			<span class="article-title"><a href="http://nflshop.com" name="&amp;lid=Get Broncos & Seahawks Championship Gear&amp;lpos=Shop_">Shop</a></span>
		</div>
		<h3><a href="http://www.nflshop.com/source/bm-nflcom-200x115-BroncosSeahawksConfChamps-011914" name="&amp;lid=Get Broncos & Seahawks Championship Gear&amp;lpos=Shop_" class='heading'>Get Broncos & Seahawks Championship Gear</a></h3>
		<p class='blurb'>
Congratulations to the Denver Broncos and Seattle Seahawks for advancing to Super Bowl XLVIII! Head to NFL Shop and show your support with Championship gear, now available for sale online. 
 <a href="http://www.nflshop.com/source/bm-nflcom-200x115-BroncosSeahawksConfChamps-011914" name="&amp;lid=Get Broncos & Seahawks Championship Gear&amp;lpos=Shop_">Shop</a></p>
	</div>
</div>
<!-- END TAG home/shop-->
<!-- END ECM home/beta/shop --></li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-25 "><!-- index: 25-->
<!-- BEGIN TAG home/video -->
<div class="news-stream-module news-stream-video cf" data-tracking-id="&#039;Draft Day&#039; movie trailer">
  	<div class="image col">
  		<span class="image-wrapper">
  			<a href="/videos/nfl-videos/0ap2000000319958/Draft-Day-movie-trailer" data-tracking-pos="Video_25_image"><img id="HP11_content_stream-25-img" alt="" width="200" data-image="http://static.nfl.com/static/content/public/video/2014/01/29/0ap2000000319958_video_rhr_210.jpg" /></a>
  		</span>
  		<span class="play-button"><a href="/videos/nfl-videos/0ap2000000319958/Draft-Day-movie-trailer" data-tracking-pos="Video_25_image"></a></span></div>
  	<div class="text col">
  		<div class="label">
  			<span class="logo-bug"></span>
  			<a data-tracking-module="HP11_content_stream" href="/videos" data-tracking-pos="category_link" data-tracking-id="Video">Video</a>

  		</div>
  		<h3 class="heading"><a href="/videos/nfl-videos/0ap2000000319958/Draft-Day-movie-trailer" data-tracking-pos="Video_25_headline">'Draft Day' movie trailer</a></h3>
  		<div class="caption">
  			Get a sneak peek at the new movie, "Draft Day," which focuses on a fictional Cleveland Browns draft. Check out the trailer and catch the movie in theaters April 11.
  			<a href="/videos/nfl-videos/0ap2000000319958/Draft-Day-movie-trailer" data-tracking-pos="Video_25_more" class="more">Watch</a>
  		</div>
      
    		<div class="comments">
    			<a href="/videos/nfl-videos/0ap2000000319958/Draft-Day-movie-trailer" class="comment-count" data-tracking-pos="Video_25_comments" ><fb:comments-count href="http://nfl.com/goto?id=0ap2000000319958"></fb:comments-count></a>
  	 	 </div>
      
  	</div>
  </div><!-- END TAG home/video -->
 </li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-26 "><!-- index: 26--><!-- BEGIN TAG home/externallink -->
<div class="news-stream-module news-stream-article cf" data-tracking-id="Six Boroughs: Staten Island">
	<div class="image col"><a href="http://www.nfl.com/boroughs#qs-anchor-qs-page-staten-island" data-tracking-pos="Article_26_image" class='image-wrapper'>
				<img alt="" id="HP11_content_stream-26-img" width="200" data-image="http://static.nfl.com/static/content/public/photo/2014/01/29/0ap2000000320022.jpg"/>
			</a></div>
	<div class="text col">
		<div class="label">
			<span class="article-title">The Six Boroughs Experience
</span>
		</div>
		<h3 class="heading"><a href="http://www.nfl.com/boroughs#qs-anchor-qs-page-staten-island" data-tracking-pos="Article_26_headline">Six Boroughs: Staten Island</a></h3>
		<p class='blurb'>Four Vince Lombardis have lunched at John’s Deli on Staten Island. And … a high school coach that lived Lombardi’s life without the notoriety. <a href="http://www.nfl.com/boroughs#qs-anchor-qs-page-staten-island" data-tracking-pos="Article_26">Read</a></p>
	</div>
</div>
<!-- END TAG home/externallink -->
</li>
		
								
		<li class="widgets-home-content-stream-container widgets-home-content-stream-container-27 "><!-- index: 27--><!-- BEGIN TAG home/externallink -->
<div class="news-stream-module news-stream-article cf" data-tracking-id="Who gets your vote for the Hall of Fame?">
	<div class="image col"><a href="http://www.nfl.com/hofvote" data-tracking-pos="Article_27_image" class='image-wrapper'>
				<img alt="" id="HP11_content_stream-27-img" width="200" data-image="http://static.nfl.com/static/content/public/photo/2013/11/20/0ap2000000285091.jpg"/>
			</a></div>
	<div class="text col">
		<div class="label">
			<span class="article-title">2014 Pro Football Hall of Fame Fan Vote
</span>
		</div>
		<h3 class="heading"><a href="http://www.nfl.com/hofvote" data-tracking-pos="Article_27_headline">Who gets your vote for the Hall of Fame?</a></h3>
		<p class='blurb'>The 15 finalists for the Pro Football Hall of Fame Class of 2014 have been unveiled. Vote for your favorites. <a href="http://www.nfl.com/hofvote" data-tracking-pos="Article_27">Vote</a></p>
	</div>
</div>
<!-- END TAG home/externallink -->
</li></ol>
	<div class="more">
		<a data-tracking-id="More News" data-tracking-pos="More_News_Footer" href="/news"><span>More News</span> <div class='more-links-triangle'></div></a>
		<a data-tracking-id="More Blogs" data-tracking-pos="More_Blogs_Footer" href="http://blogs.nfl.com/"><span>More Blogs</span> <div class='more-links-triangle'></div></a>
		<a data-tracking-id="More Videos" data-tracking-pos="More_Videos_Footer" href="/videos"><span>More Videos</span> <div class='more-links-triangle'></div></a>
	</div>
</div>
<script>
nfl.loadFacebook(function (FB) {
	FB.XFBML.parse();
});
</script>

<!-- end module -->
						

					

						

						

						

						

						

						<!-- WIDGET type: ADQUIGO, id 79, name: adquigo
							config:
							
							urlparams: ""
						-->

						
							


	
		<div class="search-ads" id="page-end-ads"></div>
		<script type="text/javascript">/*<![CDATA[*/
(function () {
	var id     = "page-end-ads", el,
	    url    = "/widget/ads/search-ads?placementId=1500929&pid=2117767&ps=-1&width=615&height=200",
	    iframe = '<iframe id="page-end-ads"' +
				    'frameborder="0" ' +
				    'scrolling="no" ' +
				    'width="615" ' +
				    'height="200"></iframe>';
	
	if (nfl.constants.SEARCH_ADS) {
		YUI().use("node", function (Y) {
			el = Y.one('#' + id);
			el.setContent(iframe);
			// do this in two steps to prevent Firefox bug
			setTimeout(function () {
				el.one('iframe').setAttribute('src', url);
			}, 50);
		});
	}
}());
		/*]]>*/</script>
	
	


						

					
				</div>
			<!-- end column 1 -->
		
			<!-- start column 2 -->
				<div class="col last-span-5">


					
						
					
						
					
						
							
								

									
								
							
								
							
						
					
						
					
						
					
						
					
						
					
						
					

					

					

						

						

						

						

						

						<!-- WIDGET type: MORENFL, id 72, name: morenfl
							config:
							
							urlparams: ""
						-->

						
							<!-- start module -->
<div id="more-nfl-wrapper">
	<!-- BEGIN WIDGET widgets/home-2011/views/nfl-network -->
<!--countdown clock loacted in ECM /widgets/home/countdown-clock.html-->

<div class="nfl-network" class='module cf'><div class='image col'>
				<a href="http://nflnonline.nfl.com/nflno?icampaign=homepage_NFLNOW_nflno&module=HP11_more_now" name="&amp;lid=Super Bowl Live&amp;lpos=image" target="_self"><img alt="" id="HP11_more_now-img-1" src="http://static.nfl.com/static/content/photo/2012/06/26/09000d5d82a22e7d.png"/></a>
			</div>
			<div class='text col'>
				<p class="label">Watch live online</p>
				<h3 class="heading"><a href="http://nflnonline.nfl.com/nflno?icampaign=homepage_NFLNOW_nflno&module=HP11_more_now" name="&amp;lid=Super Bowl Live&amp;lpos=headline" target="_self">Super Bowl Live</a></h3>
			</div>
			<div class='more col'>
				<a href="http://nflnonline.nfl.com/nflno?icampaign=homepage_NFLNOW_nflno&module=HP11_more_now" name="&amp;lid=Super Bowl Live&amp;lpos=more" class="more">NOW</a>
			</div>
		</div><!-- END WIDGET widgets/home-2011/views/nfl-network -->
</div>
<!-- end module -->
						

					

						

						

						

						

						

						<!-- WIDGET type: TRAFFICDRIVER, id 80, name: trafficdriver
							config:
							
							urlparams: ""
						-->

						
							



	
	


	
	









<!-- BEGIN WIDGET widget/home-2011/views/live-traffic-driver -->

	<div id="td-live-container" class="live-traffic-driver module bn_skin_super_bowl">
		
		<img src="http://i.nflcdn.com/static/site/5.20/img/home-2011/live-traffic-live-bug.png" class="live-bug" alt="Live"/>
		
			
			
				<div class="geo-promo" onclick="window.location=(nfl.constants.SITE_URL+'/traffic-driver/redirect/bn_skin_super_bowl/geopromo')"></div>
			
		
		<div id="td-video-player" class="video-player" style="position: relative; width: 340px; height: 192px; z-index:2;"></div>
		<div class="contents">
			<h1 class="heading">
				
					<a href="/superbowl/48/live?module=HP11_traffic_driver" name="&lid=Watch NFL.com/Live SB48 - THU&lpos=LiveTrafficDriverHeadline">
				
				Watch NFL.com/Live SB48 - THU 
				
					</a>
				
			</h1>

	 		 
				<div class="caption">Some of the biggest names in sports and entertainment share their thoughts with Matt “Money” Smith, Dave Dameshek, Molly Qerim and Adam Rank from "Radio Row" in NYC.</div>
			 
			
				<a href="/superbowl/48/live?module=HP11_traffic_driver" name="&lid=Watch Live&lpos=LiveTrafficDriverMore" class="more" >Watch Live</a>
			
		</div>
	</div>

	<script>
		nfl.Y.use('node', 'geocode', 'event-custom', 'json-parse',function (Y) {
			var playerEvent = new Y.EventTarget(),
				TD_CLICK = 'trafficDriverClick',
				TD_START = 'trafficDriverStart',
				TD_COMPLETE = 'trafficDriverComplete';

			Y.Array.each([TD_CLICK, TD_START, TD_COMPLETE], function(event){
				playerEvent.publish(event, {
					broadcast: 2
				});
			});
			
			function initTD(){
				var isIPad = !!Y.UA.ipad || window.location.search.indexOf('HTML5') != -1,
					containerId = '#td-video-player',
					cbox = Y.one(containerId),
					contentId = "0ap1000000127462",
					jsonPath = '/static/embeddablevideo/'+ contentId +'.json',
					secondsToPlay = "120",
					minPlayerVersion = [10, 0, 0],
					flashAdTag = "http://ad.doubleclick.net/pfadx/nfl.home/landing;s1=landing;slot=inpage;url=landing;nfl=ad;!category=;kw=;tile=10;test=;sz=640x360;ord=" + (nfl.constants.AD_RANDOM || window.adRandom) + "?",
					html5AdTag = ("http://ad.doubleclick.net/pfadx/nfl.home/landing/html5;s1=landing;player=html5;url=landing;nfl=ad;!category=;kw=;tile=10;test=;sz=640x360{dcopt};ord=" + (nfl.constants.AD_RANDOM || window.adRandom) + "?").replace('{dcopt}','');

				// comment this out to enable HTML5 Video Preroll
				//html5AdTag = null;

				if(isIPad){

					Y.use('io', 'json-parse', function(){
						var ima, video, videoPath, adsManager, playButton, hitArea, muteButton, playStartTime, contentInitialized, adsLoaded, isAdPlaying, shouldPlayPreroll,
							loadGoogleIMA = (function(w){
								return function(cb){
									var google = w.google;
									if(google && google.ima){
										cb(google.ima);
									}else{
										Y.Get.script('https://s0.2mdn.net/instream/html5/ima3.js', {
											onSuccess: function(){
												cb(w.google && w.google.ima);
											},
											onFailure: function(){
												cb();
											}
										});
									}
								};

							})(window);

						createVideoNode();

						if(html5AdTag){
							loadGoogleIMA(function(ima_){
								if(ima_){
									ima = ima_;
                                    shouldPlayPreroll = true;
								}
								getVideoJSONFile();
							});
						}else{
							getVideoJSONFile();
						}

						function createVideoNode(){
							if(!video){
								var videoContainer = Y.Node.create('<div class="td-video-container" style="position:absolute;top:0;left:0;width:100%;height:100%;"></div>');
								video = Y.Node.create('<video id="td-html-player" width="340" height="192" controls></video>');
								videoContainer.append(video);
								cbox.append(videoContainer);
							}
						}

						function playVideo(){
                            console.log('playVideo')
                            var videoNode = video.getDOMNode();
							video.setAttribute('src', videoPath);
							video.on('ended', function(e){
								console.log(e.type, e);
								onVideoComplete();
							});
							video.on('waiting', function(e){
								console.log(e.type, e);
								/*playButton.show();
								hitArea.hide();*/
							});
                            video.on('loadedmetadata', function(e){
                                console.log(e.type, e);
								// need this race condition to trigger both video and preroll playback from user action
                                contentInitialized = true;
                                if (adsLoaded) {
                                    startAds();
                                }
                            });
							video.on('playing', function(e){
								console.log(e.type, videoNode.currentTime);

								playButton.hide();
								if(!hitArea){
									hitArea = cbox.appendChild('<a href="/superbowl/48/live?module=HP11_traffic_driver" style="position: absolute; top: 0; left: 0; width:340px; height:192px; display:block;"><img src="http://i.nflcdn.com/static/site/5.20/img/shim.gif"/></a>');
									/* volume control on iPad doesn't work
									 muteButton = cbox.appendChild('<span class="mute-button"></span>');
									 muteButton.on('click', function(e){
									 video._node.volume = muteButton.hasClass('muted') ? 1 : 0;
									 muteButton.toggleClass('muted');
									 });*/
									playerEvent.fire(TD_START);
								}else{
									hitArea.show();
								}
							});
							video.on('timeupdate', function(e){
                                //console.log(e.type, e);
								if(!playStartTime){
									playStartTime = videoNode.currentTime;
								}else if( videoNode.currentTime - playStartTime > parseInt(secondsToPlay) ){
                                    videoNode.pause();
									onVideoComplete();
								}
							});

                            if(shouldPlayPreroll){
                                playPreroll();
								videoNode.load();
                            }else{
								videoNode.play();
							}


						}

                        function startAds() {
                            console.log('startAds')
                            adsManager.start();
                        }

						function playPreroll(){
							console.log('playPreroll', ima)

							var videoNode = video.getDOMNode(),
                                adContainer = Y.Node.create('<div id="td-html-ad-container" style="position:absolute;top:0;left:0;width:100%;height:100%;cursor:pointer;"></div>'),
								clickTracking = Y.Node.create('<div id="td-html-click-tracking" style="position:absolute;top:0;left:0;width:100%;height:100%;cursor:pointer;"></div>'),
								adInfoTxt = Y.Node.create('<div id="td-html-ad-info" style="position:absolute;top:0;left:0;font-family:arial,sans-serif;font-size:10px;color:#fff;text-shadow:0 0 2px #000;margin:2px 0 0 2px;"></div>'),
								adDisplayContainer,
								adsLoader,
								adRemainingTimer,
								adCancelTimer,
								remainingTime,
								clearAd = function(){
									clickTracking && clickTracking.remove(true);
									adInfoTxt && adInfoTxt.remove();
									isAdPlaying = false;
									shouldPlayPreroll = false;
									clearInterval(adRemainingTimer);
									playButton.clearData('remainingTime');
								},
								onAdError = function(e){
									console.log('onAdError', e && e.getError());
									clearAd();
                                    videoNode.play();
								},
                                onContentPauseRequested = function(e){
                                    console.log('onContentPauseRequested', e, videoNode.paused);
                                    if(!videoNode.paused){
                                        videoNode.pause();
                                    }
                                },
                                onContentResumeRequested = function(e){
                                    console.log('onContentResumeRequested', e);
                                    videoNode.play();
                                },
								onAdsManagerLoaded = function(e){
									console.log('onAdsManagerLoaded', e)
									adsManager = e.getAdsManager(video.getDOMNode());
									adsManager.addEventListener(ima.AdErrorEvent.Type.AD_ERROR, onAdError);
                                    adsManager.addEventListener(ima.AdEvent.Type.CONTENT_PAUSE_REQUESTED, onContentPauseRequested);
                                    adsManager.addEventListener(ima.AdEvent.Type.CONTENT_RESUME_REQUESTED, onContentResumeRequested);
									adsManager.addEventListener(ima.AdEvent.Type.LOADED, function(e){
										console.log('AdEvent.Type.LOADED', contentInitialized);
										// need this race condition to trigger both video and preroll playback from user action
                                        adsLoaded = true;
                                        if (contentInitialized) {
                                            startAds();
                                        }
									});
									adsManager.addEventListener(ima.AdEvent.Type.STARTED, function(e){
										console.log('AdEvent.Type.STARTED');
										clearTimeout(adCancelTimer);
										adInfoTxt.set('text', '');
										isAdPlaying = true;
										adRemainingTimer = setInterval(function() {
											remainingTime = adsManager.getRemainingTime();
											if(remainingTime != playButton.getData('remainingTime')){
												playButton.hide();
											}else{
												playButton.show();
											}
											playButton.setData('remainingTime', remainingTime);
											console.log('remainingTime', remainingTime);
										}, 700);
									});
									adsManager.addEventListener(ima.AdEvent.Type.COMPLETE, function(e){
										console.log('AdEvent.Type.COMPLETE')
										clearAd();
									});

									try {
										// Initialize the ads manager. Ad rules playlist will start at this time.
										adsManager.init(340, 192, ima.ViewMode.NORMAL);
									} catch (err) {
										// An error may be thrown if there was a problem with the VAST response.
										console.error(err.message);
									}
								};

							cbox.insertBefore(adInfoTxt, playButton);
							cbox.insertBefore(adContainer, playButton);
							cbox.insertBefore(clickTracking, playButton);
							clickTracking.on('click', function(e){
								playButton.show();
							});
							adDisplayContainer = new ima.AdDisplayContainer(adContainer.getDOMNode(), null, clickTracking.getDOMNode());
							adDisplayContainer.initialize();
							adsLoader = new ima.AdsLoader(adDisplayContainer);
							adsLoader.addEventListener(ima.AdsManagerLoadedEvent.Type.ADS_MANAGER_LOADED, onAdsManagerLoaded, false);
							adsLoader.addEventListener(ima.AdErrorEvent.Type.AD_ERROR, onAdError, false);

							var adsRequest = new ima.AdsRequest();
							adsRequest.adTagUrl = html5AdTag;
							adsLoader.requestAds(adsRequest);
							adInfoTxt.set('text', 'Ad is loading...');
							adCancelTimer = setTimeout(function(){
								adsManager && adsManager.stop();
								onAdError();
							}, 10*1000);
						}
						
						function getVideoJSONFile(){
							Y.io(jsonPath, {
								data: 'random=' + Y.Lang.now(),
								on: {
									success: function(id, o, args) {
										var data = Y.JSON.parse(o.responseText),
											streamName = data ? data.videoPathIos : '',
											poster = (data && data.imagePaths) ? data.imagePaths.l : '';
										console.log('data', data);
										videoPath = streamName;
										embedVideo(poster);
									},
									failure: function(id, o, args) {
										console.error('failed to load video json data for TD');
									}
								}
							});
						};

						function registerEvents(events){
							Y.Array.each(events, function(event){
								Y.Node.DOM_EVENTS[event] = 1;
							});
						}

						function embedVideo(poster){
							console.log('embedVideo', poster)
							registerEvents(['ended', 'play', 'playing', 'timeupdate', 'waiting', 'loadedmetadata']);

							if(poster) video.setAttribute('poster', poster);

							playButton = cbox.appendChild('<span class="play-button"></span>');
							playButton.on('click', function(){
								if(isAdPlaying){
									adsManager && adsManager.resume();
								}else{
									playVideo();
								}
								playButton.hide();
							});

							video._node.controls = false;


						}

						function onVideoComplete(){
							playerEvent.fire(TD_COMPLETE);
							if(hitArea) hitArea.append('<span class="continue-button"></span>');
						}

					});
					
				}else{

					Y.use('swfdetect', function(){

						if(Y.SWFDetect.isFlashVersionAtLeast.apply(null, minPlayerVersion)) {
	
							Y.use('swf', function(){
					
								var bnvSWF = new Y.SWF( 
									containerId, 
									'http://flash.static.nfl.com/static/site/5.20/flex/traffic-driver/player-bnv-side.swf', 
									{
										fixedAttributes: {
											allowScriptAccess: 'always',
											wmode: 'opaque'
										},
										flashVars: {
											baseUrl: "http:\/\/www.nfl.com", 
											contentId: contentId,
											videoPlayerName: "Homepage_Traffic_Player",
											dartUrl: flashAdTag,
											secondsToPlay: secondsToPlay,
											linkUrl: "/superbowl/48/live?module=HP11_traffic_driver" // won't be used 
										}
									}
								);
								bnvSWF.on('click', function(e){
									playerEvent.fire(TD_CLICK);
								});
								bnvSWF.on('start', function(e){
									playerEvent.fire(TD_START);
								});
								bnvSWF.on('complete', function(e){
									playerEvent.fire(TD_COMPLETE);
								});
	
							});
	
						}else if (Y.SWFDetect.isFlashVersionAtLeast.apply(null, [6, 0, 65])) {
	
							Y.Get.script(nfl.constants.SCRIPT_PATH + '/scripts/lib/swfobject-2.2.js', { onSuccess: function(){
								cbox.wrap('<div style="width: 340px; height: 192px"></div>');
								swfobject.embedSWF(nfl.constants.FLASH_PATH + '/flash/expressinstall.swf', containerId.slice(1), '100%', '100%', '6.0.65', false, {
									MMredirectURL: window.location.toString(),
									MMdoctitle: document.title
								}, {
									allowScriptAccess: 'always'
								});
							}});
							
						}else{
							var alt = Y.Node.create('<a href="http://get.adobe.com/flashplayer/" target="_blank"><img width="340" height="192" src="' + nfl.constants.IMAGE_PATH + '/img/video/flash-required-294-192.png" alt="The latest version of Flash is required to watch videos on NFL.com. Please click here to install Flash on your computer." /></a>');
							cbox.append(alt);
						}

					});

				}
			}
			initTD();
			
			var onGeoResp = function(result){
				if(result){
					var geo = Y.JSON.parse(result), geoClass;
					console.log('geo',geo);
					if(geo.classRule !== null){
						Y.one('#td-live-container').addClass('geo-'+geo.classRule);
					}else{
						Y.one('#td-live-container').addClass('geo-promo');
					}
				}
				// check to see if any video elements are set to display none, if so, remove
				var _vps = Y.one('#td-live-container').one('.video-player');
				if(_vps){
					if(_vps.get('display') === 'none'){
						// remove video element any time a geo class sets a video player to display none
						_vps.setContent();
					}
				}
			}
			
			Y.getNFLGeoCode('/traffic-driver/live/bn_skin_super_bowl', onGeoResp);
			//onGeoResp('{"countryCode":"US","uri":"/traffic-driver/live/bn_skin_super_bowl","classRule":null}');
		});
	</script>
	<script>
		YUI.add('td-click-handler', function(Y){
			/*
			* Default Click Action, 
			* only handles click event from Live Traffic Driver SWF and 
			* jump to the url set either in the console or jsp which includes 'url' param.
			*/
			function ClickHandler(){
				var that = this;
				Y.Global.on('trafficDriverClick', this.onTDClick, this);
				Y.Global.on('trafficDriverComplete', function(){that.isPlayComplete = true;});
				this.init();
			};
			ClickHandler.prototype = {
				init: function(){},
				isPlayComplete: false,
				onTDClick: function(e){location.href = '/superbowl/48/live?module=HP11_traffic_driver';}
			};

			Y.namespace('NFL.TrafficDriver').ClickHandler = ClickHandler;
			
		}, '3.3.0', {requires: ['node']});
	</script>
	
		
		
			
		
	
	
	<script>
		nfl.Y.use('td-click-handler', function(Y) {
			new Y.NFL.TrafficDriver.ClickHandler();
		});
	</script>


<!-- END WIDGET widget/home-2011/views/live-traffic-driver -->

						

					

						

						

						

						
							
						

						

						<!-- WIDGET type: AD, id 56, name: ad250
							config:
							 embed : hot-topic
							 dropzones : 
							
							urlparams: "?config_embed=hot-topic&config_dropzones=&"
						-->

						
							


						

					

						

						

						

						

						

						<!-- WIDGET type: HOTTOPIC, id 71, name: hottopic
							config:
							
							urlparams: ""
						-->

						
							

<!-- BEGIN WIDGET home-2011/hottopic -->
<div id="hot-topics-wrapper">
	
	
	

	<!-- COUNTRY CODE: 'US' -->
	
		
		
	
	
	
	<script id="tmpl-hot-topics-fantasy" type="text/html">
		<!-- BEGIN Hot Topic Fantasy module -->
		
<!-- BEGIN WIDGET home-2011/views/hot-topics -->



  



	<div id="hot-topics" data-tracking-module="HP11_hot_topics">


	


	</div>


<!-- END WIDGET home-2011/views/hot-topics -->

		<!-- END Hot Topic Fantasy module -->
	</script>
	<script id="tmpl-hot-topics-default" type="text/html">
		
<!-- BEGIN WIDGET home-2011/views/hot-topics -->





	<div id="hot-topics" data-tracking-module="HP11_hot_topics">


	
		
		
		
		

		
			
			

				
				<div id="hot-topic-0" class="module top-right" data-type='hot-topic' data-tracking-id="Legion-dary story">
			
		

			
			<div class="image">
				<a href="http://www.nfl.com/superbowl/story/0ap2000000320002/article/legion-of-booms-tight-bond-behind-seahawks-dominant-d" data-tracking-pos="hot_topics_image" target="_self"><img alt="Legion-dary story" src="http://static.nfl.com/static/content/public/photo/2014/01/29/0ap2000000320068.jpg"  /></a>
			</div>
			<div class="contents">
				<h1 class="heading"><a href="http://www.nfl.com/superbowl/story/0ap2000000320002/article/legion-of-booms-tight-bond-behind-seahawks-dominant-d" data-tracking-pos="hot_topics_headline" target="_self">Legion-dary story</a></h1>
				
					<div class="caption">Michael Silver traces the origins of the now-infamous Legion of Boom and its vocal leader, Richard Sherman. Find out how the crew&#039;s name came about.</div>
				
				
					<ol class="related">
					
						
						
						
							<li><a href="http://www.nfl.com/news/story/0ap2000000319895/article/pete-carrolls-players-gush-about-the-seahawk-way" data-tracking-id="Seahawks players explain the 'Seahawk Way'" data-tracking-pos="hot_topics_related_1">Seahawks players explain the 'Seahawk Way'</a></li>
						
					
						
						
						
							<li><a href="http://www.nfl.com/news/story/0ap2000000319753/article/can-seahawks-slow-down-broncos-passcatchers" data-tracking-id="Will Seahawks be able to slow Broncos WRs?" data-tracking-pos="hot_topics_related_2">Will Seahawks be able to slow Broncos WRs?</a></li>
						
					
						
						
						
							<li><a href="http://www.nfl.com/videos/nfl-network-gameday/0ap2000000319462/Sherman-They-re-still-waiting-for-me-to-fail" data-tracking-id="Watch: Sherman goes 1-on-1 with Deion" data-tracking-pos="hot_topics_related_3">Watch: Sherman goes 1-on-1 with Deion</a></li>
						
					
						
						
						
							<li><a href="http://www.nfl.com/superbowl/story/0ap2000000317681/article/seattle-seahawks-vs-denver-broncos-an-unprecedented-event" data-tracking-id="Strength vs. strength: 'Hawks D vs. Broncos O" data-tracking-pos="hot_topics_related_4">Strength vs. strength: 'Hawks D vs. Broncos O</a></li>
						
					
						
						
						
							<li><a href="http://www.nfl.com/news/story/0ap2000000319478/article/richard-sherman-has-extreme-recall-per-hawks-dc" data-tracking-id="Coach marvels about Sherman's memory" data-tracking-pos="hot_topics_related_5">Coach marvels about Sherman's memory</a></li>
						
					
					</ol>
				
			</div>
			
				
				
					</div>
				
			


		
		
		
		
		

		
			
			

				
					<div id='hp-desktop-hot-topic-ad250rightrailfirst' class="module hp-desktop-hot-topic-ad250" data-type='hot-topic-ad'data-tracking-id="hp-desktop-hot-topic-ad250" style="width:300px;height:250px;">

						<noscript>
							<a href="http://ad.doubleclick.net/jump/nfl.home/landing;s1=landing;slot=rightrailfirst;url=landing;nfl=ad;!category=;kw=;tile={tile};test=;sz=300x250;{aamnfl};u={aam_did}{dcopt}" target="_blank">
								<img class="adImg" src="http://ad.doubleclick.net/ad/nfl.home/landing;s1=landing;url=landing;nfl=ad;!category=;kw=;tile={tile};test=;sz=200x250;{aamnfl};u={aam_did}{dcopt}" width="300" height="250" border="0" alt=""/>
							</a>
						</noscript>

					</div>
				
				<div id="hot-topic-1" class="module top-right" data-type='hot-topic' data-tracking-id="Ones for the ages">
			
		

			
				<div class="flag" style="background:#C51D27">Super Bowl</div>
			
			<div class="image">
				<a href="http://www.nfl.com/superbowl/48" data-tracking-pos="hot_topics_image" target="_self"><img alt="Ones for the ages" src="http://static.nfl.com/static/content/public/photo/2014/01/29/0ap2000000319957.jpg"  /></a>
			</div>
			<div class="contents">
				<h1 class="heading"><a href="http://www.nfl.com/superbowl/48" data-tracking-pos="hot_topics_headline" target="_self">Ones for the ages</a></h1>
				
					<div class="caption">Elliot Harrison ranks all 47 Super Bowls from least to most exciting with some help from Gil Brandt ahead of Sunday&#039;s Super Bowl XLVIII showdown.</div>
				
				
					<ol class="related">
					
						
						
						
							<li><a href="http://www.nfl.com/superbowl/story/0ap2000000319387/article/super-bowl-memories-from-max-mcgee-to-mario-manningham" data-tracking-id="Brandt recalls favorite Super Bowl memories" data-tracking-pos="hot_topics_related_1">Brandt recalls favorite Super Bowl memories</a></li>
						
					
						
						
						
							<li><a href="http://www.nfl.com/boroughs#qs-anchor-qs-page-bronx" data-tracking-id="Explore the Six Boroughs: Lombardi experience" data-tracking-pos="hot_topics_related_2">Explore the Six Boroughs: Lombardi experience</a></li>
						
					
						
						
						
							<li><a href="http://www.nfl.com/photoessays/0ap2000000317403" data-tracking-id="Mind-blowing stats for Super Bowl XLVIII" data-tracking-pos="hot_topics_related_3">Mind-blowing stats for Super Bowl XLVIII</a></li>
						
					
						
						
						
							<li><a href="http://superbowlnyc.nfl.com/" data-tracking-id="Explore the home cities of Super Bowl XLVIII" data-tracking-pos="hot_topics_related_4">Explore the home cities of Super Bowl XLVIII</a></li>
						
					
						
						
						
							<li><a href="http://www.nfl.com/superbowl/48/trivia" data-tracking-id="Test your knowledge about Super Bowl trivia" data-tracking-pos="hot_topics_related_5">Test your knowledge about Super Bowl trivia</a></li>
						
					
					</ol>
				
			</div>
			
				
				
					</div>
				
			


		


	</div>


<!-- END WIDGET home-2011/views/hot-topics -->

	</script>
</div>
<script>
	// logic pulled from the centerpiece-conditional module
	nfl.Y.use('nfl-ranked-widget-plugin', 'nfl-ranked-widget-frequencycap-plugin', 'dust-helpers-nfl', function (Y) {

		Y.one('#hot-topics-wrapper').plug(Y.NFL.RankedWidgetPlugin, {
			tmplName: 'hpHtTmpl',
			/*tmpl: Y.one('#tmpl-hot-topics').getHTML(),
			printCompiledTmpl: true,*/
			compiledTmpl: '(function(){dust.register("hpHtTmpl",body_0);function body_0(chk,ctx){return chk.helper("isSignedIn",ctx,{"else":body_1,"block":body_4},null);}function body_1(chk,ctx){return chk.helper("hasReachedFrequencyCap",ctx,{"else":body_2,"block":body_3},null);}function body_2(chk,ctx){return chk.reference(ctx.get("fantasy"),ctx,"h",["s"]);}function body_3(chk,ctx){return chk.reference(ctx.get("default"),ctx,"h",["s"]);}function body_4(chk,ctx){return chk.helper("hasFantasyTeam",ctx,{"else":body_5,"block":body_8},null);}function body_5(chk,ctx){return chk.helper("hasReachedFrequencyCap",ctx,{"else":body_6,"block":body_7},null);}function body_6(chk,ctx){return chk.reference(ctx.get("fantasy"),ctx,"h",["s"]);}function body_7(chk,ctx){return chk.reference(ctx.get("default"),ctx,"h",["s"]);}function body_8(chk,ctx){return chk.reference(ctx.get("default"),ctx,"h",["s"]);}return body_0;})();',
			partials: {
				'fantasy': {partial: Y.one('#tmpl-hot-topics-fantasy').getHTML(), alt: 'default'},
				'default': {partial: Y.one('#tmpl-hot-topics-default').getHTML()}
			},
			emptyFn: function(content){
				var contentNode = Y.Lang.isValue(content) && Y.Node.create(content),
						contentChildren = contentNode && contentNode.get('children'),
						empty = false;

				if(contentChildren && contentChildren.size() == 1){// this item must be <div id=""hot-topics"></div>
					contentChildren = contentChildren.item(0).get('children');
					if(!contentChildren || contentChildren.size() == 0){
						empty = true;
					}
				}else if(!contentChildren || contentChildren.size() == 0){// mobile does not have wrapper node
					empty = true;
				}
				return empty;
			},
			plugins: [{fn:Y.NFL.RankedWidgetFrequencyCapPlugin, cfg: {
				cookieName: 'hpHtFrequencyCap',
				frequencyCap: 3
			}}/* This plugin provide @hasReachedFrequencyCap helper */]
		});

	});
		
			
				

					nfl.use('ads-v2', 'ads-coad', function (Y) {
						Y.on('contentready', function(){
							var Ads = Y.NFL.Ads,
							Ad = new Ads.Ad({
								id: 'hp-desktop-hot-topic-ad250rightrailfirst',
								type: 'adi',
								path: 'http://ad.doubleclick.net/adi/nfl.home/landing;s1=landing;slot=rightrailfirst;url=landing;nfl=ad;!category=;kw=;tile={tile};test=;sz=300x250;{aamnfl};u={aam_did}{dcopt}',
								width: 300,
								height: 250,
								render: "#hp-desktop-hot-topic-ad250rightrailfirst"
							});

						Ad.plug(Ads.CoAd);
						}, '#hp-desktop-hot-topic-ad250rightrailfirst');
					});

				
			
				
			
		
</script>
<!-- END WIDGET home-2011/hottopic -->

						

					

						

						

						

						
							
						

						

						<!-- WIDGET type: MYNFL, id 73, name: mynfl
							config:
							 order : sign-in,fantasy,draft-pick,next-game,news,my-rewards,facebook-activity,facebook-recommend,shop
							 enabled : sign-in,fantasy,news,facebook-activity,shop
							
							urlparams: "?config_order=sign-in,fantasy,draft-pick,next-game,news,my-rewards,facebook-activity,facebook-recommend,shop&config_enabled=sign-in,fantasy,news,facebook-activity,shop&"
						-->

						
							
<!--BEGIN MY NFL WIDGET /widget/home-2011/mynfl -->
<div id="my-nfl" data-tracking-module="HP11_MYNFL">
	<div class='header'>
		<h3> MY NFL</h3>
	</div>
	
</div><script>
nfl.use('nfl-my-nfl',function(Y){
	var signInTemplate = [
			'<li class="my-nfl-module sign-in">',
				'<h3 class="heading" style="display:none">',
					'MEMBER SIGN IN ',
					 	'<a href="https://id2.s.nfl.com/fans/login?icampaign=Fantasy_Mynfl_register&returnTo='+encodeURIComponent(window.location.href)+'" data-tracking-id="sign%20in" data-tracking-pos="MYNFL_signinShield"><img src="http://i.nflcdn.com/static/site/5.20/img/home-2011/my-nfl/sign-in-shield.png" alt="NFL Sign-in"/></a>',
				'</h3>',								
				'<div class="content">',				
					'<h4>JOIN NFL.COM</h4>',
					'<ol>',
						'<li>Add comments to all features and articles</li>',
						'<li>Recommend articles to your friends</li>',
						'<li>Personalize your home page</li>',
					'</ol>',
					'<a href="https://id2.s.nfl.com/fans/register?returnTo='+encodeURIComponent(window.location.href)+'" class="register" data-tracking-id="register" data-tracking-pos="MYNFL_register">Register</a>',
				'</div>',
			'</li>'
		].join(''),	
		signedInTemplate = [
			'<li class="my-nfl-module signed-in">',
				'<div class="content">',				
					'<a href="#" class="user-image" data-tracking-id="User%20Image" data-tracking-pos="MYNFL_userImage"></a>',	
					'<div class="sign-in-text">',
					'<p>Welcome <span class="user-name"></span>.</p>',
					'<a href="https://id2.s.nfl.com/fans/logout?returnTo='+encodeURIComponent(window.location.href)+'" class="user-logout" data-tracking-id="logout" data-tracking-pos="MYNFL_userLogout">Logout</a> | <a href="#" class="user-profile" data-tracking-id="my%20profile" data-tracking-pos="MYNFL_myProfile">My Profile</a>',
					'<div style="clear:both"></div>',
					'</div>',
					'<div style="clear:both"></div>',
				'</div>',
			'</li>'					
   		].join(''),
		newsTemplate = [
			'<li class="my-nfl-module news accordion">',
				'<h3 class="accordion-heading" data-clickname="MYNFL_NewsTab"><a href="#"><span class="news-team"></span> News</a></h3>',
				'<div class="content news">',
					'<a href="#" class="more" data-tracking-id="more%20news" data-tracking-pos="MYNFL_moreNews">MORE <span class="news-team"></span> NEWS</a>',
				'</div>',
			'</li>'
   		].join(''),
   		nextGameTemplate  = [
			'<li class="my-nfl-module next-game accordion">',
				'<h3 class="accordion-heading"><a href="#" data-clickname="MYNFL_nextGameTab">Next Game</a></h3>',
				'<div class="content next-game">',
					'<a href="#" class="team-helmet-link" data-tracking-id="away%20team" data-tracking-pos="MYNFL_awayTeamHelmet"><img class="away-helmet"/></a><a href="#" class="team-helmet-link" data-tracking-id="home%20team" data-tracking-pos="MYNFL_homeTeamHelmet"><img class="home-helmet"/></a>',
					'<div style="clear:both"></div>',
					'<div class="scoreboard">',
						'<a href="#" class="team-lineup"  data-tracking-id="away%20at%20home" data-tracking-pos="MYNFL_awayAtHome" ><span class="away-team"></span> AT <span class="home-team"></span></a>',
						'<p class="game-time"></p>',
					'</div>',
					'<p class="game-location"></p>',
					'<a href="#" class="game-center" data-tracking-id="gamecenter" data-tracking-pos="MYNFL_gameCenterButton"></a>',
					'<p class="game-tv cf"><span class="game-watch-title">TV</span><span class="game-tv-channels"></span></p>',
					'<p class="game-online cf"><span class="game-watch-title">Online</span><a href="https://audiopass.nfl.com/nflap/secure/packages?module=HP11_MYNFL" data-tracking-id="Audio%20Pass" data-tracking-pos="MYNFL_audioPass">Listen Live</a> &nbsp;|&nbsp; <a href="http://subscriptions.nfl.com/nflsubs/?module=HP11_MYNFL"  data-tracking-id="Game%20Pass" data-tracking-pos="MYNFL_gamePass">Watch</a></p>',
				'</div>',
			'</li>'
	   	].join(''),
	   	 shopTemplate = [
			'<li class="my-nfl-module shop">',
			'<h3 class="shop-heading"><a href="http://www.nflshop.com/entry.point?target=z&source=NFL_MYNFL_ShopLogo" class="my-nfl-shop-logo" target="_blank" data-tracking-id="More%20Gear" data-tracking-pos="MYNFL_shopLogo"></a><a href="#" style="font-size:22px" target="_blank" class="my-nfl-shop-heading">Must Have <span class="shop-team"></span> Gear</a> </h3>',
			'<div class="content">',
				'<div class="shop-wrapper"></div>',
				'<div style="clear:both"></div>',
				'<a href="#" target="_blank" class="more team-shop-link" >MORE <span class="shop-team"></span> GEAR</a>',
			'</div>',
			'</li>'
	   	 ].join('')
		fantasySignInTemplate = [
			'<li class="my-nfl-module fantasy">',
				'<div class="content cf">',
				
					
					
						'<a href="http://playoffchallenge.fantasy.nfl.com/?icampaign=homepage_mynfl_playoff_join"><img src="http://s.nflcdn.com/static/content/public/static/img/fantasy/myNFL/playoffChallenge_myNFL_lg.png" /></a>',
					
				
				'</div>',
			'</li>'
		].join(''),	 
		fantasySignedInTemplate = [

			'<li class="my-nfl-module fantasy accordion">',
				'<h3 class="accordion-heading"><a href="#" data-clickname="MYNFL_fantasyTab">My teams and leagues</a></h3>',
				'<div class="content">',
					
					'<div class="col leagues" style="position:static; ">',
						'<dl class="fantasy-leagues"></dl>',
					'</div>',
					'<div class="col image-small" style="position:static; ">',
						
							
							
								'<a href="http://playoffchallenge.fantasy.nfl.com/?icampaign=homepage_mynfl_playoff_join" data-tracking-id="fantasy" data-tracking-pos="MYNFL_fantasy_logo"><img src="http://s.nflcdn.com/static/content/public/static/img/fantasy/myNFL/playoffChallenge_myNFL_sm.png" alt="Fantasy Football"/></a>',
							
													
					'</div>',
					'<div style="clear:both"></div>',
				'</div>',
			'</li>'
		].join(''),
		facebookFriendActivity = '<iframe src="http://www.facebook.com/plugins/activity.php?site=http%3A%2F%2Fwww.nfl.com&amp;width=274&amp;height=180&amp;header=false&amp;colorscheme=light&amp;font&amp;border_color=%23fff&amp;recommendations=false" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:274px; height:180px;" allowTransparency="true"></iframe>',
		facebookRecommendations = '<iframe src="http://www.facebook.com/plugins/recommendations.php?site=http%3A%2F%2Fwww.nfl.com&amp;width=274&amp;height=180&amp;header=false&amp;colorscheme=light&amp;font&amp;border_color=%23fff" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:274px; height:180px;" allowTransparency="true"></iframe>',
	
		facebookFriendActivitySignInTemplate = [
			'<li class="my-nfl-module facebook-friend-activity">',
				'<h3 class="heading" style="float:left">Friend Activity</h3>',
				'<div style="float:right;margin-top:10px;margin-right:15px"><iframe src="http://www.facebook.com/plugins/like.php?app_id=228608717152266&amp;href=http%3A%2F%2Fwww.nfl.com&amp;send=false&amp;layout=button_count&amp;width=100&amp;show_faces=false&amp;action=like&amp;colorscheme=light&amp;font&amp;height=21" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:82px; height:21px;" allowTransparency="true"></iframe></div>',
				'<div style="clear:both"></div>',
				'<div class="content">',
					'<div style="background:white;border:1px solid #aaa;border-top:1px solid #013369;width:278px"">'+facebookFriendActivity+'</div>',
				'</div>',
			'</li>'
		].join(''),
		facebookFriendActivitySignedInTemplate = [
			'<li class="my-nfl-module facebook-friend-activity accordion">',
				'<h3 class="accordion-heading"><a href="#" data-clickname="MYNFL_facebookActivityTab">Friends Activity</a></h3>',
				'<div class="content">',
					'<div style="background:white;border:1px solid #aaa;border-top:1px solid #013369;width:278px">'+facebookFriendActivity+'</div>',
					'<div style="text-align:right;margin-top:10px"><iframe src="http://www.facebook.com/plugins/like.php?app_id=228608717152266&amp;href=http%3A%2F%2Fwww.facebook.com%2fNFL&amp;send=false&amp;layout=button_count&amp;width=100&amp;show_faces=false&amp;action=like&amp;colorscheme=light&amp;font&amp;height=21" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:82px; height:21px;" allowTransparency="true"></iframe></div>',
				'</div>',
			'</li>'
		].join(''),
		facebookRecommendTemplate = [
	   		'<li class="my-nfl-module facebook-recommendations accordion">',
		   		'<h3 class="accordion-heading"><a href="#" data-clickname="MYNFL_facebookRecommendTab">Recommend</a></h3>',
		   		'<div class="content">',
		   			'<div style="background:white;border:1px solid #aaa;border-top:1px solid #013369;width:278px">'+facebookRecommendations+'</div>',
		   			'<div style="text-align:right;margin-top:10px"><iframe src="http://www.facebook.com/plugins/like.php?app_id=228608717152266&amp;href=http%3A%2F%2Fwww.facebook.com%2fNFL&amp;send=false&amp;layout=button_count&amp;width=100&amp;show_faces=false&amp;action=like&amp;colorscheme=light&amp;font&amp;height=21" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:90px; height:21px;" allowTransparency="true"></iframe></div>',
		   		'</div>',
	   		'</li>'
	   	].join(''),
		facebookRecommendSignInTemplate = [
	   		'<li class="my-nfl-module facebook-recommendations">',
	   			'<h3 class="heading" style="float:left">Recommend</h3>',
	   			'<div style="float:right;margin-top:10px;margin-right:15px"><iframe src="http://www.facebook.com/plugins/like.php?app_id=228608717152266&amp;href=http%3A%2F%2Fwww.facebook.com%2fNFL&amp;send=false&amp;layout=button_count&amp;width=100&amp;show_faces=false&amp;action=like&amp;colorscheme=light&amp;font&amp;height=21" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:82px; height:21px;" allowTransparency="true"></iframe></div>',
	   			'<div style="clear:both"></div>',
	   			'<div class="content">',
	   				'<div style="background:white;border:1px solid #aaa;border-top:1px solid #013369;width:278px"">'+facebookRecommendations+'</div>',
	   			'</div>',
	   		'</li>'
	   	].join(''),
		draftPickTemplate = [
	    	'<li class="my-nfl-module draft-pick accordion">',
	    	'<h3 class="accordion-heading"><a href="#" data-clickname="MYNFL_draftPickTab">{nickName} Draft Picks</a></h3>',
	        	'<div class="content">',
	         		'<div class="draft-pick-table-wrapper"></div>',
	         		'<a id="draft-pick-bottom-link" href="#" class="more" >View All Draft Picks</a>',
	         	'</div>',
	        '</li>'
	    ].join(''),
	    myRewards = [
	    	'<li class="my-nfl-module my-rewards accordion">',
	    	'<h3 class="accordion-heading"><a href="#" data-clickname="MYNFL_myRewards">NFL Fan Rewards</a></h3>',
				'<div class="content">',
					'<div id="my-rewards-status"></div>',
				'</div>',
	        '</li>'
	    ].join(''),
		noTeam = [
		    '<div class="no-team">',
				'<a href="/fans/edit-profile" data-tracking-id="Pick%20Your%20Team" data-tracking-pos="MYNFL_pickTeamImage" class="no-team-img"></a>',			
				'<p>Add Your Team\'s news and matchups right here.</p>',
				'<div style="clear:both"></div>',
				'<a href="/fans/edit-profile" data-tracking-id="Pick%20Your%20Team" data-tracking-pos="MYNFL_pickTeamHeadline" class="choose-team-button"></a>',
			'</div>'			
		].join(''),
		shopLinks = {
			'ARI' : 'http://www.nflshop.com/entry.point?entry=716599&source=NFL_MYNFL_Cardinals',
			'ATL' : 'http://www.nflshop.com/entry.point?entry=716634&source=NFL_MYNFL_Falcons',
			'BAL' : 'http://www.nflshop.com/entry.point?entry=716684&source=NFL_MYNFL_Ravens',
			'BUF' : 'http://www.nflshop.com/entry.point?entry=716579&source=NFL_MYNFL_Bills',
			'CAR' : 'http://www.nflshop.com/entry.point?entry=716664&source=NFL_MYNFL_Panthers',
			'CHI' : 'http://www.nflshop.com/entry.point?entry=716569&source=NFL_MYNFL_Bears',
			'CIN' : 'http://www.nflshop.com/entry.point?entry=716574&source=NFL_MYNFL_Bengals',
			'CLE' : 'http://www.nflshop.com/entry.point?entry=716589&source=NFL_MYNFL_Browns',
			'DAL' : 'http://www.nflshop.com/entry.point?entry=716619&source=NFL_MYNFL_Cowboys',
			'DEN' : 'http://www.nflshop.com/entry.point?entry=716584&source=NFL_MYNFL_Broncos',
			'DET' : 'http://www.nflshop.com/entry.point?entry=716654&source=NFL_MYNFL_Lions',
			'GB' : 'http://www.nflshop.com/entry.point?entry=716659&source=NFL_MYNFL_Packers',
			'HOU' : 'http://www.nflshop.com/entry.point?entry=716709&source=NFL_MYNFL_Texans',
			'IND' : 'http://www.nflshop.com/entry.point?entry=716614&source=NFL_MYNFL_Colts',
			'JAC' : 'http://www.nflshop.com/entry.point?entry=716644&source=NFL_MYNFL_Jaguars',
			'KC' : 'http://www.nflshop.com/entry.point?entry=716609&source=NFL_MYNFL_Chiefs',
			'MIA' : 'http://www.nflshop.com/entry.point?entry=716624&source=NFL_MYNFL_Dolphins',
			'MIN' : 'http://www.nflshop.com/entry.point?entry=716719&source=NFL_MYNFL_Vikings',
			'NE' : 'http://www.nflshop.com/entry.point?entry=716669&source=NFL_MYNFL_Patriots',
			'NO' : 'http://www.nflshop.com/entry.point?entry=716694&source=NFL_MYNFL_Saints',
			'NYG' : 'http://www.nflshop.com/entry.point?entry=716639&source=NFL_MYNFL_Giants',
			'NYJ' : 'http://www.nflshop.com/entry.point?entry=716649&source=NFL_MYNFL_Jets',
			'OAK' : 'http://www.nflshop.com/entry.point?entry=716674&source=NFL_MYNFL_Raiders',
			'PHI' : 'http://www.nflshop.com/entry.point?entry=716629&source=NFL_MYNFL_Eagles',
			'PIT' : 'http://www.nflshop.com/entry.point?entry=716704&source=NFL_MYNFL_Steelers',
			'SD' : 'http://www.nflshop.com/entry.point?entry=716604&source=NFL_MYNFL_Chargers',
			'SF' : 'http://www.nflshop.com/entry.point?entry=716564&source=NFL_MYNFL_49ers',
			'SEA' : 'http://www.nflshop.com/entry.point?entry=716699&source=NFL_MYNFL_Seahawks',
			'STL' : 'http://www.nflshop.com/entry.point?entry=716679&source=NFL_MYNFL_Rams',
			'TB' : 'http://www.nflshop.com/entry.point?entry=716594&source=NFL_MYNFL_Buccaneers',
			'TEN' : 'http://www.nflshop.com/entry.point?entry=716714&source=NFL_MYNFL_Titans',
			'WAS' : 'http://www.nflshop.com/entry.point?entry=716689&source=NFL_MYNFL_Redskins',
			'NFL' : 'http://www.nflshop.com/entry.point?target=z&source=NFL_MYNFL_Generic'
		},	
		moduleSelect = ['sign-in','fantasy','draft-pick','next-game','news','my-rewards','facebook-activity','facebook-recommend','shop'],
		moduleEnabled = ['sign-in','fantasy','news','facebook-activity','shop'],
		myNFLSettings = {
			srcNode : Y.one('#my-nfl'),
			signInTemplate : signInTemplate,
			signedInTemplate : signedInTemplate,
			newsTemplate : newsTemplate,
			teamsInfo :{
	"BUF" : { "abbr" : "BUF", "url" : "http://www.buffalobills.com/", "teamPage":"/teams/buffalobills/profile?team=BUF", "city" : "Buffalo", "nickname" : "Bills", "conference": "AFC", "division": "East"},
	"MIA" : { "abbr" : "MIA", "url" : "http://www.miamidolphins.com/", "teamPage":"/teams/miamidolphins/profile?team=MIA", "city" : "Miami", "nickname" : "Dolphins", "conference": "AFC", "division": "East"},
	"NE" : { "abbr" : "NE", "url" : "http://www.patriots.com/", "teamPage":"/teams/newenglandpatriots/profile?team=NE", "city" : "New England", "nickname" : "Patriots", "conference": "AFC", "division": "East"},
	"NYJ" : { "abbr" : "NYJ", "url" : "http://www.newyorkjets.com/", "teamPage":"/teams/newyorkjets/profile?team=NYJ", "city" : "New York", "nickname" : "Jets", "conference": "AFC", "division": "East"},
	"BAL" : { "abbr" : "BAL", "url" : "http://www.baltimoreravens.com/", "teamPage":"/teams/baltimoreravens/profile?team=BAL", "city" : "Baltimore", "nickname" : "Ravens", "conference": "AFC", "division": "North"},
	"CIN" : { "abbr" : "CIN", "url" : "http://www.bengals.com/", "teamPage":"/teams/cincinnatibengals/profile?team=CIN", "city" : "Cincinnati", "nickname" : "Bengals", "conference": "AFC", "division": "North"},
	"CLE" : { "abbr" : "CLE", "url" : "http://www.clevelandbrowns.com/", "teamPage":"/teams/clevelandbrowns/profile?team=CLE", "city" : "Cleveland", "nickname" : "Browns", "conference": "AFC", "division": "North"},
	"PIT" : { "abbr" : "PIT", "url" : "http://www.steelers.com/", "teamPage":"/teams/pittsburghsteelers/profile?team=PIT", "city" : "Pittsburgh", "nickname" : "Steelers", "conference": "AFC", "division": "North"},
	"HOU" : { "abbr" : "HOU", "url" : "http://www.houstontexans.com/", "teamPage":"/teams/houstontexans/profile?team=HOU", "city" : "Houston", "nickname" : "Texans", "conference": "AFC", "division": "South"},
	"IND" : { "abbr" : "IND", "url" : "http://www.colts.com/", "teamPage":"/teams/indianapoliscolts/profile?team=IND", "city" : "Indianapolis", "nickname" : "Colts", "conference": "AFC", "division": "South"},
	"JAC" : { "abbr" : "JAC", "url" : "http://www.jaguars.com/", "teamPage":"/teams/jacksonvillejaguars/profile?team=JAC", "city" : "Jacksonville", "nickname" : "Jaguars", "conference": "AFC", "division": "South"},
	"TEN" : { "abbr" : "TEN", "url" : "http://www.titansonline.com/", "teamPage":"/teams/tennesseetitans/profile?team=TEN", "city" : "Tennessee", "nickname" : "Titans", "conference": "AFC", "division": "South"},
	"DEN" : { "abbr" : "DEN", "url" : "http://www.denverbroncos.com/", "teamPage":"/teams/denverbroncos/profile?team=DEN", "city" : "Denver", "nickname" : "Broncos", "conference": "AFC", "division": "West"},
	"KC" : { "abbr" : "KC", "url" : "http://www.kcchiefs.com/", "teamPage":"/teams/kansascitychiefs/profile?team=KC", "city" : "Kansas City", "nickname" : "Chiefs", "conference": "AFC", "division": "West"},
	"OAK" : { "abbr" : "OAK", "url" : "http://www.raiders.com/", "teamPage":"/teams/oaklandraiders/profile?team=OAK", "city" : "Oakland", "nickname" : "Raiders", "conference": "AFC", "division": "West"},
	"SD" : { "abbr" : "SD", "url" : "http://www.chargers.com/", "teamPage":"/teams/sandiegochargers/profile?team=SD", "city" : "San Diego", "nickname" : "Chargers", "conference": "AFC", "division": "West"},
	"DAL" : { "abbr" : "DAL", "url" : "http://www.dallascowboys.com/", "teamPage":"/teams/dallascowboys/profile?team=DAL", "city" : "Dallas", "nickname" : "Cowboys", "conference": "NFC", "division": "East"},
	"NYG" : { "abbr" : "NYG", "url" : "http://www.giants.com/", "teamPage":"/teams/newyorkgiants/profile?team=NYG", "city" : "New York", "nickname" : "Giants", "conference": "NFL", "division": "East"},
	"PHI" : { "abbr" : "PHI", "url" : "http://www.philadelphiaeagles.com/", "teamPage":"/teams/philadelphiaeagles/profile?team=PHI", "city" : "Philadelphia", "nickname" : "Eagles", "conference": "NFC", "division": "East"},
	"WAS" : { "abbr" : "WAS", "url" : "http://www.redskins.com/", "teamPage":"/teams/washingtonredskins/profile?team=WAS", "city" : "Washington", "nickname" : "Redskins", "conference": "NFC", "division": "East"},
	"CHI" : { "abbr" : "CHI", "url" : "http://www.chicagobears.com/", "teamPage":"/teams/chicagobears/profile?team=CHI", "city" : "Chicago", "nickname" : "Bears", "conference": "NFC", "division": "North"},
	"DET" : { "abbr" : "DET", "url" : "http://www.detroitlions.com/", "teamPage":"/teams/detroitlions/profile?team=DET", "city" : "Detroit", "nickname" : "Lions", "conference": "NFC", "division": "North"},
	"GB" : { "abbr" : "GB", "url" : "http://www.packers.com/", "teamPage":"/teams/greenbaypackers/profile?team=GB", "city" : "Green Bay", "nickname" : "Packers", "conference": "NFC", "division": "North"},
	"MIN" : { "abbr" : "MIN", "url" : "http://www.vikings.com/", "teamPage":"/teams/minnesotavikings/profile?team=MIN", "city" : "Minnesota", "nickname" : "Vikings", "conference": "NFC", "division": "North"},
	"ATL" : { "abbr" : "ATL", "url" : "http://www.atlantafalcons.com/", "teamPage":"/teams/atlantafalcons/profile?team=ATL", "city" : "Atlanta", "nickname" : "Falcons", "conference": "NFC", "division": "South"},
	"CAR" : { "abbr" : "CAR", "url" : "http://www.panthers.com/", "teamPage":"/teams/carolinapanthers/profile?team=CAR", "city" : "Carolina", "nickname" : "Panthers", "conference": "NFC", "division": "South"},
	"NO" : { "abbr" : "NO", "url" : "http://www.neworleanssaints.com/", "teamPage":"/teams/neworleanssaints/profile?team=NO", "city" : "New Orleans", "nickname" : "Saints", "conference": "NFC", "division": "South"},
	"TB" : { "abbr" : "TB", "url" : "http://www.buccaneers.com/", "teamPage":"/teams/tampabaybuccaneers/profile?team=TB", "city" : "Tampa Bay", "nickname" : "Buccaneers", "conference": "NFC", "division": "South"},
	"ARI" : { "abbr" : "ARI", "url" : "http://www.azcardinals.com/", "teamPage":"/teams/arizonacardinals/profile?team=ARI", "city" : "Arizona", "nickname" : "Cardinals", "conference": "NFC", "division": "West"},
	"STL" : { "abbr" : "STL", "url" : "http://www.stlouisrams.com/", "teamPage":"/teams/st.louisrams/profile?team=STL", "city" : "St. Louis", "nickname" : "Rams", "conference": "NFC", "division": "West"},
	"SF" : { "abbr" : "SF", "url" : "http://www.sf49ers.com/", "teamPage":"/teams/sanfrancisco49ers/profile?team=SF", "city" : "San Francisco", "nickname" : "49ers", "conference": "NFC", "division": "West"},
	"SEA" : { "abbr" : "SEA", "url" : "http://www.seahawks.com/", "teamPage":"/teams/seattleseahawks/profile?team=SEA", "city" : "Seattle", "nickname" : "Seahawks", "conference": "NFC", "division": "West"}
}
,
			nextGameTemplate : nextGameTemplate,
			shopTemplate : shopTemplate,
			draftPickTemplate : draftPickTemplate,
			myRewards : myRewards,
			fantasySignInTemplate : fantasySignInTemplate,
			fantasySignedInTemplate : fantasySignedInTemplate,
			omnitureModule : '',
			foldDistance:500,
			facebookFriendActivitySignedInTemplate: facebookFriendActivitySignedInTemplate,
			facebookFriendActivitySignInTemplate: facebookFriendActivitySignInTemplate,
			facebookRecommendTemplate: facebookRecommendTemplate,
			facebookRecommendSignInTemplate: facebookRecommendSignInTemplate,
			moduleSelect: moduleSelect,
			moduleEnabled:moduleEnabled,
			noTeam:noTeam,
			shopLinks:shopLinks
		};
	Y.on('domready',function(){

		var myNFL = new Y.NFL.MyNFL(myNFLSettings),
	    	_myn    = Y.one('#my-nfl');
		if(_myn.get('region').top < _myn.get('viewportRegion').bottom){
		    myNFL.render();
		}
		
	});
});
</script>
<!--END MY NFL WIDGET /widget/home-2011/mynfl -->

						

					

						

						

						

						

						

						<!-- WIDGET type: WRITEREXPERTS, id 77, name: writerexperts
							config:
							
							urlparams: ""
						-->

						
							<!-- start module -->

	
	
		





<!-- BEGIN EXPERTS MODULE widgets/home-2011/views/writer-experts --><div id="experts-module" data-tracking-module="HP11_writer_experts"><div class="latest-columnist" style="background : url(http://i.nflcdn.com/static/site/5.20/img/news/2011/authors/310x128/michael-silver-310x128.jpg)">
					<h3><a href="/news/author?id=0ap1000000232099" data-tracking-pos="WriterExperts_author_icon">Michael Silver </a><span>NFL Media columnist</span></h3>
					<p>Latest Column</p><a href="/superbowl/story/0ap2000000320002/article/legion-of-booms-tight-bond-fuels-seahawks-dominant-defense" data-tracking-id="Legion of Boom&#039;s tight bond fuels Seahawks&#039; dominant defense" data-tracking-pos="WriterExperts_headline_1" class="latest-article">Legion of Boom's tight bond fuels Seahawks' dominant defense</a></div> 
				<div class="expert-list">
					<div class="expert-list-header">
						<h3>NFL.COM EXPERTS</h3>
						<a href="#" data-clickname="HP_11_writer_experts_more" class="expert-list-toggle"></a>
						<div style="clear:both"></div>
					</div>
					<div class="expert-list-content">
					<ul class='cf'><li><a href="/news/author?id=0ap1000000233164" data-tracking-id="Judy Battista" data-tracking-pos="author_icon_2"><div class="author-image JudyBattista"></div> <span>Judy<br />Battista</span></a><div class="clear:both"></div></li><li><a href="/news/author?id=09000d5d80026e07" data-tracking-id="Gil Brandt" data-tracking-pos="author_icon_3"><div class="author-image GilBrandt"></div> <span>Gil<br />Brandt</span></a><div class="clear:both"></div></li><li><a href="/news/author?id=09000d5d827ba779" data-tracking-id="Gregg Rosenthal" data-tracking-pos="author_icon_4"><div class="author-image GreggRosenthal"></div> <span>Gregg<br />Rosenthal</span></a><div class="clear:both"></div></li><li><a href="/news/author?id=09000d5d8220cff3" data-tracking-id="Brian Billick" data-tracking-pos="author_icon_5"><div class="author-image BrianBillick"></div> <span>Brian<br />Billick</span></a><div class="clear:both"></div></li><li><a href="/news/author?id=09000d5d82036444" data-tracking-id="Elliot Harrison" data-tracking-pos="author_icon_6"><div class="author-image ElliotHarrison"></div> <span>Elliot<br />Harrison</span></a><div class="clear:both"></div></li><li><a href="/news/author?id=09000d5d80f97bfd" data-tracking-id="Bucky Brooks" data-tracking-pos="author_icon_7"><div class="author-image BuckyBrooks"></div> <span>Bucky<br />Brooks</span></a><div class="clear:both"></div></li><li><a href="/news/author?id=09000d5d82906849" data-tracking-id="Daniel Jeremiah" data-tracking-pos="author_icon_8"><div class="author-image DanielJeremiah"></div> <span>Daniel<br />Jeremiah</span></a><div class="clear:both"></div></li><li><a href="/news/author?id=09000d5d82af3236" data-tracking-id="Adam Schein" data-tracking-pos="author_icon_9"><div class="author-image AdamSchein"></div> <span>Adam<br />Schein</span></a><div class="clear:both"></div></li><li><a href="/news/author?id=09000d5d8280f9d4" data-tracking-id="Ian Rapoport" data-tracking-pos="author_icon_10"><div class="author-image IanRapoport"></div> <span>Ian<br />Rapoport</span></a><div class="clear:both"></div></li><li><a href="/news/author?id=09000d5d8280fab0" data-tracking-id="Kimberly Jones" data-tracking-pos="author_icon_11"><div class="author-image KimberlyJones"></div> <span>Kimberly<br />Jones</span></a><div class="clear:both"></div></li><li><a href="/news/author?id=09000d5d82295a9d" data-tracking-id="Jeff Darlington" data-tracking-pos="author_icon_12"><div class="author-image JeffDarlington"></div> <span>Jeff<br />Darlington</span></a><div class="clear:both"></div></li><li><a href="/news/author?id=09000d5d81b52bfe" data-tracking-id="Albert Breer" data-tracking-pos="author_icon_13"><div class="author-image AlbertBreer"></div> <span>Albert<br />Breer</span></a><div class="clear:both"></div></li><li><a href="/news/author?id=09000d5d800219d7" data-tracking-id="Michael Fabiano" data-tracking-pos="author_icon_14"><div class="author-image MichaelFabiano"></div> <span>Michael<br />Fabiano</span></a><div class="clear:both"></div></li><li><a href="/news/author?id=09000d5d828f2127" data-tracking-id="Aditi Kinkhabwala" data-tracking-pos="author_icon_15"><div class="author-image AditiKinkhabwala"></div> <span>Aditi<br />Kinkhabwala</span></a><div class="clear:both"></div></li><li><a href="/news/author?id=09000d5d823c1aa0" data-tracking-id="Dan Hanzus" data-tracking-pos="author_icon_16"><div class="author-image DanHanzus"></div> <span>Dan<br />Hanzus</span></a><div class="clear:both"></div></li><li><a href="/news/author?id=09000d5d82035eb2" data-tracking-id="Adam Rank" data-tracking-pos="author_icon_17"><div class="author-image AdamRank"></div> <span>Adam<br />Rank</span></a><div class="clear:both"></div></li><li><a href="/news/author?id=09000d5d80a8a933" data-tracking-id="Steve Wyche" data-tracking-pos="author_icon_18"><div class="author-image SteveWyche"></div> <span>Steve<br />Wyche</span></a><div class="clear:both"></div></li><li><a href="/news/author?id=09000d5d82aec709" data-tracking-id="Mark Kriegel" data-tracking-pos="author_icon_19"><div class="author-image MarkKriegel"></div> <span>Mark<br />Kriegel</span></a><div class="clear:both"></div></li><li><a href="/news/author?id=09000d5d823c1a70" data-tracking-id="Marc Sessler" data-tracking-pos="author_icon_20"><div class="author-image MarcSessler"></div> <span>Marc<br />Sessler</span></a><div class="clear:both"></div></li><li><a href="/news/author?id=09000d5d82272e6b" data-tracking-id="Jason Smith" data-tracking-pos="author_icon_21"><div class="author-image JasonSmith"></div> <span>Jason<br />Smith</span></a><div class="clear:both"></div></li><li><a href="/news/author?id=0ap1000000153365" data-tracking-id="Rich Eisen" data-tracking-pos="author_icon_22"><div class="author-image RichEisen"></div> <span>Rich<br />Eisen</span></a><div class="clear:both"></div></li><li><a href="/news/author?id=09000d5d81a94f23" data-tracking-id="Dave Dameshek" data-tracking-pos="author_icon_23"><div class="author-image DaveDameshek"></div> <span>Dave<br />Dameshek</span></a><div class="clear:both"></div></li></ul>
			<a href="/news" data-tracking-id="More News" data-tracking-pos="WriterExperts_more" class='more-news'>More News</a>
			<div style="clear:both"></div>
		</div>
	</div>
	<script type="text/javascript">
		nfl.use('node', 'event', function (Y) {
			Y.on('domready', function () {
				var expertAuthorHeight = Y.one('.expert-list-content').getStyle('height');
				Y.one('.expert-list-content').setStyles({'height': 0, 'padding': '0 20px'});

				Y.one('.expert-list-toggle').on('click', function (e) {
					if (e.currentTarget.hasClass('selected')) {
						Y.one('.expert-list-content').setStyles({'height': 0, 'paddingTop': '0px', 'paddingBottom': '0px'});
						e.currentTarget.removeClass('selected');
					} else {
						Y.one('.expert-list-content').setStyles({'height': expertAuthorHeight, 'paddingTop': '10px', 'paddingBottom': '5px', 'position': 'relative', 'visibility': 'visible'});
						e.currentTarget.addClass('selected');
					}
					e.preventDefault();
				});
			});
		});	
	</script>
</div>
<!-- END EXPERTS MODULE widgets/home-2011/views/writer-experts -->
	
			
<!-- end module -->
						

					

						

						

						

						

						

						<!-- WIDGET type: PHOTOGALLERY, id 74, name: photogallery
							config:
							
							urlparams: ""
						-->

						
							<!-- start module -->
<!-- BEGIN WIDGET widgets/home-2011/views/photo-gallery -->


	
		<div id="photo-galleries" data-tracking-module="HP11_photo_gallery">
		


	
		
		
		
		
		
		
		
			
			
				<div id="photo-gallery-0" class="photo-gallery module top-right" data-type='photo-gallery' data-tracking-id="The precious">
			
		
		

			
			<div class="image">
				<a href="/photos/09000d5d82618287?module=HP11_photo_gallery" name="&amp;lid=The precious&amp;lpos=photo_gallery_image" target="_self"><img id="HP11_photo_gallery-1-img" alt=""  /></a>
			</div>
			<div class="contents">
				<p class="label"><a href="/photos?module=HP11_photo_gallery" name="&amp;lid=The precious&amp;lpos=photo_gallery_Label"/></a>
					<a data-tracking-module="HP11_photo_gallery" href="/photos" data-tracking-pos="category_link" data-tracking-id="Photo Gallery">Photo Gallery</a>

				</p>
				<h1 class="heading"><a href="/photos/09000d5d82618287?module=HP11_photo_gallery" name="&amp;lid=The precious&amp;lpos=photo_gallery_headline" target="_self">The precious</a></h1>
				<div class="caption">
					Every Seahawks and Broncos player wants to earn themselves one of these this Sunday. Take a look at the 47 previous Super Bowl rings. <a href="/photos/09000d5d82618287?module=HP11_photo_gallery" name="&amp;lid=The precious&amp;lpos=photo_gallery_more" class="more">View</a>
				</div>
			</div>
			
			
			
			
				</div>
			
		
	


	</div>
	

<script>
nfl.use('imageloader',function(Y){
	var photoGalleryImageGroup = new Y.ImgLoadGroup({name:'photo gallery group', foldDistance: 100});
	
	
	photoGalleryImageGroup.registerImage({domId:'HP11_photo_gallery-1-img',srcUrl:'http://static.nfl.com/static/content/public/photo/2014/01/30/0ap2000000320125.jpg'});
	
});
</script>
	
<!-- END WIDGET widgets/home-2011/views/photo-gallery-->
<!-- end module -->
						

					

						

						

						

						
							
						

						

						<!-- WIDGET type: POLL, id 63, name: poll
							config:
							 dropzones : 
							
							urlparams: "?config_dropzones=&"
						-->

						
							
<script>
window.nfl.homePagePoll = true;
</script>

<div id="poll-section" class="module">
	
<!-- BEGIN TAG polls-yui -->
<div id="poll-wrapper">
	<div id="poll-gradient">
		<div id="polls-CUKUNIQY" class="poll"></div>
	</div>
</div>
<script>
nfl.use('polls', function (Y) {

 
 	
 	
 		var adPath = "http://ad.doubleclick.net/adi/nfl.home/landing;s1=landing;slot=poll;url=landing;nfl=ad;!category=;kw=;tile={tile};test=;sz=300x250;{aamnfl};u={aam_did}{dcopt}";
 	
 	
 

	Y.namespace("local").polls_yui = new Y.NFL.Polls({
		srcNode: "#polls-CUKUNIQY",
		serverPath: '/polls',
		location: 'Homepage',
		pollUoF: '',
		pollSO: '',
		pollCid: '',
		id: 'polls-CUKUNIQY',
		adPath: adPath,
		render: true,
 		
 			pollId: "0_0_1391098579625",
 			slot: "home/landing",
 			
 				adServedBg: true,
 			
 		
		
		skinSize: 'large' // this isn't being used now but the idea is to utilize this attribute when migrating the large poll to use this tag as well.
	});
});
</script>
<!-- END TAG polls-yui -->

</div>
						

					
				</div>
			<!-- end column 2 -->
		
	</div>
	<script type="text/javascript">
// track page scrolling
nfl.use("event", "nfl-omniture", "node", "facebook-comment-counts", function (Y) {
	Y.once("scroll", function () {
		var omniture = new Y.NFL.OmnitureTracking();
		omniture.linkTrackVars({
			prop35: "HP11_page_scroll"
		});
	}, window);

	Y.getFBCommentCounts("#homepage div.comments>.comment-count");
});
	</script>
	<div style="width:1px;height:1px;overflow:hidden">
		
<script type="text/javascript">
(function() {
	var src = "http://fls.doubleclick.net/activityi;src=1268402;type=nflfa363;cat=homep672;ord=" + Math.round(Math.random() * 10000000000000) + "?",
		ifrm = document.createElement("IFRAME");
		
	ifrm.setAttribute("src", src);
	ifrm.style.width = ifrm.style.height = "1px";
	document.body.appendChild(ifrm);
})();

if (nfl.constants.IS_MOBILE) {
    nfl.omniture.page  = "nfl:home:landing"; 
    nfl.omniture.hier  = "nfl:home|landing"; 
}
</script>
	</div>
					</div>
					<div class="w"></div>
					<div class="t"></div>
				</div>
			</div>
		</div>
		
		

		
    	<div id="footer-2012">
          <div class="footer-content">
            
<div class="footer-links-container">
  
  <a href="http://www.nfl.com" class="logo"></a>

  <div class="footer-links">
    <div class="column">
      <div class="top-label">Information</div>
      <ul>
        <li><a href="http://www.nfl.com/contact-us" class="">Contact Us</a></li>
        <li><a href="http://www.nfl.com/help/faq" class="">FAQ</a> | <a href="http://www.nfl.com/rulebook" class="">Rule Book</a></li>
        <li><a href="http://nflcommunications.com/" class="">Public Relations</a></li>
        <li>Jobs: <a href="http://www.nfl.apply2jobs.com/" class="">League</a> | <a href="http://footballjobs.teamworkonline.com/teamwork/jobs/default.cfm" class="">Team</a></li>
        <li><a href="http://www.nfl.com/help/privacy" class="">Privacy Policy</a></li>
        <li><a href="http://www.nfl.com/help/terms" class="">Terms &amp; Conditions</a></li>
      </ul>    
    </div>

    <div class="column">
      <div class="top-label">Initiatives</div>
      <ul>
        <li><a href="http://nflrush.com/?campaign=NFL_footer" class="" target="_blank">NFL Rush</a></li>
        <li><a href="http://www.nflrush.com/play60" class="" target="_blank">Play 60</a></li>
        <li><a href="http://www.nfl.com/community" class="">In the Community</a></li>
        <li><a href="http://www.nfl.com/auction" class="">NFL Auction</a></li>
        
      </ul>
    </div>
    
    <div class="column">
      <div class="top-label">Media Info</div>
      <ul>
        <li><a href="http://nflcommunications.com/" class="" target="_blank">NFL Communications</a></li>
        <li><a href="http://static.nfl.com/static/content/public/static/img/common/2013_NFL_Media_Kit.pdf" class="">Media Kit</a></li>
        <li><a href="http://www.nfl.com/media-guides" class="">Media Guides</a></li>
      </ul>      
    </div>
    
    <div class="column">
      <div class="top-label">Player Services</div>
      <ul>
        <li><a href="http://www.nflevolution.com" class="" target="_blank">NFL Health &amp; Safety</a></li>
        <li><a href="https://www.nflplayercare.com/" class="" target="_blank">NFL Player Care</a></li>
        <li><a href="http://www.nflplayerengagement.com/" class="" target="_blank">Player Engagement</a></li>
      </ul>      
    </div>
    
    <div class="column">
      <div class="top-label">More NFL Sites</div>
      <ul>
        <li><a href="http://www.nflyouthpd.com/" class="" target="_blank">NFL Youth Tackle</a></li>
        <li><a href="http://www.usafootball.com/" class="" target="_blank">USA Football</a></li>
        <li><a href="http://www.nfl.com/international" class="">NFL International</a></li>
        <li><a href="http://nflonlocation.com/?utm_source=nflcom&utm_medium=link&utm_campaign=FooterLink" class="">NFL On Location</a></li>
        <li><a href="http://www.barclaycardus.com/apply/Landing.action?campaignId=1570&cellNumber=502&referrerid=NFLB070911" class="" target="_blank">NFL Extra Points</a></li>
      </ul>
    </div>
    <div class="column">
      <div class="top-label">&nbsp;</div>    
      <ul>
        <li><a href="http://profootballhof.com/" class="" target="_blank">Pro Football Hall of Fame</a></li>
        <li><a href="http://www.ticketexchangebyticketmaster.com/NFL/default.aspx?intcmp=tm100454&wt.mc_id=NFL_LEAGUE_TE_FOOTER&extcmp=Footer_TX_EX" class="">NFL Ticket Exchange</a></li>
        <li><a href="http://www.nflshop.com/source/bm-nflcom-BottomBanner-shopgeneric" class="" target="_blank">NFL Shop</a></li>
        <li><a href="http://www.nfl.biz/" class="" target="_blank">Licensing</a></li>        
      </ul>
    </div>    
  </div>
  
</div>
            
<p class="copyright">
&copy; 2013 NFL Enterprises LLC. NFL and the NFL shield design are registered trademarks of the National Football League.The team names, logos and uniform designs are registered trademarks of the teams indicated. All other NFL-related trademarks are trademarks of the National Football League. NFL footage &copy; NFL Productions LLC.
</p>
            
<div class="teams">
  <a href="http://www.buffalobills.com/" class="BUF" target="_blank"></a>
  <a href="http://www.miamidolphins.com/" class="MIA" target="_blank"></a>
  <a href="http://www.patriots.com/" class="NE" target="_blank"></a>
  <a href="http://www.newyorkjets.com/" class="NYJ" target="_blank"></a>
  <a href="http://www.baltimoreravens.com/" class="BAL" target="_blank"></a>
  <a href="http://www.bengals.com/" class="CIN" target="_blank"></a>
  <a href="http://www.clevelandbrowns.com/" class="CLE" target="_blank"></a>
  <a href="http://www.steelers.com/" class="PIT" target="_blank"></a>
  <a href="http://www.houstontexans.com/" class="HOU" target="_blank"></a>
  <a href="http://www.colts.com/" class="IND" target="_blank"></a>
  <a href="http://www.jaguars.com/" class="JAC" target="_blank"></a>
  <a href="http://www.titansonline.com/" class="TEN" target="_blank"></a>
  <a href="http://www.denverbroncos.com/" class="DEN" target="_blank"></a>
  <a href="http://www.kcchiefs.com/" class="KC" target="_blank"></a>
  <a href="http://www.raiders.com/" class="OAK" target="_blank"></a>
  <a href="http://www.chargers.com/" class="SD" target="_blank"></a>
  <a href="http://www.dallascowboys.com/" class="DAL" target="_blank"></a>
  <a href="http://www.giants.com/" class="NYG" target="_blank"></a>
  <a href="http://www.philadelphiaeagles.com/" class="PHI" target="_blank"></a>
  <a href="http://www.redskins.com/" class="WAS" target="_blank"></a>
  <a href="http://www.chicagobears.com/" class="CHI" target="_blank"></a>
  <a href="http://www.detroitlions.com/" class="DET" target="_blank"></a>
  <a href="http://www.packers.com/" class="GB" target="_blank"></a>
  <a href="http://www.vikings.com/" class="MIN" target="_blank"></a>
  <a href="http://www.atlantafalcons.com/" class="ATL" target="_blank"></a>
  <a href="http://www.panthers.com/" class="CAR" target="_blank"></a>
  <a href="http://www.neworleanssaints.com/" class="NO" target="_blank"></a>
  <a href="http://www.buccaneers.com/" class="TB" target="_blank"></a>
  <a href="http://www.azcardinals.com/" class="ARI" target="_blank"></a>
  <a href="http://www.stlouisrams.com/" class="STL" target="_blank"></a>
  <a href="http://www.sf49ers.com/" class="SF" target="_blank"></a>
  <a href="http://www.seahawks.com/" class="SEA" target="_blank"></a>
</div>
          </div>
          <div class="w"></div>
        </div>
		<div id="br">
			<div id="ft-teams">
				<div id="footer-logo">
					<a href="http://www.nfl.com/"><img alt="NFL Logo" src="http://i.nflcdn.com/static/site/5.20/img/global/alt/large-logo.png" width="78" height="108" />&nbsp;</a>
				</div>
				
<div id="ft-teams-afc-mark-container">
	<div id="ft-teams-afc-mark"></div>
	<div class="ft-teams-parenthesis"></div>
</div>
<ul class="ft-teams-list">
	<li><a href="http://www.buffalobills.com/" target="_blank">Bills</a></li>
	<li><a href="http://www.miamidolphins.com/" target="_blank">Dolphins</a></li>
	<li><a href="http://www.patriots.com/" target="_blank">Patriots</a></li>
	<li><a href="http://www.newyorkjets.com/" target="_blank">Jets</a></li>
</ul>
<ul class="ft-teams-list">
	<li><a href="http://www.baltimoreravens.com/" target="_blank">Ravens</a></li>
	<li><a href="http://www.bengals.com/" target="_blank">Bengals</a></li>
	<li><a href="http://www.clevelandbrowns.com/" target="_blank">Browns</a></li>
	<li><a href="http://www.steelers.com/" target="_blank">Steelers</a></li>
</ul>
<ul class="ft-teams-list">
	<li><a href="http://www.houstontexans.com/" target="_blank">Texans</a></li>
	<li><a href="http://www.colts.com/" target="_blank">Colts</a></li>
	<li><a href="http://www.jaguars.com/" target="_blank">Jaguars</a></li>
	<li><a href="http://www.titansonline.com/" target="_blank">Titans</a></li>
</ul>
<ul class="ft-teams-list">
	<li><a href="http://www.denverbroncos.com/" target="_blank">Broncos</a></li>
	<li><a href="http://www.kcchiefs.com/" target="_blank">Chiefs</a></li>
	<li><a href="http://www.raiders.com/" target="_blank">Raiders</a></li>
	<li><a href="http://www.chargers.com/" target="_blank">Chargers</a></li>
</ul>
<div id="ft-teams-nfc-mark-container">
	<div id="ft-teams-nfc-mark"></div>
	<div class="ft-teams-parenthesis"></div>
</div>
<ul class="ft-teams-list">
	<li><a href="http://www.dallascowboys.com/" target="_blank">Cowboys</a></li>
	<li><a href="http://www.giants.com/" target="_blank">Giants</a></li>
	<li><a href="http://www.philadelphiaeagles.com/" target="_blank">Eagles</a></li>
	<li><a href="http://www.redskins.com/" target="_blank">Redskins</a></li>
</ul>
<ul class="ft-teams-list">
	<li><a href="http://www.chicagobears.com/" target="_blank">Bears</a></li>
	<li><a href="http://www.detroitlions.com/" target="_blank">Lions</a></li>
	<li><a href="http://www.packers.com/" target="_blank">Packers</a></li>
	<li><a href="http://www.vikings.com/" target="_blank">Vikings</a></li>
</ul>
<ul class="ft-teams-list">
	<li><a href="http://www.atlantafalcons.com/" target="_blank">Falcons</a></li>
	<li><a href="http://www.panthers.com/" target="_blank">Panthers</a></li>
	<li><a href="http://www.neworleanssaints.com/" target="_blank">Saints</a></li>
	<li><a href="http://www.buccaneers.com/" target="_blank">Buccaneers</a></li>
</ul>
<ul class="ft-teams-list">
	<li><a href="http://www.azcardinals.com/" target="_blank">Cardinals</a></li>
	<li><a href="http://www.stlouisrams.com/" target="_blank">Rams</a></li>
	<li><a href="http://www.sf49ers.com/" target="_blank">49ers</a></li>
	<li><a href="http://www.seahawks.com/" target="_blank">Seahawks</a></li>
</ul>
				
<p class="copyright">
			&copy; 2014 NFL Enterprises LLC. NFL and the NFL shield design are registered trademarks of the
			National Football League.The team names, logos and uniform designs are registered trademarks of
			the teams indicated. All other NFL-related trademarks are trademarks of the National Football
			League. NFL	footage &copy; NFL Productions LLC. <a href="http://www.nfl.com/help/privacy" style="color:#b6061e;">PRIVACY POLICY</a> | <a href="http://www.nfl.com/help/terms" style="color:#b6061e;">Terms & Conditions</a>
	</p>
	<div id="slice" class="hslice" style=" display:none; ">
		<div class="entry-title">NFL News</div>
		<div class="entry-content">CONTENT</div>
		<a rel="entry-content" href="http://www.nfl.com/ie/web-slice" style=" display:none; "></a>
		<a rel="bookmark" target="_blank" href="http://www.nfl.com" style=" display:none; "></a>
		<span class="ttl" style=" display:none; ">15</span>
	</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">/*<![CDATA[*/
	nfl.use('nfl-omniture', function (Y) {
		Y.local.omnitureTracker = new Y.NFL.OmnitureTracking({ autoTrack: true });
	});
	/*]]>*/
	</script>
	<!-- END DECORATOR yui/home/home -->
	<script>nfl.loadFacebook();</script>
	<script>
		nfl.use('get', function(Y){
			Y.Get.js("http://s.nflcdn.com/static/site/5.20/scripts/foresee/foresee-alive.js", function (err) {
    		if (err) {
       		Y.log('Error loading JS: ' + err[0].error, 'error');
	        return;
  	  	}

    		Y.Get.js("http://s.nflcdn.com/static/site/5.20/scripts/foresee/foresee-trigger.js");
			});

		})
	</script>
	<!--
	<script type="text/javascript" src="http://s.nflcdn.com/static/site/5.20/scripts/foresee/foresee-alive.js"></script>
	<script type="text/javascript" src="http://s.nflcdn.com/static/site/5.20/scripts/foresee/foresee-trigger.js"></script>
-->
</body>
</html>
