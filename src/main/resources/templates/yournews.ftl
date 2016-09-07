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
                                    
                                    <p>
                                        Als Erstes solltest Du dir überlegen, welche Art von Nachrichten Dich interessieren. 
                                        Du kannst hier schon mal ein
                                    </p>
                                    
                                    <div id="wrapper">
                                        <div class="categorycontainer container" id="usercategories"></div>
                                        <div class="categorycontainer container" id="categories">
                                          <#list categories as category>
                                              <div>${category.description}</div>
                                          </#list>
                                        </div>
                                    </div>
                                    
                                    <ul class="list-inline pull-right">
                                        <li><button type="button" class="btn btn-primary next-step">Save and continue</button></li>
                                    </ul>
                                </div>
                                <div class="tab-pane" role="tabpanel" id="step2">
                                    <h1>Willkommen in Deiner<br/> Nachrichtenzentrale</h1>
                                    <h2>Schritt 2: Woher kommen deine News?</h2>
                                    <p>Als nächstes brauchen wir Quellen für deine Nachrichten. Wir verwenden hier RSS.</p>
                                    <ul class="list-inline pull-right">
                                        <li><button type="button" class="btn btn-default prev-step">Previous</button></li>
                                        <li><button type="button" class="btn btn-primary next-step">Save and continue</button></li>
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
