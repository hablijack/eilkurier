<@compress single_line=true><@layout.doctype />
<html lang="de">

	<head>
	    <@layout.metainfo />
	
	    <@layout.pagetitle />
	
		<@layout.css />
	</head>
	
	<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

    	<@navigation.render currentUser=currentUser />

		<div class="page-content">
			${template}
		</div>

		<@layout.js />

	</body>
	
</html></@compress>