<% import grails.persistence.Event %>
<%=packageName%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
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
							<g:message code="${domainClass.propertyName}.label" default="${className}" />
						</g:link>
						<i class="fa fa-angle-right"></i>
	                </li>
	                <li>
	                    <g:link  action="">
							<g:message code="default.list.label" args="[entityName]" />
						</g:link>
	                </li>
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
							<i class="fa fa-list"></i><g:message code="default.list.label" args="[entityName]" />
						</div>
						<div class="tools">
							<a href="javascript:;" class="collapse"></a>
							<a href="javascript:;" class="remove"></a>
						</div>
					</div>
					<div class="portlet-body">
						<table class="table table-striped table-bordered table-hover table-full-width" id="sample_2">
							<thead>
								<tr>
									<%  excludedProps = Event.allEvents.toList() << 'id' << 'version'
										allowedNames = domainClass.persistentProperties*.name << 'dateCreated' << 'lastUpdated'
										props = domainClass.properties.findAll { allowedNames.contains(it.name) && !excludedProps.contains(it.name) && it.type != null && !Collection.isAssignableFrom(it.type) && (domainClass.constrainedProperties[it.name] ? domainClass.constrainedProperties[it.name].display : true) }
										Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
										props.eachWithIndex { p, i ->
											if (i < 6) {
												if (p.isAssociation()) { %>
										<th><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}" /></th>
									<%      } else { %>
										<g:sortableColumn property="${p.name}" title="\${message(code: '${domainClass.propertyName}.${p.name}.label', default: '${p.naturalName}')}" />
									<%  }   }   } %>
								</tr>
							</thead>
							<tbody>
								<g:each in="\${${propertyName}List}" status="i" var="${propertyName}">
									<%  props.eachWithIndex { p, i ->
											if ((p.type==([] as byte[]).class) || (p.type==([] as Byte[]).class)) { %>
										<td>
											<g:link action="download${p.name}" id="\${${propertyName}.id}">	
												<i class="fa fa-cloud-download"></i> 
											</g:link>
										</td>
									<%          }else if (i == 0) { %>
										<td><g:link action="show" id="\${${propertyName}.id}">\${fieldValue(bean: ${propertyName}, field: "${p.name}")}</g:link></td>
									<%      } else if (i < 6) {
												if (p.type == Boolean || p.type == boolean) { %>
										<td><g:formatBoolean boolean="\${${propertyName}.${p.name}}" /></td>
									<%          } else if (p.type == Date || p.type == java.sql.Date || p.type == java.sql.Time || p.type == Calendar) { %>
										<td><g:formatDate date="\${${propertyName}.${p.name}}" /></td>
									<%          } 	else { %>
										<td>\${fieldValue(bean: ${propertyName}, field: "${p.name}")}</td>
									<%  }   }   } %>
									</tr>
								</g:each>
							</tbody>
						</table>
						<div class="form-actions right">
							<g:link class="btn green" action="create">
						    <i class="fa fa-plus-square-o"></i> <g:message code="default.create.label" args="[entityName]" /> </g:link>
						</div>
					</div>
				</div>
			</div>
	    </div>
	</body>
</html>
