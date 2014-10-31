<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>App Members</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="" name="description"/>
        <meta content="" name="author"/>
        
        <!-- <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/> -->

        <link rel="stylesheet" href="${createLink(uri: '/')}css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="${createLink(uri: '/')}css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="${createLink(uri: '/')}css/uniform.default.css" type="text/css">

        <link rel="stylesheet" href="${createLink(uri: '/')}css/style-metronic.css" type="text/css">
        <link rel="stylesheet" href="${createLink(uri: '/')}css/style.css" type="text/css">
        <link rel="stylesheet" href="${createLink(uri: '/')}css/style-responsive.css" type="text/css">
        <link rel="stylesheet" href="${createLink(uri: '/')}css/plugins.css" type="text/css">
        <link rel="stylesheet" href="${createLink(uri: '/')}css/default.css" type="text/css" id="style_color" >
        <link rel="stylesheet" href="${createLink(uri: '/')}css/custom.css" type="text/css">

        <link rel="stylesheet" href="${createLink(uri: '/')}css/select2.css" type="text/css">
        <link rel="stylesheet" href="${createLink(uri: '/')}css/select2-metronic.css" type="text/css" >
        <link rel="stylesheet" href="${createLink(uri: '/')}css/DT_bootstrap.css" type="text/css">
        <link rel="stylesheet" href="${createLink(uri: '/')}css/bootstrap-markdown.min.css" type="text/css">

        <link rel="shortcut icon" href="${createLink(uri: '/')}img/favicon.ico">

        <g:layoutHead/>
        <r:layoutResources />
        <ckeditor:resources/>   
