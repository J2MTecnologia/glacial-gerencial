<% import grails.persistence.Event %>
<%=packageName%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<!-- BEGIN PAGE HEADER-->
	    <div class="row">
	        <div class="col-md-12">
	            <!-- BEGIN PAGE TITLE & BREADCRUMB-->
	            <h3 class="page-title">
            		<g:message code="${domainClass.propertyName}.label" default="${className}" />
	            </h3>
	            <ul class="page-breadcrumb breadcrumb">
	            	<li class="btn-group">
						<button type="button" class="btn blue dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true">
						<span>
							<g:message code="default.actions.label" />
						</span>
						<i class="fa fa-angle-down"></i>
						</button>
						<ul class="dropdown-menu pull-right" role="menu">
							<li>
								<a href="\${createLink(uri: '/')}">
									<g:message code="default.home.label" />
								</a>
							</li>
							<li>
								<g:link action="">
									<g:message code="default.list.label" args="[entityName]" />
								</g:link>
							</li>
						</ul>
					</li>
	                <li>
	                    <i class="fa fa-home"></i>
	                    <a href="\${createLink(uri: '/')}">
							<g:message code="default.home.label" />
						</a>	
	                    <i class="fa fa-angle-right"></i>
	                </li>
	                <li>
	                	<g:link action="">
	                		<g:message code="${domainClass.propertyName}.label" default="${className}"/>
						</g:link>
						<i class="fa fa-angle-right"></i>
	                </li>
	                <li>
	                    <g:link action="show" id="\${${propertyName}.id}">
							<g:message code="default.show.label" args="[entityName]" />
						</g:link>
	            </ul>
	            <!-- END PAGE TITLE & BREADCRUMB-->
	        </div>
	    </div>

	    <div class="row">
	    	<div class="col-md-12">
				<g:if test="\${flash.message}">
					<div class="alert alert-info alert-dismissable">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
					    \${flash.message}
					</div>
				</g:if>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<div class="portlet box blue">
					<div class="portlet-title">
						<div class="caption">
							<i class="fa fa-reorder"></i>
							<g:message code="default.data.label" args="[entityName]" />
						</div>
						<div class="tools">
							<a href="javascript:;" class="collapse">
							</a>
							<a href="javascript:;" class="remove">
							</a>
						</div>
					</div>
					<div class="portlet-body form">
						<!-- BEGIN FORM-->
						<g:form class="form-horizontal" role="form" url="[resource:${propertyName}, action:'delete']" method="DELETE">
							<div class="form-body">
								<div class="row">
									<%  excludedProps = Event.allEvents.toList() << 'id' << 'version'
										allowedNames = domainClass.persistentProperties*.name << 'dateCreated' << 'lastUpdated'
										props = domainClass.properties.findAll { allowedNames.contains(it.name) && !excludedProps.contains(it.name) && (domainClass.constrainedProperties[it.name] ? domainClass.constrainedProperties[it.name].display : true) }
										Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
										props.each { p -> %>
									<g:if test="\${${propertyName}?.${p.name}}">
										<div class="col-md-6">
											<div class="form-group">
												<label class="control-label col-md-3"><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}" /></label>
												<% if (p.isEnum()) { %>
												<div class="col-md-9">
													<p class="form-control-static">
														<g:fieldValue bean="\${${propertyName}}" field="${p.name}"/>
													</p>
												</div>
										<%  } else if (p.oneToMany || p.manyToMany) { %>
											<g:each status="i" in="\${${propertyName}.${p.name}}" var="${p.name[0]}">
												<g:if test="\${i}">
													<label class="control-label col-md-3"></label>
												</g:if>
												<div class="col-md-9">
													<p class="form-control-static">
														<g:link controller="${p.referencedDomainClass?.propertyName}" action="show" id="\${${p.name[0]}.id}">\${${p.name[0]}?.encodeAsHTML()}</g:link>
													</p>
												</div>
											</g:each>
										<%  } else if (p.manyToOne || p.oneToOne) { %>
											<div class="col-md-9">
												<p class="form-control-static">
													<g:link controller="${p.referencedDomainClass?.propertyName}" action="show" id="\${${propertyName}?.${p.name}?.id}">\${${propertyName}?.${p.name}?.encodeAsHTML()}</g:link>
												</p>
											</div>
										<%  } else if (p.type == Boolean || p.type == boolean) { %>
											<div class="col-md-9">
												<p class="form-control-static">
													<g:formatBoolean boolean="\${${propertyName}?.${p.name}}" />
												</p>
											</div>	
											<% } else if (p.type == Date || p.type == java.sql.Date || p.type == java.sql.Time || p.type == Calendar) { %>
												<div class="col-md-9">
													<p class="form-control-static">
														<g:formatDate date="\${${propertyName}?.${p.name}}" />
													</p>
												</div>
											<% } else if ((p.type==([] as byte[]).class) || (p.type==([] as Byte[]).class)) { %>
												<span class="property-value" aria-labelledby="${p.name}-label">
													<g:link action="download${p.name}" id="\${${propertyName}.id}">
														<i class="fa fa-cloud-download"></i> 
													</g:link>
												</span>
											<% } else if (!p.type.isArray()) { %>
											<div class="col-md-9">
												<p class="form-control-static">
													<g:fieldValue bean="\${${propertyName}}" field="${p.name}"/>
												</p>
											</div>
											<% } %>
											</div>
										</div>
									</g:if>
									<% } %>
									</div>
								</div>
							<div class="form-actions right">
								<div class="row">
									<div class="col-md-12">
										<div class="col-md-offset-3 col-md-9">
											<g:hiddenField name="id" value="\${${propertyName}?.id}" />

											<g:link class="btn green" action="edit" id="\${${propertyName}?.id}">
											<i class="fa fa-pencil"></i> <g:message code="default.button.edit.label" default="Edit" /> </g:link>

											<g:actionSubmit class="btn red" action="delete" value="\${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('\${message(code: 'default.button.delete.confirm.message',default: 'Are you sure?')}');"> <i class="fa fa-times"></i> 
											</g:actionSubmit>
											<g:link class="btn green" action="create">
						    					<i class="fa fa-plus-square-o"></i> <g:message code="default.create.label" args="[entityName]" /> 
						    				</g:link>
										</div>
									</div>
								</div>
							</div>
						</g:form>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>

