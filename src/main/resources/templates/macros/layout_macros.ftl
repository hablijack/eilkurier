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
			Eilkurier - Nachrichten wie Sie sein sollten
		</#if>
	</title>
</#macro>

<#macro css controllerId="empty">
	<link href="/css/bootstrap.min.css" rel="stylesheet">
	<link href="/css/eilkurier.css" rel="stylesheet">
	<link href="/css/dragula.min.css" rel="stylesheet">
	<link href="/css/buttons.css" rel="stylesheet">
	<link href="/css/${controllerId}.css" rel="stylesheet">
	<!--[if lt IE 9]>
		<script src="/js/external/html5shiv.js"></script>
	    <script src="/js/external/respond.min.js"></script>
	<![endif]-->
	
	<link href="/img/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</#macro>

<#macro js controllerId="empty">
    <script src="/js/external/jquery.js"></script>
    <script src="/js/external/list.min.js"></script>
    <script src="/js/external/bootstrap.min.js"></script>
    <script src="/js/external/bootstrap.file-input.js"></script>
    <script src="/js/external/jquery.easing.min.js"></script>
    <script src="/js/external/dragula.min.js"></script>
    <script src="/js/app/common.js"></script>
	<script src="/js/app/${controllerId}.js"></script>
</#macro>

<#macro pagefooter>
    <section id="footer" style="background-color:#6b2f1b;">
        <div class="container-fluid">
            <div class="well well-sm main-footer"  style="background-color:#6b2f1b; border:0px">
                <div class="row">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-4">
                                <h1 class="title-footer">
                                    Eilkurier
                                </h1>
                            </div>
                            <div class="col-md-4 contact-email text-center">
                                <img src="/img/logo_header.png" width="110" />
                                <h4>
                                    Nachrichten, wie Sie sein sollten 
                                </h4>
                            </div>
                            <div class="col-md-4">
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</#macro>