</head>
<body class="page-header-fixed">
    <div class="header navbar navbar-fixed-top mega-menu">
        <!-- BEGIN TOP NAVIGATION BAR -->
        <div class="header-inner">
            <!-- BEGIN LOGO -->
                <a href="${createLink(uri: '/')}">
                    <img src="${createLink(uri: '/')}img/logo_inside.png"/>
                </a>
            <!-- END LOGO -->
    
            <!-- BEGIN RESPONSIVE MENU TOGGLER -->
            <a href="javascript:;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <img src="${createLink(uri: '/')}img/menu-toggler.png"  alt=""/>

            </a>
            <!-- END RESPONSIVE MENU TOGGLER -->
            <!-- BEGIN TOP NAVIGATION MENU -->
            <ul class="nav navbar-nav pull-right">

                <li class="dropdown" id="header_task_bar">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                        <i class="fa fa-tasks"></i>
                        <span class="badge">
                             5
                        </span>
                    </a>
                    <ul class="dropdown-menu extended tasks">
                        <li>
                            <p>
                                 Você possui 5 novas notificações.
                            </p>
                        </li>
                        <li>
                            <ul class="dropdown-menu-list scroller" style="height: 250px;">
                                <li>
                                    <a href="#">
                                        <span class="label label-icon label-success">
                                            <i class="fa fa-plus"></i>
                                        </span>
                                         Novo aluno assinou o curso XPTO
                                        <span class="time">
                                             Agora
                                        </span>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <span class="label label-icon label-success">
                                            <i class="fa fa-bolt"></i>
                                        </span>
                                         Novo aluno assinou o curso XPTO
                                        <span class="time">
                                             15 mins
                                        </span>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <span class="label label-icon label-success">
                                            <i class="fa fa-bell-o"></i>
                                        </span>
                                         Novo aluno assinou o curso XPTO
                                        <span class="time">
                                             22 mins
                                        </span>
                                    </a>
                                </li>
                                
                                <li>
                                    <a href="#">
                                        <span class="label label-icon label-success">
                                            <i class="fa fa-bell-o"></i>
                                        </span>
                                        A lancamento do curso XPTO finalizou
                                        <span class="time">
                                             45 mins
                                        </span>
                                    </a>
                                </li>
                                
                                <li>
                                    <a href="#">
                                        <span class="label label-icon label-danger">
                                            <i class="fa fa-bolt"></i>
                                        </span>
                                        O pagamento do aluno XPTO está atrasado.
                                        <span class="time">
                                             2 hrs
                                        </span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="external">
                            <a href="#">
                                 Veja todas as notificações <i class="m-icon-swapright"></i>
                            </a>
                        </li>
                    </ul>
                </li>

                <!-- BEGIN USER LOGIN DROPDOWN -->             
                <li class="dropdown user">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                        <img src="/img/avatar1.png"  alt="" />
                        <span class="username hidden-1024">
                             &nbsp;<sec:username/>
                        </span>
                        <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="javascript:;" id="trigger_fullscreen">
                                <i class="fa fa-arrows"></i> 
                                <g:message code="default.fullscreen.label" default="FullScreen" />
                            </a>
                        </li>
                        <li>
                            <g:link controller="logout">
                                <i class="fa fa-sign-out"></i> 
                                <g:message code="default.logout.label" default="Logout" />
                            </g:link>
                        </li>
                    </ul>
                </li>
                <!-- END USER LOGIN DROPDOWN -->
            </ul>
            <!-- END TOP NAVIGATION MENU -->
        </div>
        <!-- END TOP NAVIGATION BAR -->
    </div>
    
    <div class="clearfix">
    </div>

    <!-- BEGIN CONTAINER -->
    <div class="page-container">
        <div class="page-sidebar-wrapper">
            <div class="page-sidebar navbar-collapse collapse">
                <!--BEGIN: SIDEBAR MENU FOR DESKTOP-->
                <ul class="page-sidebar-menu hidden-sm hidden-xs" data-auto-scroll="true" data-slide-speed="200">
                    <li>
                        <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                        <div class="sidebar-toggler hidden-sm hidden-xs">
                        </div>
                        <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                    </li>
                    <li>
                        <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
                        <form class="sidebar-search" action="#" method="POST">
                            <div class="form-container">
                                <div class="input-box">
                                    <a href="javascript:;" class="remove">
                                    </a>
                                    <input type="text" placeholder="Search..."/>
                                    <input type="button" class="submit" value=" "/>
                                </div>
                            </div>
                        </form>
                        <!-- END RESPONSIVE QUICK SEARCH FORM -->
                    </li>

                    <li>
                        <a href="${createLink(uri: '/')}javascript:;">
                            <i class="fa fa-rocket"></i>
                            <span class="title">
                                 <g:message code="launches.label" default="Launches"/>
                            </span>
                            <span class="arrow">
                            </span>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="${createLink(uri: '/')}launch">
                                    <i class="fa fa-list-alt"></i>
                                    <g:message code="default.singlelist.label"  default="List"/>   
                                </a>
                            </li>
                            <li>
                                <a href="${createLink(uri: '/')}launch/create">
                                    <i class="fa fa-plus-square"></i>
                                    <g:message code="default.button.create.label"/>   
                                </a>
                            </li>
                        </ul>
                    </li>
                    
                    <li>
                        <a href="${createLink(uri: '/')}javascript:;">
                            <i class="fa fa-book"></i>
                            <span class="title">
                                 <g:message code="courses.label" default="Courses"/>
                            </span>
                            <span class="arrow ">
                            </span>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="${createLink(uri: '/')}course">
                                    <i class="fa fa-list-alt"></i>
                                    <g:message code="default.singlelist.label"  default="List"/> 
                                </a>
                            </li>
                            <li>
                                <a href="${createLink(uri: '/')}course/create">
                                    <i class="fa fa-plus-square"></i>
                                    <g:message code="default.button.create.label"/>   
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="${createLink(uri: '/')}javascript:;">
                            <i class="fa fa-puzzle-piece"></i>
                            <span class="title">
                                  <g:message code="modules.label" default="Modules"/>
                            </span>
                            <span class="arrow ">
                            </span>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="${createLink(uri: '/')}module">
                                   <i class="fa fa-th-large"></i>
                                   <g:message code="default.organize.label"/>   
                                </a>
                            </li>
                            <li>
                                <a href="${createLink(uri: '/')}module">
                                    <i class="fa fa-list-alt"></i>
                                    <g:message code="default.singlelist.label" default="List"/>
                                </a>
                            </li>
                            <li>
                                <a href="${createLink(uri: '/')}module/create">
                                   <i class="fa fa-plus-square"></i>
                                   <g:message code="default.button.create.label"/>   
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="${createLink(uri: '/')}javascript:;">
                            <i class="fa fa-archive"></i>
                            <span class="title">
                                  <g:message code="contents.label" default="Contents"/>
                            </span>
                            <span class="arrow ">
                            </span>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="${createLink(uri: '/')}content">
                                   <i class="fa fa-th-large"></i>
                                   <g:message code="default.organize.label"/>   
                                </a>
                            </li>
                            <li>
                                <a href="${createLink(uri: '/')}content">
                                    <i class="fa fa-list-alt"></i>
                                    <g:message code="default.singlelist.label" default="List"/>
                                </a>
                            </li>
                            <li>
                                <a href="${createLink(uri: '/')}content/create">
                                   <i class="fa fa-plus-square"></i>
                                   <g:message code="default.button.create.label"/>   
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-bar-chart-o"></i>
                            <span class="title">
                                 Relatórios
                            </span>
                        </a>
                    </li>
                    <li class="last">
                        <g:link controller="logout">
                            <i class="fa fa-sign-out"></i>
                            <span class="title">
                                 Sair
                            </span>
                        </g:link>
                    </li>
                </ul>
                <!--END: SIDEBAR MENU FOR DESKTOP-->
                <!--BEGIN: HORIZONTAL AND SIDEBAR MENU FOR MOBILE & TABLETS-->
                <ul class="page-sidebar-menu visible-sm visible-xs" data-auto-scroll="true" data-slide-speed="200">
                    <li>
                        <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
                        <form class="sidebar-search" action="#" method="POST">
                            <div class="form-container">
                                <div class="input-box">
                                    <a href="${createLink(uri: '/')}javascript:;" class="remove">
                                    </a>
                                    <input type="text" placeholder="Search..."/>
                                    <input type="button" class="submit" value=" "/>
                                </div>
                            </div>
                        </form>
                        <!-- END RESPONSIVE QUICK SEARCH FORM -->
                    </li>
                    <li>
                        <a href="${createLink(uri: '/')}index.html">
                             Página Inicial
                            <span class="selected">
                            </span>
                            <span class="arrow open">
                            </span>
                        </a>
                         <ul class="sub-menu">
                            <li>
                                <a href="${createLink(uri: '/')}javascript:;">
                                    <i class="fa fa-rocket"></i>
                                    <span class="title">
                                         <g:message code="launches.label" default="Launches"/>
                                    </span>
                                    <span class="arrow">
                                    </span>
                                </a>
                                <ul class="sub-menu">
                                    <li>
                                        <a href="${createLink(uri: '/')}launch">
                                            <i class="fa fa-list-alt"></i>
                                            <g:message code="default.singlelist.label"  default="List"/>   
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${createLink(uri: '/')}launch/create">
                                            <i class="fa fa-plus-square"></i>
                                            <g:message code="default.button.create.label"/>   
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            
                            <li>
                                <a href="${createLink(uri: '/')}javascript:;">
                                    <i class="fa fa-book"></i>
                                    <span class="title">
                                         <g:message code="courses.label" default="Courses"/>
                                    </span>
                                    <span class="arrow ">
                                    </span>
                                </a>
                                <ul class="sub-menu">
                                    <li>
                                        <a href="${createLink(uri: '/')}course">
                                            <i class="fa fa-list-alt"></i>
                                            <g:message code="default.singlelist.label"  default="List"/> 
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${createLink(uri: '/')}course/create">
                                            <i class="fa fa-plus-square"></i>
                                            <g:message code="default.button.create.label"/>   
                                        </a>
                                    </li>
                                </ul>
                            </li>

                            <li>
                                <a href="${createLink(uri: '/')}javascript:;">
                                    <i class="fa fa-puzzle-piece"></i>
                                    <span class="title">
                                          <g:message code="modules.label" default="Modules"/>
                                    </span>
                                    <span class="arrow ">
                                    </span>
                                </a>
                                <ul class="sub-menu">
                                    <li>
                                        <a href="${createLink(uri: '/')}module">
                                           <i class="fa fa-th-large"></i>
                                           <g:message code="default.organize.label"/>   
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${createLink(uri: '/')}module">
                                            <i class="fa fa-list-alt"></i>
                                            <g:message code="default.singlelist.label" default="List"/>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${createLink(uri: '/')}module/create">
                                           <i class="fa fa-plus-square"></i>
                                           <g:message code="default.button.create.label"/>   
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="${createLink(uri: '/')}javascript:;">
                                    <i class="fa fa-archive"></i>
                                    <span class="title">
                                          <g:message code="contents.label" default="Contents"/>
                                    </span>
                                    <span class="arrow ">
                                    </span>
                                </a>
                                <ul class="sub-menu">
                                    <li>
                                        <a href="${createLink(uri: '/')}content">
                                           <i class="fa fa-th-large"></i>
                                           <g:message code="default.organize.label"/>   
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${createLink(uri: '/')}content">
                                            <i class="fa fa-list-alt"></i>
                                            <g:message code="default.singlelist.label" default="List"/>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${createLink(uri: '/')}content/create">
                                           <i class="fa fa-plus-square"></i>
                                           <g:message code="default.button.create.label"/>   
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-bar-chart-o"></i>
                                    <span class="title">
                                         Relatórios
                                    </span>
                                </a>
                            </li>
                            <li class="last">
                                <g:link controller="logout">
                                    <i class="fa fa-sign-out"></i>
                                    <span class="title">
                                         Sair
                                    </span>
                                </g:link>
                            </li>
                        </ul>
                    </li>
                </ul>
                <!--END: HORIZONTAL AND SIDEBAR MENU FOR MOBILE & TABLETS-->
            </div>
        </div>

        <div class="page-content-wrapper">
            <div class="page-content">
                <!-- BEGIN STYLE CUSTOMIZER -->
                <div class="theme-panel hidden-xs hidden-sm">
                    <div class="toggler">
                    </div>
                    <div class="toggler-close">
                    </div>
                    <div class="theme-options">
                        <div class="theme-option theme-colors clearfix">
                            <span>
                                 Mude o Tema
                            </span>
                            <ul>
                                <li class="color-black current color-default" data-style="default">
                                </li>
                                <li class="color-blue" data-style="blue">
                                </li>
                                <li class="color-brown" data-style="brown">
                                </li>
                                <li class="color-purple" data-style="purple">
                                </li>
                                <li class="color-grey" data-style="grey">
                                </li>
                                <li class="color-white color-light" data-style="light">
                                </li>
                            </ul>
                        </div>
                        <div class="theme-option">
                            <span>
                                 Layout
                            </span>
                            <select class="layout-option form-control input-small">
                                <option value="fluid" selected="selected">Fluid</option>
                                <option value="boxed">Boxed</option>
                            </select>
                        </div>
                        <div class="theme-option">
                            <span>
                                 Cabeçalho
                            </span>
                            <select class="header-option form-control input-small">
                                <option value="fixed" selected="selected">Fixed</option>
                                <option value="default">Default</option>
                            </select>
                        </div>
                        <div class="theme-option">
                            <span>
                                 Menu Lateral
                            </span>
                            <select class="sidebar-option form-control input-small">
                                <option value="fixed">Fixed</option>
                                <option value="default" selected="selected">Default</option>
                            </select>
                        </div>
                        <div class="theme-option">
                            <span>
                                 Posição do Menu Lateral
                            </span>
                            <select class="sidebar-pos-option form-control input-small">
                                <option value="left" selected="selected">Left</option>
                                <option value="right">Right</option>
                            </select>
                        </div>
                        <div class="theme-option">
                            <span>
                                 Rodapé
                            </span>
                            <select class="footer-option form-control input-small">
                                <option value="fixed">Fixed</option>
                                <option value="default" selected="selected">Default</option>
                            </select>
                        </div>
                    </div>
                </div>
                <!-- END STYLE CUSTOMIZER -->
                <g:layoutBody/>
            </div>
        </div>
    </div>


    <div class="footer">
    <div class="footer-inner">
        2014 &copy; AppMembers.com.br developed by <a href="http://leonn.github.io">Leonn Paiva</a>
    </div>
    <div class="footer-tools">
        <span class="go-top">
            <i class="fa fa-angle-up"></i>
        </span>
    </div>
    </div>

    <!--[if lt IE 9]>
    <g:javascript src="${createLink(uri: '/')}excanvas.min.js"/>
    <g:javascript src="${createLink(uri: '/')}respond.min.js"/> 
    <![endif]-->

    <g:javascript src="jquery-1.10.2.min.js"/>
    <g:javascript src="jquery-migrate-1.2.1.min.js"/> 
    <g:javascript src="bootstrap.min.js"/>
    <g:javascript src="bootstrap-hover-dropdown.min.js"/> 
    <g:javascript src="jquery.slimscroll.min.js"/>
    <g:javascript src="jquery.blockui.min.js"/> 
    <g:javascript src="jquery.cokie.min.js"/>
    <g:javascript src="jquery.uniform.min.js"/> 

    <g:javascript src="select2.min.js"/> 
    <g:javascript src="jquery.dataTables.min.js"/>
    <g:javascript src="DT_bootstrap.js"/> 
    <g:javascript src="jquery.validate.min.js"/> 
    <g:javascript src="additional-methods.min.js"/> 
    <g:javascript src="ckeditor.js"/> 
    
    <g:javascript src="core/app.js"/> 
    <g:javascript src="custom/jquery.multi-select.js"/> 
    <g:javascript src="custom/table-advanced.js" /> 
    <g:javascript src="custom/form-validation.js"/> 
    <g:javascript src="custom/components-dropdowns.js"/> 
    <g:javascript src="custom/custom.js"/> 
    

    <g:javascript>
        jQuery(document).ready(function() {    
            App.init();
            FormValidation.init();
            TableAdvanced.init();
            ComponentsDropdowns.init();
        });
    </g:javascript>

    <r:layoutResources />
</body>
</html>
