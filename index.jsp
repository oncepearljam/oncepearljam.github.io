<!DOCTYPE html>
<html class="uk-height-1-1 home">

<head>
  <title>Once (a Pearl Jam tribute)</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <meta name="verify-v1" content="YusPcnp3MAXH67INwTt85MbrweNN8Zf2I3g+5DhtQBg=">
  <meta name="keywords"
  	content="Once (a Pearl Jam tribute), tribute band, tributeband, Pearl Jam, Once, Once in a blue moon (Adam meets the appletree), DaniÃ«l van Mil, Rocco Jansen, Patrick Hutten, Sander van Mierlo, Jos Janssen, Alive">
  <meta name="verify-v1" content="YusPcnp3MAXH67INwTt85MbrweNN8Zf2I3g+5DhtQBg=">
  <meta name="keywords"
  	content="Once (a Pearl Jam tribute), tribute band, tributeband, Pearl Jam, Once, Once in a blue moon (Adam meets the appletree), DaniÃ«l van Mil, Rocco Jansen, Patrick Hutten, Sander van Mierlo, Jos Janssen, Alive">
  <meta name="description"
  	content="Once (a Pearl Jam tribute) is een project van Once in a blue moon (Adam meets the appletree). Na 8 jaar optreden en werken aan eigen nummers, soms aangevuld met covers van o.a. Pearl Jam,
  was het tijd voor een kleine pauze om weer nieuwe inspiratie op te doen. Stil zitten was geen optie, dus werd er gekozen voor een nieuw project : Once (a Pearl Jam tribute) Once speelt nummers van de band Pearl Jam. Pearl Jam is bekend van nummers zoals : Alive, Jeremy, Given to fly en Rearviewmirror;
  de speciale projecten zoals soundtracks van de films 'Singles', 'Last man standing' en het opnemen van benefietsingles zoals 'Last Kiss' en 'Crazy Mary'. Once speelt nummers van bijna elke CD van Pearl Jam  (Ten, VS, Vitalogy, No code, Yield, Binaural en Riot Act) en
  wisselt deze af in een energiek en boeiend optreden, zoals iedereen gewend was van Once in a blue moon (Adam meets the appletree).">

  <link rel="stylesheet" href="uikit.css" />
  <link rel="stylesheet" href="css/components/sticky.min.css" />
  <link rel="stylesheet" href="css/components/slideshow.min.css" />

  <link rel="stylesheet" href="custom.css" />

  <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
  <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

  <!--
        <script src="js/jquery.js"></script>
		-->
  <script src="js/uikit.min.js"></script>
  <script src="js/components/sticky.min.js"></script>
  <script src="js/components/slideshow.min.js"></script>
  <script src="js/components/parallax.min.js"></script>

  <jsp:include page="favicons.jsp" />

</head>

<body class="uk-height-1-1">

  <!-- Navbar -->
  <jsp:include page="fb/fb-header.jsp" />

  <div class="uk-flex uk-height-1-1" data-uk-scrollspy="{ target:'.section', repeat:true }">

    <div class="uk-flex-item-1" id="left-margin"></div>

    <!-- block vertical aligned middle -->
    <div class="block-alpha uk-height-1-1" id="content-block">

      <div class="uk-flex uk-flex-center uk-flex-middle header" accesskey>
        <ul class="uk-navbar-nav">
          <li><a href="#home" data-uk-smooth-scroll autofocus>Home</a></li>
          <li><a href="#agenda" data-uk-smooth-scroll>Agenda</a></li>
          <li><a href="#media" data-uk-smooth-scroll>Media</a></li>
          <li><a href="#bio" data-uk-smooth-scroll>Bio</a></li>
          <li><a href="#contact" data-uk-smooth-scroll>Contact</a></li>
        </ul>
      </div>

      <div class="uk-flex uk-flex-center uk-flex-middle footer" accesskey>
        <ul class="uk-navbar-nav">
          <li>
            <jsp:include page="fb/fb-like.jsp" />
            <jsp:include page="fb/fb-follow.jsp" />
          </li>
        </ul>
      </div>

      <jsp:include page="home.jsp" />
      <jsp:include page="agenda.jsp" />
      <jsp:include page="media.jsp" />
      <jsp:include page="bio.jsp" />
      <jsp:include page="contact.jsp" />

    </div>
    <!-- block -->

    <div class="uk-flex-item-1" id="right-margin"></div>

  </div>

  <script>
    var current = '';
    $('[data-uk-scrollspy]').on('inview.uk.scrollspy', function(e) {
      //console.log('change bg', e.target.id);

      // Set bg class
      $('html').removeClass(current);
      current = e.target.id;
      $('html').addClass(e.target.id);
      //location.hash = current;

      // Set navigation
      $('a[class="uk-active"]').removeClass('uk-active');
      $('a[href="#' + e.target.id + '"]').addClass('uk-active');
    });

    /*
     ** GA
     */
		var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl."
				: "http://www.");
		document
				.write(unescape("%3Cscript src='"
						+ gaJsHost
						+ "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));

		try {
			var pageTracker = _gat._getTracker("UA-1824040-1");
			pageTracker._setVar('var1');
			pageTracker._trackPageview();
		} catch (err) {
		}
  </script>
</body>

</html>
