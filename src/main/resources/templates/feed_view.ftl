<@layout.basic>
	<link href="css/feed.css" rel="stylesheet"/>
	<section id="feedview" class="page-content">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
					<h1>${feed.name}</h1>
					<p>${feed.description}</p>
					<p><strong>${feed.url}</strong></p>
				</div>
				<div class="col-md-6 imageview">
					<img class="img-responsive pull-left" src="${feed.picture}" /> 
				</div>
			</div>
			<a class="btn btn-primary pull-left" href="/feeds">Zurück zur Übersicht</a> 
		</div>
	</section>
</@layout.basic>