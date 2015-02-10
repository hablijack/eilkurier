<@layout.basic>
	<link href="/css/category.css" rel="stylesheet"/>
	<script src="/js/app/category.js"></script>
	<section id="categories" class="page-content">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
					<h1>Kategorien</h1>
				</div>
			</div>
			<div class="row product-chooser">
				<#list categories as category>
					<a href="">
						<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
				    		<div class="product-chooser-item selected">
				    			<img class="img-responsive pull-left" src="data:image/png;base64,${category.base64Picture}" />
				    			<h4>${category.name}</h4>
				    		</div>
				    	</div>
				   	</a>
				</#list>
			</div>
	    </div>
	</section>				
</@layout.basic>
