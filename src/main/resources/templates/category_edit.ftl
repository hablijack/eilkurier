<@layout.basic>
	<link href="css/register.css" rel="stylesheet"/>
	<section id="register" class="page-content">
        <div class="container">
            <div class="row">
                <div class="col-md-6">

					<h1>Kategorie registrieren</h1> 
					
					<form enctype="multipart/form-data" role="form" name="form" action="/category/create" method="post">
						<@spring.bind "form" />
						<#if spring.status.error>
							<ul>
							    <#list spring.status.errorMessages as error>
							        <li>${error}</li>
							    </#list>
							</ul>
						</#if>
					    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					
					   <div class="form-group">
					        <label for="name">Name:</label>
					        <input type="text" name="name" class="form-control" id="name" value="${form.name}" required autofocus/>
					    </div>
					    <div class="form-group">
					        <label for="description">Beschreibung:</label>
					        <input type="text" name="description" class="form-control" id="description" value="${form.description}"/>
					    </div>
					    <div class="form-group">
					        <label for="picture">Bild / Logo:</label>
					        <input type="file" name="picture" class="form-control file" id="picture" data-filename-placement="inside" />
					    </div>
					    <button class="btn btn-primary" type="submit">Speichern</button>
					</form>
				</div>
				<div class="col-md-6">
					<div class="well">
						jaja so ist das ;)
					</div> 
				</div>
			</div>
		</div>
	</section>				
</@layout.basic>