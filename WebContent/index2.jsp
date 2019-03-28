<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>


<!DOCTYPE html>
<html lang="en-US">
<jsp:include page="head.jsp" flush="true">
	<jsp:param name="title" value="CD2H Labs" />
</jsp:include>

<style type="text/css" media="all">
@import "resources/layout.css";

.index-icon {
	text-align: center;
	color: grey;
	opacity: 0.7;
}

.accordion-head-spacing {
	min-height: 1px;
	float: left;
	display: inline-block;
	width: 10%;
	visibility: hidden;
}

.accordion-head-text {
	float: center;
	display: inline-block;
	width: 80%;
	text-align: center;
}

.accordion-head-chevron {
	float: right;
	display: inline-block;
	width: 10%;
	text-align: right;
}

#accordion .parent {
	background-color: white;
}

.card-body {
	overflow: scroll;
}

#accordion #accordion-card-two .collapsing {
	position: relative;
	height: 0;
	-webkit-transition-property: height, visibility;
	transition-property: height, visibility;
	-webkit-transition-duration: 0.55s;
	transition-duration: 0.55s;
	-webkit-transition-timing-function: ease;
	transition-timing-function: ease;
}

.card-title{
	color:#323a3d;
}

.list-title{
	color:#185096;
}

.list-group p{
	font-size:10pt;
}

.list-group{
	flex-direction:row;
	flex-wrap:wrap;
	justify-content:center;
}


.list-group-item {
    width:200px;
    display: none;
    border-color:grey;
    background:white;
}


.projects{
	width:100%;
	display: none;
}

.show {
  display: block;
}

.working_groups{
	font-size:10pt;
}

#myBtnContainer .dropdown-menu{
	background: white;
	text-transform:none;
	color:black;
	padding-top:0;
	padding-bottom:0;
}


#myBtnContainer .dropdown-menu a, #myBtnContainer button{
	font-size:10pt;
}

#myBtnContainer{
	background:white;
	text-align:right;
	height:50px;
}

</style>

