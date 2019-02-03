<@layout.newspaper>
	<div class="head">
		<div class="headerobjectswrapper">
			<div class="weatherforcastbox">
				<span style="font-style: italic;">
					Wettervorhersage für die nächsten 24 Stunden:
					Viel Sonne
				</span><br>
				<span>Wind: 7km/h SSE; Temp: 21°C; Hum: 82%</span>
			</div>
			<header>
				<img src="${absoluteUrl}/img/rider.png" width="90" /><span class="headline">Eilkurier</span>
				<div class="slogan">Nachrichten, wie Sie sein sollten</div>
			</header>
		</div>
		<div class="subhead">
			<span class="pull-left">Das Internet</span>
			<span>${currentDate?string["EEEE MMMM dd, yyyy"]}</span>
			<span class="pull-right">Seit 2018</span>
		</div>
		<div class="categories">
			<span>IT, Hardware, Software</span>
			-
			<span>Gitarre & Bass</span> 
		</div>
	</div>
	<div class="content">
		<div class="collumns">
			<#list infos as info ><#if info.weight gte 4>
				<@xlarge info/>
			<#elseif info.weight gte 3>
				<@large info/>
			<#elseif info.weight gte 2>
				<@middle info/>
			<#elseif info.weight gte 1>	
				<@small info/>
			</#if></#list>
		</div>
	</div>
</@layout.newspaper>

<#macro xlarge info>
	<div class="collumn collumn-xlarge">
		<div class="body">
			<span class="left">
				<img src="${ info.picture?default('') }">
			</span>
			<span class="right">
				<div class="body">
					<p class="headline hl1">${ info.title }</p>
					<span class="headline hl6">von: ${ info.author }</span>
					${ info.textonlymessage }
				</div>
				<div class="footer">
					— ${ info.feed.name } ${info.timestamp?string["dd MMMM yyyy HH:mm"]} Uhr —
				</div>
			</span>
		</div>
		<span class="category">${ info.feed.categories[0].name }</span>
		<img class="feedimg" src="${info.feed.picture}"/>
	</div>
</#macro>

<#macro large info>
	<div class="collumn collumn-large">
		<div class="head">
			<p class="headline hl1">
				${ info.title }
			</p>
			<p>
				<span class="headline hl6">von: ${ info.author }</span>
			</p>
		</div>
		<div class="body">
			${ info.message }
		</div>
		<div class="footer">
			— ${ info.feed.name } ${info.timestamp?string["dd MMMM yyyy HH:mm"]} Uhr —
		</div>
		<span class="category">${ info.feed.categories[0].name }</span>
		<img class="feedimg" src="${info.feed.picture}"/>
	</div>
</#macro>

<#macro middle info>
	<div class="collumn collumn-middle">
		<div class="head">
			<p class="headline hl1">
				${ info.title }
			</p>
			<p>
				<span class="headline hl6">von: ${ info.author }</span>
			</p>
		</div>
		<div class="body">
			${ info.message }
		</div>
		<div class="footer">
			— ${ info.feed.name } ${info.timestamp?string["dd MMMM yyyy HH:mm"]} Uhr —
		</div>
		<span class="category">${ info.feed.categories[0].name }</span>
		<img class="feedimg" src="${info.feed.picture}"/>
	</div>
</#macro>

<#macro small info>
	<div class="collumn collumn-small">
		<div class="head">
			<p class="headline hl1">
				${ info.title }
			</p>
			<p>
				<span class="headline hl6">von: ${ info.author }</span>
			</p>
		</div>
		<div class="body">
			${ info.message }
		</div>
		<div class="footer">
			— ${ info.feed.name } ${info.timestamp?string["dd MMMM yyyy HH:mm"]} Uhr —
		</div>
		<span class="category">${ info.feed.categories[0].name }</span>
		<img class="feedimg" src="${info.feed.picture}"/>
	</div>
</#macro>
