<#macro render>
	<nav class="navbar navbar-eilkurier navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <@navigationLinks />
                
                <@navigationBrand />
                
                <@userArea />
            </div>
        </div>
	    <div class="text-center navbar-slogan" style="">NACHRICHTEN, WIE SIE SEIN SOLLTEN</div>
    </nav>
</#macro>

<#macro navigationBrand>
	<div class="navbar-brand">
        <a href="#">
        	<img src="img/logo_header.png" />
        	<span class="brand-name">Eilkurier.de</span>
        </a>
    </div>
</#macro>

<#macro navigationLinks>
	<ul class="nav navbar-nav">
        <li class="hidden">
            <a class="page-scroll" href="#page-top"></a>
        </li>
        <li>
            <a class="page-scroll" href="#about">Info</a>
        </li>
        <li>
            <a class="page-scroll" href="#services">Features</a>
        </li>
        <li>
            <a class="page-scroll" href="#contact">Kontakt</a>
        </li>
    </ul>
</#macro>

<#macro userArea loggedIn=false>
	 <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            	<#if loggedIn>
            		<span class="glyphicon glyphicon-user"></span> 
    				<strong>Hallo, Name</strong>
            	<#else>
            		<span class="glyphicon glyphicon-lock"></span>
            		<strong>Anmelden</strong>
            	</#if>
                <span class="glyphicon glyphicon-chevron-down"></span>
            </a>
            <ul class="dropdown-menu">
            	<#if loggedIn>
            		<@showUserInfo />
            	<#else>
            		<@showRegistration />
            	</#if>
            </ul>
        </li>
    </ul>
</#macro>

<#macro showRegistration>
	<li>
        <div class="navbar-login">
            <div class="row">
                <div class="col-xs-12">
	                  <form id="loginForm" method="POST" action="/login/" novalidate="novalidate">
	                      <div class="form-group">
	                          <label for="username" class="control-label">Username</label>
	                          <input type="text" class="form-control" id="username" name="username" value="" required="" title="Please enter you username" placeholder="example@gmail.com">
	                          <span class="help-block"></span>
	                      </div>
	                      <div class="form-group">
	                          <label for="password" class="control-label">Password</label>
	                          <input type="password" class="form-control" id="password" name="password" value="" required="" title="Please enter your password">
	                          <span class="help-block"></span>
	                      </div>
	                      <div id="loginErrorMsg" class="alert alert-error hide">Wrong username og password</div>
	                      <div class="checkbox">
	                          <label>
	                              <input type="checkbox" name="remember" id="remember"> Remember login
	                          </label>
	                          <p class="help-block">(if this is a private computer)</p>
	                      </div>
	                      <button type="submit" class="btn btn-success btn-block">Login</button>
	                      <a href="/forgot/" class="btn btn-default btn-block">Help to login</a>
	                      <a href="/new-customer/" class="btn btn-info btn-block">Yes please, register now!</a>
	                  </form>
	              </div>
            </div>
        </div>
    </li>
</#macro>

<#macro showUserInfo>
	<li>
        <div class="navbar-login">
            <div class="row">
                <div class="col-lg-4">
                    <p class="text-center">
                        <span class="glyphicon glyphicon-user navbar-user-icon"></span>
                    </p>
                </div>
                <div class="col-lg-8">
                    <p class="text-left"><strong>Nombre Apellido</strong></p>
                    <p class="text-left small">correoElectronico@email.com</p>
                    <p class="text-left">
                        <a href="#" class="btn btn-primary btn-block btn-sm">Actualizar Datos</a>
                    </p>
                </div>
            </div>
        </div>
    </li>
    <li class="divider"></li>
    <li>
        <div class="navbar-login navbar-login-session">
            <div class="row">
                <div class="col-lg-12">
                    <p>
                        <a href="#" class="btn btn-danger btn-block">Cerrar Sesion</a>
                    </p>
                </div>
            </div>
        </div>
    </li>
</#macro>