<body class="home page-template-default page page-id-6 CD2H">
	<jsp:include page="header.jsp" flush="true" />

	<div class="container pl-0 pr-0">
		<br/>
		<div class="container-fluid">

			<h2>CD2H Labs</h2>
			<hr>
			<div class='desc-text'>
				<p> Welcome to CD2H Labs! This is where the National Center for Data to
					Health <b>(CD2H)</b> publishes projects that are currently in
					development. Our purpose is to provide the community with early
					access so everyone can experiment with our tools and contribute
					valuable insights about their design. </p>
			</div>
			<br>

			<div id="accordion" class="accent_card">
				<div class="card">
					<div class="card-header">
						<div class="accordion-head-spacing"></div>
						<div class="accordion-head-text">
							<h5 style="font-weight: 300;"> <i class="fas fa-server"></i> Current Prototypes from our Teams: </h5>
						</div>
						<div class="accordion-head-chevron">
							<a class="card-link" data-toggle="collapse" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne"> 
							<i class="fas fa-chevron-right"></i>
							</a>
						</div>
					</div>
					<div id="collapseOne" class="collapse">
						<div id="myBtnContainer" class="button-filter">
							<button type="button" class="btn btn-light dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   							 	Filter Projects By Community Group
 							</button>
							<div class="dropdown-menu">
	 							<a class="btn dropdown-item" href="#" onclick="filterSelection('all')">Show all</a>
								<a class="btn dropdown-item" href="#" onclick="filterSelection('resource')">Resource Discovery and Development</a>
	<!-- 							<a class="btn" onclick="filterSelection('informatics')">Informatics Maturity & Best Practices</a> -->
	 							<a class="btn dropdown-item" href="#" onclick="filterSelection('next_gen')">Next Generation Data Sharing & Analytics Network</a>
	<!-- 							<a class="btn" onclick="filterSelection('software')">Software & Cloud Infrastructure</a> -->
							 </div>
						</div>
						<div class="card-body parent">
							<div class="row">
								<div class="card projects filter col-md-8">
									<div class="card-body">
										<h5 class="card-title"><br>Overall CD2H Project</h5>
										<div class="list-group">
											<a href="http://labs.cd2h.org/analytics/cd2h/dashboard.jsp" class="list-group-item list-group-item-action filter">
												<div class="d-flex w-100 justify-content-between">
													<h6 class="mb-1 list-title">CD2H Dashboard</h6>
												</div>
												<p>Track of the progress of CD2H Projects on GitHub.</p>
											</a> 
											<a href="http://labs.cd2h.org/analytics/proposals/display.jsp" class="list-group-item list-group-item-action filter">
												<div class="d-flex w-100 justify-content-between">
													<h6 class="mb-1 list-title">Phase 2 Projects</h6>
												</div>
												<p>Visualize the connections between CD2H projects and personnel.</p>
											</a> 
											<a href="http://labs.cd2h.org/analytics/github/repos.jsp?mode=org" class="list-group-item list-group-item-action filter">
												<div class="d-flex w-100 justify-content-between">
													<h6 class="mb-1 list-title">Project Analytics</h6>
												</div>
												<p>Explore details, content, and status of the CD2H projects within GitHub.</p>
											</a>
										</div>
									</div>
								</div>
								<div class="card projects next_gen filter col-md-4">
									<div class="card-body">
										<h5 class="card-title">Next Generation Data Sharing & Analytics Network</h5>
										<div class="list-group">
											<a href="http://labs.cd2h.org/search/facetSearch.jsp" class="list-group-item list-group-item-action next_gen filter">
												<div class="d-flex w-100 justify-content-between">
													<h6 class="mb-1 list-title">Data Discovery Engine</h6>
												</div>
												<p>Explore actionable best-practices to increase the discoverability and reusability of your data!</p>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="card projects resource filter">
									<div class="card-body">
										<h5 class="card-title">Resource Discovery & Development</h5>
										<div class="list-group">
											<a href="http://labs.cd2h.org/search/facetSearch.jsp" class="list-group-item list-group-item-action resource filter">
												<div class="d-flex w-100 justify-content-between">
													<h6 class="mb-1 list-title">CD2H Search</h6>
												</div>
												<p>Search against multiple types and sources across the CTSA consortium (and beyond!).</p>
											</a>
											<a href="http://labs.cd2h.org/analytics/incite/browse.jsp" class="list-group-item list-group-item-action resource filter">
												<div class="d-flex w-100 justify-content-between">
													<h6 class="mb-1 list-title">CTSA Website Search</h6>
												</div>
												<p>Search for people, resources, and keywords across all CTSA Consortium websites.</p>
											</a>
											<a href="http://labs.cd2h.org/acknowledgments" class="list-group-item list-group-item-action resource filter">
												<div class="d-flex w-100 justify-content-between">
													<h6 class="mb-1 list-title">Acknowledgments</h6>
												</div>
												<p>An application supporting search and browsing of the acknowledgments sections of PubMed Central papers</p>
											</a>
											<a href="http://labs.cd2h.org/gitforager/" class="list-group-item list-group-item-action resource filter">
												<div class="d-flex w-100 justify-content-between">
													<h6 class="mb-1 list-title">gitForager</h6>
												</div>
												<p>Search against a curated list of CTSA-relevant GitHub content.</p>
											</a> 
											<a href="http://labs.cd2h.org/viva/" class="list-group-item list-group-item-action resource filter">
												<div class="d-flex w-100 justify-content-between">
													<h6 class="mb-1 list-title">Viva</h6>
												</div>
												<p>An application blending VIVO-compliant data with multiple external content.</p>
											</a>
											<a href="https://cd2h.cielo.wustl.edu/" class="list-group-item list-group-item-action resource filter" >
												<div class="d-flex w-100 justify-content-between">
													<h6 class="mb-1 list-title">CIELO</h6>
												</div>
												<p>An environment built for multi-disciplinary collaboration in health analytics across distributed research activities.</p>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								
							</div>
						</div>
					</div>
				</div>

				<div class="card" id='accordion-card-two'>
					<div class="card-header">
						<div class="accordion-head-spacing"></div>
						<div class="accordion-head-text">
							<h5 style="font-weight: 300;"> <i class="far fa-map"></i> CD2H Project Map: </h5>
						</div>
						<div class="accordion-head-chevron">
							<a class="card-link" data-toggle="collapse" href="#collapseTwo"
								aria-expanded="false" aria-controls="collapseTwo"> <i class="fas fa-chevron-right"></i>
							</a>
						</div>
					</div>
					<div id="collapseTwo" class="collapse">
						<div class="card-body parent">
							<p>Click on any of the project boxes to navigate to their respective GitHub pages.</p>
							<jsp:include page="image_map.jsp" flush="true" />
						</div>
					</div>
				</div>

			</div>
		</div>

		<jsp:include page="footer.jsp" flush="true" />

		<script>
			$('.collapse').on('show.bs.collapse',function(e) {
				$(e.target).siblings('.card-header').children('.accordion-head-chevron').find('i').removeClass().addClass('fas fa-chevron-down');
			});

			$('.collapse').on('hide.bs.collapse',function(e) {
				$(e.target).siblings('.card-header').find('.accordion-head-chevron').find('i').removeClass().addClass('fas fa-chevron-right');
			});
			
			// filter by working group (from w3school)
			filterSelection("all")
			function filterSelection(c) {
			  var x, i;
			  x = document.getElementsByClassName("filter");
			  if (c == "all") c = "";
			  // Add the "show" class (display:block) to the filtered elements, and remove the "show" class from the elements that are not selected
			  for (i = 0; i < x.length; i++) {
			    w3RemoveClass(x[i], "show");
			    if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
			  }
			}

			// Show filtered elements
			function w3AddClass(element, name) {
			  var i, arr1, arr2;
			  arr1 = element.className.split(" ");
			  arr2 = name.split(" ");
			  for (i = 0; i < arr2.length; i++) {
			    if (arr1.indexOf(arr2[i]) == -1) {
			      element.className += " " + arr2[i];
			    }
			  }
			}

			// Hide elements that are not selected
			function w3RemoveClass(element, name) {
			  var i, arr1, arr2;
			  arr1 = element.className.split(" ");
			  arr2 = name.split(" ");
			  for (i = 0; i < arr2.length; i++) {
			    while (arr1.indexOf(arr2[i]) > -1) {
			      arr1.splice(arr1.indexOf(arr2[i]), 1); 
			    }
			  }
			  element.className = arr1.join(" ");
			}
		</script>
</body>

</html>
