<@layout.basic>
	<section id="yournews-content" class="page-content">
		<div class="container-fluid">
			<div>
				<section>
					<div class="wizard">
						<@wizzard/>
						<form id="wizzardform" role="form" data-csrf-name="${_csrf.parameterName}" data-csrf-value="${_csrf.token}">
							<div class="tab-content row">
								<div class="tab-pane active" role="tabpanel" id="step1">
									<h1>Willkommen in Deiner<br/> Nachrichtenzentrale</h1>
									<h2>Schritt 1: Deine Interessen</h2>
									<div class="row">
										<div class="col-md-4 infobox">
											<h3><i class="glyphicon glyphicon-folder-open"></i> Erklärung</h3>
											<p class="text-justify infotext">
												Als Erstes solltest Du dir überlegen, welche Art von Nachrichten Dich interessieren. 
												Du kannst hier schon mal eine Art Vorauswahl der Themen treffen, über die Du auf dem
												Laufenden gehalten werden möchtest. Ziehe dazu einfach mit der Maus deine Interessen von
												rechts nach links.
											</p>
											<p>
												<span class="glyphicon glyphicon-info-sign"></span>
												<i>Tipp: Du kannst deine Auswahl später jederzeit anpassen und langweilige Themen wieder entfernen.</i>
											</p>
										</div>
										<div class="col-md-8 infobox">
											<@dragndropcategory/>
										</div>
									</div>
									<button type="button" class="btn btn-primary next-step">
										speichern und weiter<br/>
										<span class="glyphicon glyphicon-chevron-right"></span>
									</button>
								</div>
								<div class="tab-pane" role="tabpanel" id="step2">
									<h1>Willkommen in Deiner<br/> Nachrichtenzentrale</h1>
									<h2>Schritt 2: Woher kommen deine Nachrichten?</h2>
									<div class="row">
										<div class="col-md-7">
											<h3>Nachrichtenquellen</h3>
											<p class="infotext text-justify">
												Du interessierst dich für <span class="categoriesTextInfo"></span>.<br/>
												Wähle Nachrichtenquellen aus, die in deiner ganz persönlichen Zeitungsausgabe auftauchen sollen.
											</p>
											<div id="feeds"></div>
										</div>
										<div class="col-md-4 infobox">
											<h3><i class="glyphicon glyphicon-share"></i> RSS-Feeds</h3>
											<p class="text-justify infotext">
												Als nächstes brauchen wir Quellen für deine Nachrichten. Wir verwenden hier <img height="20px" src="/img/rss_icon.png"></img> RSS.<br/>
												Der Eilkurier holt regelmäßig Neuigkeiten von verschiedenen Quellen ab und speichert Sie in deiner Nachrichtenzentrale.<br/> 
												Du musst dazu nur eine Auswahl treffen und die Nachrichtenquellen "abonnieren" die Dich interessieren. Klicke dazu auf den Button der jeweiligen Quelle.
											</p>
											<p>
												<span class="glyphicon glyphicon-info-sign"></span>
												<i>Denke daran: Du kannst deine Quellen später jederzeit erweitern und ändern, deine Entscheidungen sind nicht endgültig.</i>
											</p>
										</div>
									</div>
									<button type="button" class="btn btn-default prev-step">
										Zurück<br/>
										<span class="glyphicon glyphicon-chevron-left"></span>
									</button>
									<button type="button" class="btn btn-primary next-step">
										speichern und weiter<br/>
										<span class="glyphicon glyphicon-chevron-right"></span>
									</button>
								</div>
								<div class="tab-pane" role="tabpanel" id="step3">
									<h1>Willkommen in Deiner<br/> Nachrichtenzentrale</h1>
									<h2>Schritt 3: Welche Quelle ist Dir wichtig?</h2>
									<div class="container infobox">
										<div class="col-md-8 infobox">
											<ul class="feedsorter list"></ul>
										</div>
										<div class="col-md-4 infobox">
											<h3><i class="glyphicon glyphicon-sort"></i> Sortierung</h3>
											<p class="text-justify infotext">
												Wovon möchtest Du am Meissten informiert werden? Welche Nachrichtenquelle ist Dir am wichtigsten? Hier kannst Du
												entscheiden und sortieren, welche Info als riesen Schlagzeile oder nur als kleine Kolumne auftaucht. 
												Schiebe dazu einfach die Nachrichtenquellen nach oben, die Dir wichtiger sind und erstelle so eine Reihenfolge.
											</p>
											<p>
												<span class="glyphicon glyphicon-info-sign"></span>
												<i>Denke daran: Du kannst deine Sortierung später jederzeit ändern, deine Entscheidungen sind nicht endgültig.</i>
											</p>
										</div>
									</div>
									<button type="button" class="btn btn-default prev-step">
										Zurück<br/>
										<span class="glyphicon glyphicon-chevron-left"></span>
									</button>
									<button type="button" class="btn btn-primary next-step">
										speichern und weiter<br/>
										<span class="glyphicon glyphicon-chevron-right"></span>
									</button>
								</div>
								<div class="tab-pane" role="tabpanel" id="step4">
									<h1>Willkommen in Deiner<br/> Nachrichtenzentrale</h1>
									<h2><i class="glyphicon glyphicon-ok"></i> Alles Bereit</h2>
									<div class="container">
										<div class="col-md-4 infobox">
											<h3>Genug geklickt</h3>
											<p class="text-justify infotext">
												Unsere Redaktion sammelt gerade Infos und Nachrichten aus aller Welt um deine 
												persönliche Ausgabe vom Eilkurier zu schnüren.
											</p>
											<p class="exit">
												<button class="btn btn-primary">
													zu deiner Ausgabe<br/>
													<span class="glyphicon glyphicon-share-alt"></span>
												</button>
											</p>
										</div>
									</div>
									<button type="button" class="btn btn-default prev-step">
										Zurück<br/>
										<span class="glyphicon glyphicon-chevron-left"></span>
									</button>
								</div>
								<div class="clearfix"></div>
							</div>
						</form>
						 
					</div>
				</section>
			</div>
		</div>
	</section>
