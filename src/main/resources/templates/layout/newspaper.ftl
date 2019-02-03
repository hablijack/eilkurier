<@compress single_line=true><@layout.doctype />
<html lang="de">
	<head>
		<link href="${absoluteUrl}/css/newspaper.css" rel="stylesheet">
		<link href="${absoluteUrl}/css/newspaper_xlarge.css" rel="stylesheet">
		<link href="${absoluteUrl}/css/newspaper_large.css" rel="stylesheet">
		<link href="${absoluteUrl}/css/newspaper_middle.css" rel="stylesheet">
		<link href="${absoluteUrl}/css/newspaper_small.css" rel="stylesheet">
		<title>Eilkurier ${currentDate?string["dd.MM.yyyy"]} Ausgabe 1</title>
		<meta name="viewport" content="width=device-width">
	</head>
	<body>
		${template}
		<script src="${absoluteUrl}/bower_components/jquery/jquery.min.js"></script>
		<script src="${absoluteUrl}/bower_components/isotope-layout/dist/isotope.pkgd.min.js"></script>
		<script src="${absoluteUrl}/bower_components/isotope-packery/packery-mode.pkgd.min.js"></script>
		<script src="${absoluteUrl}/bower_components/imagesloaded/imagesloaded.pkgd.min.js"></script>
		<script src="${absoluteUrl}/js/app/newspaper.js"></script>
	</body>
</html></@compress>