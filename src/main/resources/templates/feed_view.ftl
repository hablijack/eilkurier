<@layout.basic>
	<link href="css/register.css" rel="stylesheet"/>
	<section id="register" class="page-content">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
					<h1>${feed.name}</h1>
					<p>${feed.description}</p>
					<p><strong>${feed.url}</strong></p>
				</div>
				<div class="col-md-6">
					<img class="img-responsive pull-left" src="data:image/png;base64,${feed.base64Picture}" /> 
				</div>
			</div>
		</div>
	</section>				
</@layout.basic>