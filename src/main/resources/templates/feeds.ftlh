<@layout.basic>
	<section id="categories" class="page-content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<h1 class="feedHeadline">Quellen</h1>
				</div>
			</div>
			<div class="row">
				<#list feeds as feed>
					<a href="/feed/${feed.id}" class="feedContainer col-md-3">
						<h3>${feed.name}</strong></h3>
						<img src="${feed.picture}" />
					</a>
				</#list>
			</div>
		</div>
	</section>
</@layout.basic>
