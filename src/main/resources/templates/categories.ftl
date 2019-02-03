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
					<a href="/category/${category.id}">
						<h4>${category.description}</h4>
					</a>
				</#list>
			</div>
		</div>
	</section>
</@layout.basic>
