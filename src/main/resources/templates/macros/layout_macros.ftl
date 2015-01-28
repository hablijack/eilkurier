<#macro basic>
	<#local template><#nested></#local>
	<#include "../layout/basic.ftl" />
</#macro>

<#macro doctype>
	<!DOCTYPE html>
</#macro>

<#macro metainfo>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
</#macro>

<#macro pagetitle title="">
	<title>
		<#if title?exists && title?has_content>
			${title}
		<#else>
			Eilkurier.de - Nachrichten wie Sie sein sollten
		</#if>
	</title>
</#macro>

<#macro css>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/eilkurier.css" rel="stylesheet">
	<link href="css/buttons.css" rel="stylesheet">
	
	<!--[if lt IE 9]>
		<script src="js/external/html5shiv.js"></script>
	    <script src="js/external/respond.min.js"></script>
	<![endif]-->
	
	<link href="img/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</#macro>

<#macro js>
    <script src="js/external/jquery.js"></script>
    <script src="js/external/bootstrap.min.js"></script>
    <script src="js/external/jquery.easing.min.js"></script>
    <script src="js/app/homepage.js"></script>
</#macro>