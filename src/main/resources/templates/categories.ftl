<@layout.basic>
	<section id="categories" class="page-content">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
					<h1>Kategorien</h1>
				</div>
			</div>
			<div class="row">
				<#list categories as category>
					<div class="col-md-4">
						<h3>${category.name}</h3> 
						<img width="64" height="64" src="data:image/png;base64,${category.base64Picture}" />
					</div>
				</#list>
			</div>
		</div>	
	</section>				
</@layout.basic>
