<@layout.basic>
	<section id="yournews-content" class="page-content">
        <div class="container-fluid">
            <div class="row">
                <section>
                    <div class="wizard">
                        <@wizzard/>
                        <form role="form">
                            <div class="tab-content">
                                <div class="tab-pane active" role="tabpanel" id="step1">
                                
                                    <h1>Willkommen in Deiner<br/> Nachrichtenzentrale</h1>
                                    <h2>Schritt 1: Deine Interessen</h2>
                                    <div class="col-md-4">
                                        <p>
                                            Als Erstes solltest Du dir überlegen, welche Art von Nachrichten Dich interessieren. 
                                            Du kannst hier schon mal ein
                                        </p>
                                    </div>
                                    <div class="col-md-4">
                                        <@dragndropcategory/>
                                    </div>
                                    
                                    <ul class="list-inline pull-right">
                                        <li><button type="button" class="btn btn-primary next-step">speichern und weiter</button></li>
                                    </ul>
                                </div>
                                <div class="tab-pane" role="tabpanel" id="step2">
                                    <h1>Willkommen in Deiner<br/> Nachrichtenzentrale</h1>
                                    <h2>Schritt 2: Woher kommen deine News?</h2>
                                    <p>Als nächstes brauchen wir Quellen für deine Nachrichten. Wir verwenden hier RSS.</p>
                                    <ul class="list-inline pull-right">
                                        <li><button type="button" class="btn btn-default prev-step">Zurück</button></li>
                                        <li><button type="button" class="btn btn-primary next-step">speichern und weiter</button></li>
                                    </ul>
                                </div>
                               
                                <div class="tab-pane" role="tabpanel" id="complete">
                                    <h3>Complete</h3>
                                    <p>You have successfully completed all steps.</p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </form>
                       
                    </div>
                </section>
            </div>
        </div>
	</section>
</@layout.basic>

<#macro dragndropcategory>
    <div id="wrapper">
        <div id="usercategories">
            <div class="filtersection"></div>
            <ul class="categorycontainer container"></ul>
        </div>
        <div id="categories">
            <div class="filtersection">
                <div class="col-md-8">
                    <input class="search form-control" placeholder="Search" />
                </div>
                <a class="sort btn btn-default" data-sort="name">
                    Sort by name
                </a>
            </div>
            <ul class="categorycontainer container list">
              <#list categories as category>
                  <li>
                        <span class="name">${category.description}</span>
                  </li>
              </#list>
            </ul>
        </div>
    </div>
</#macro>

<#macro wizzard>
    <div class="wizard-inner">
        <div class="connecting-line"></div>
        <ul class="nav nav-tabs" role="tablist">
    
            <li role="presentation" class="active">
                <a href="#step1" data-toggle="tab" aria-controls="step1" role="tab">
                    <span class="round-tab">
                        <i class="glyphicon glyphicon-folder-open"></i>
                        Interessen
                    </span>
                </a>
            </li>
            
            <li role="presentation" class="disabled">
                <a href="#step2" data-toggle="tab" aria-controls="step2" role="tab">
                    <span class="round-tab">
                        <i class="glyphicon glyphicon-pencil"></i>
                        Quellen
                    </span>
                </a>
            </li>
            
            <li role="presentation" class="disabled">
                <a href="#complete" data-toggle="tab" aria-controls="step3" role="tab">
                    <span class="round-tab">
                        <i class="glyphicon glyphicon-ok"></i>
                        Fertig!
                    </span>
                </a>
            </li>
       
        </ul>
    </div>
</#macro>
