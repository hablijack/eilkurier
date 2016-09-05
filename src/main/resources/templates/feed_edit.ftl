<@layout.basic>
	<link href="css/register.css" rel="stylesheet"/>
	<section id="register" class="page-content">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <#if form.url??>
                        <h1>Nachrichtenquelle ändern</h1> 
                    <#else>
                        <h1>Nachrichtenquelle hinzufügen</h1> 
                    </#if>

					
					<form enctype="multipart/form-data" role="form" name="form" action="/feed/create" method="post">
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
					        <label for="url">URL:</label>
					        <input type="text" name="url" id="url" class="form-control" value="${form.url}" required autofocus/>
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