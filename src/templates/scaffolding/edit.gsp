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
	            	<g:message code="${domainClass.propertyName}.label" default="${className}"/>
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
	                    <g:link  action="edit">
							<g:message code="default.edit.label"  args="[entityName]" />
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
				<g:hasErrors bean="\${${propertyName}}">
				<ul class="errors" role="alert">
					<g:eachError bean="\${${propertyName}}" var="error">
						<div class="alert alert-danger alert-dismissable">
							<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
							<g:if test="\${error in org.springframework.validation.FieldError}">
								data-field-id="\${error.field}"
							</g:if>>
							<g:message error="\${error}"/>
						</div>
					</g:eachError>
				</ul>
				</g:hasErrors>
			</div>
		</div>

		<div class="row">
				<div class="col-md-12">
					<div class="portlet box blue">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-reorder"></i><g:message code="default.edit.label"  args="[entityName]"  />							</div>
							<div class="tools">
								<a href="javascript:;" class="collapse">
								</a>
								<a href="javascript:;" class="remove">
								</a>
							</div>
						</div>
						<div class="portlet-body form">
							<g:form url="[resource:${propertyName}, action:'update']" method="PUT"  class="form-horizontal" <%= multiPart ? ' enctype="multipart/form-data"' : '' %>>
								<div class="form-body">
									<div class="alert alert-danger display-hide">
										<button class="close" data-close="alert"></button>
										O formulário contêm erros. Por favor verifique abaixo.
									</div>
									<g:render template="form"/>
								</div>
								<div class="form-actions right">
									<g:hiddenField name="version" value="\${${propertyName}?.version}" />

									<div class="col-md-offset-3 col-md-9">

										<g:actionSubmit class="btn green" action="update" value="\${message(code: 'default.button.update.label', default: 'Update')}" />
									</div>
								</div>
							</g:form>
						</div>
					</div>
				</div>
		</div>
	</body>
</html>
