<@layout.basic>
	<section id="categories" class="page-content">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
					<h1>Feeds</h1>
				</div>
			</div>
			<div class="row">
				<#list feeds as feed>
					<div class="col-md-4">
						<h3>${feed.name}</h3> 
						<p>${feed.url}</p>
						<img width="64" height="64" src="data:image/png;base64,${feed.base64Picture}" />
					</div>
				</#list>
			</div>
		</div>	
	</section>				
</@layout.basic>