</@layout.basic>

<#macro dragndropcategory>
	<div id="wrapper">
		<div id="usercategories">
			<div class="filtersection"></div>
			<ul class="categorycontainer container"></ul>
		</div>
		<div class="arrow-left"></div>
		<div id="categories">
			<div class="filtersection">
				<input class="search form-control" placeholder="... suchen" />
				<a class="sort btn btn-default" data-sort="name">
					A-Z <span class="glyphicon glyphicon-arrow-down"></span>
				</a>
			</div>
			<ul class="categorycontainer container list">
				<#list categories as category>
					<li class="categorydrop" data-category-id="${category.id}">
						<span class="name" >
							<span class="glyphicon glyphicon-menu-hamburger"></span>&nbsp;&nbsp;
							${category.name}
							<p><small>${category.description}</small></p>
						</span>
						</li>
				</#list>
			</ul>
		</div>
	</div>
</#macro>

<#macro wizzard>
	<div class="wizard-inner">
		<div class="connecting-line"></div>
		<ul class="nav nav-tabs" role="tablist">
			<li role="presentation" class="active">
				<a href="#step1" data-toggle="tab" aria-controls="step1" role="tab">
					<span class="round-tab">
						<i class="glyphicon glyphicon-folder-open"></i>
						Interessen
					</span>
				</a>
			</li>
			<li role="presentation" class="disabled">
				<a href="#step2" data-toggle="tab" aria-controls="step2" role="tab">
					<span class="round-tab">
						<i class="glyphicon glyphicon-share"></i>
						Quellen
					</span>
				</a>
			</li>
			<li role="presentation" class="disabled">
				<a href="#step3" data-toggle="tab" aria-controls="step3" role="tab">
					<span class="round-tab">
						<i class="glyphicon glyphicon-sort"></i>
						Sortieren
					</span>
				</a>
			</li>
			<li role="presentation" class="disabled">
				<a href="#step4" data-toggle="tab" aria-controls="step4" role="tab">
					<span class="round-tab">
						<i class="glyphicon glyphicon-ok"></i>
						Bereit!
					</span>
				</a>
			</li>
		</ul>
	</div>
</#macro>

<script id="feed-template" type="text/x-handlebars-template">
	<span class="feedContainer col-md-3" data-feedid="{{ id }}">
		<h3>{{name}}</h3>
		<img class="img-responsive" src="{{picture}}" />
		<p><small>{{description}}</small></p>
		<input type="checkbox" 
			class="bootstrap-switched" 
			name="my-checkbox"
			data-on-text="abboniert"
			data-off-text="kein Interesse"
			data-size="large">
	</span>
</script>

<script id="feed-sorter-template" type="text/x-handlebars-template">
	<li data-feedid="{{ id }}">
		<span class="glyphicon glyphicon-menu-hamburger"></span>&nbsp;&nbsp;
		<span>{{name}}<span>
		<img class="pull-right" src="{{ picture }}" /> 
	</li>
</script>
