<@layout.basic>
	<section id="homepage-content" class="page-content">
	
		<#-- INFO AREA ================================================= -->
		<section class="info" id="info">
	        <div class="container">
	            <div class="row">
	                <div class="col-md-12">
	                	<h1>Dein persönlicher Eilkurier!</h1>
	                </div>
	            </div>
	            <div class="row">
	            	<div class="col-md-5">
	            	  <img class="img-responsive newspaper center-block" src="/img/zeitung.png">
	            	</div>
	            	<div class="col-md-7 info-text text-justify">
	                    <p>
	                    	Kennst Du das? Du sitzt Sonntag Morgens am Frühstückstisch, 
	                    	schmökert in der Tageszeitung deiner Wahl und es findet sich partout nichts Interessantes.
	                    	Vielleicht nimmt Dir auch die Qualität des Geschriebenen sofort die Lust am Weiterlesen.
	                    </p>
	                    <p>	
	                    	Wäre es nicht schön wenn ein Bote jeden Morgen genau die Informationen zusammentragen würde, 
	                    	die Dich interessieren und sie anschließend pünktlich und lesefertig bei Dir abliefert?
	                    </p> 
	                     <p>	
	                    	Wir gehen sogar noch einen Schritt weiter: Wäre es nicht schön wenn diese News nicht an eine
	                    	bestimmte Ausgabe gebunden sind, sondern immer topaktuell vorliegen? 
	                    </p> 
	                    <p>
	                    	Der Eilkurier ist komplett kostenlos und wird es immer sein. Wenn Du nähres zu unserem Geschäftsmodell erfahren möchtest 
	                    	erhältst Du hier weiter informationen. 
	                    </p>
	                </div>
	            </div>
	        </div>
	     </section>
	     
	    <#-- LOGIN AREA ================================================= -->
	    <section class="login" id="login">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-4 <#if error?exists && error.isPresent()>error<#else>hide</#if>">
						<div id="loginErrorMsg" class="alert alert-error">
			            	Wrong username og password
			            </div>
			         </div>
			    </div>
				<div class="row">
					<div class="col-md-4 hidden-xs login-logo">Login</div>
	                <div class="col-md-8 loginform">
						<form role="form" action="/login" method="post">
			              	  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			                  <div class="form-group">
			                      <input type="text" class="form-control" id="email" name="email" value="" required="" title="Please enter you username" placeholder="example@gmail.com">
			                      <label for="email" class="control-label">Benutzer</label>
			                  </div>
			                  <div class="form-group">
			                      <input type="password" class="form-control" id="password" name="password" value="" required="" title="Please enter your password">
			                      <label for="password" class="control-label">Passwort</label>
			                  </div>
			                  <div class="form-group">
			                  	<button type="submit" class="btn btn-primary btn-lg">Anmelden</button>
			                  </div>
			            </form>
			       </div>
			    </div>
			</div>
		</section>
	     
	    <#-- SERVICE AREA ================================================= --> 
	    <section class="service" id="service">
	    	<div class="container">
			    <div class="row">
			        <div class="col-md-12">
			            <div class="carousel slide" id="service-carousel">
			                <ol class="carousel-indicators">
			                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
			                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
								<li data-target="#carousel-example-generic" data-slide-to="3"></li>
			                    <li data-target="#carousel-example-generic" data-slide-to="4"></li>
			                </ol>
			                <div class="carousel-inner">
			                    <div class="item active">
			                    	<div class="col-md-4 col-md-offset-2">
			                    		<h3>Zeit sparen</h3>
			                    	</div>
			                    	<div class="col-md-4">
			                    		<img src="https://placehold.it/350x300" />
			                    	</div>
			                    </div>
			                    <div class="item">	
			                    	<div class="col-md-4 col-md-offset-2">
			                    		<img src="https://placehold.it/350x300" />
			                    	</div>
			                    	<div class="col-md-4">
			                    		<h3>Geldbeutel schonen</h3>
			                    	</div>
			                    </div>
			                    <div class="item">
			                    	<div class="col-md-4 col-md-offset-102">
			                    		<h3>Nerven schonen</h3>
			                    	</div>
			                    	<div class="col-md-4">
			                    		<img src="https://placehold.it/350x300" />
			                    	</div>
			                    </div>
			                    <div class="item">
			                    	<div class="col-md-4 col-md-offset-2">
			                    		<img src="https://placehold.it/350x300" />
			                    	</div>
			                    	<div class="col-md-4">
			                    		<h3>Immer Topaktuell</h3>
			                    	</div>
			                    </div>
			                    <div class="item">
			                    	<div class="col-md-4 col-md-offset-2">
			                    		<h3>Modernes Medium</h3>
			                    	</div>
			                    	<div class="col-md-4">
			                    		<img src="https://placehold.it/350x300" />
			                    	</div>
			                    </div>
			                </div>
			                <a class="left carousel-control" href="#service-carousel" data-slide="prev">
			                    <span class="glyphicon glyphicon-chevron-left"></span>
			                </a>
			                <a class="right carousel-control" href="#service-carousel" data-slide="next">
			                	<span class="glyphicon glyphicon-chevron-right"></span>
			                </a>
			            </div>
			            <div class="main-text hidden-xs">
			                <div class="text-center">
			                    <h2>
			                        Wir haben die Lösung:
			                    </h2>
			                    <div class="">
			                    	JETZT KOSTENLOS
			                        <a href="#">Anmelden</a>
			                        ODER
			                        <a href="/user/create">Registrieren</a>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>
			</div>
	    </section>
	</section>
</@layout.basic>