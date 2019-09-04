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
@import "resources/index.css";

input[type="radio"][disabled] {
	display: none;
}

.ml5 {
	position: relative;
	line-height: 0vh;
	font-size: 24pt;
}

.ml5 .text-wrapper {
	display: inline-block;
	padding-top: 0.60em;
	padding-right: 0.05em;
	padding-bottom: 0.50em;
}


.ml5 .line {
	position: absolute;
	left: 0;
	margin: auto;
	height: 1px;
	width: 100%;
	background-color: #c9cdd1;
	transform-origin: 0.5 0;
}

.ml5 .letters{
	display: inline-block;
	opacity: 0;
	margin-top: 10pt;
	margin-bottom: -10pt;
	font-size: .9em;
}

.ml5 .icon{
 	display: inline-block;
	font-size: 14pt;
	opacity: 0.0;
	color: #286c91;
	font-family: 'Libre Caslon Display', serif;
}

#tagline-one, #tagline-two, #tagline-three {
	position:absolute;  
	z-index:1; 
	padding-left:10px;  
	bottom: 11px;
}

.card-horizontal {
    display: flex;
    flex: 1 1 auto;
}

.memo-case{
	margin-left: 0px;
	margin-right: 0px;
}

.memo{
	background: none; 
	margin-top: 30px; 
	max-width: 50%;
}

@media (max-width: 768px){

	.memo{
	min-width:100%;
	margin: 0;
	}
	
	.memo-case{
	margin-top: 5%;
	}
}
</style>
<script src="resources/anime.min.js"></script>

<body class="home page-template-default page page-id-6 CD2H">
	<jsp:include page="header.jsp" flush="true" />
	
	<div class="container pl-0 pr-0 pt-0">
		<div class="container-fluid">
		
		<img src="images/header.jpg" class="img-fluid" alt="Responsive image">
		
			<h2 class="ml5">
  			<span class="text-wrapper" style="white-space: nowrap;">
   				<span class="line line1" style="white-space: nowrap;"></span>
    				<span class="letters letters-left">CD2H</span>
    				<span class="letters letters-right">Labs</span>
    				<span id="tagline-one" class="icon letters-one">Innovate.</span>
    				<span id="tagline-two" class="icon letters-two">Create.</span>
    				<span id="tagline-three" class="icon letters-three">Distribute.</span>
    			<span class="line line2"></span>
  			</span>
			</h2>
			<br>
			
			<div class='desc-text pb-3'>
				<p> Welcome to CD2H Labs! This is where the National Center for Data to
					Health <b>(CD2H)</b> publishes projects that are currently in
					development. Our purpose is to provide the community with early
					access so everyone can experiment with our tools and contribute
					valuable insights about their design. </p>
			</div>
			
			<div id="accordion" class="accent_card">
				<div class="card small-space">
					<div class="card-header">
						<div class="accordion-head-spacing"></div>
						<div class="accordion-head-text">
							<h5 style="font-weight: 300;"> <i class="fas fa-server"></i> Current Prototypes from our Teams and our Collaborators: </h5>
						</div>
						<div class="accordion-head-chevron">
							<a class="card-link" data-toggle="collapse" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne"> 
							<i class="fas fa-chevron-right"></i>
							</a>
						</div>
					</div>
					
					<div id="collapseOne" class="collapse">
						<div id="filter_container" class="button-filter">
							<button type="button" class="btn btn-light dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   							 	Filter Projects
 							</button>
							<div class="dropdown-menu">
								<div class="row">
									<sql:query var="filter_types" dataSource="jdbc/cd2h_tools">
	        							select distinct(filter_type) as filter_type
	        							from cd2h_tools.tags;
	    							</sql:query>
	    							<c:forEach items="${filter_types.rows}" var="filt">
	    								<div class="col-md-4 filter_type pl-4"> 
	    									<b>By ${filt.filter_type}</b> <br>
	    									<input type="radio" name="${filt.filter_type}" value='' class="filter_rd">  Remove Filter<br>
	    									<sql:query var="filter_vals" dataSource="jdbc/cd2h_tools">
	        									select tag, name
	        									from cd2h_tools.tags
	        									where cd2h_tools.tags.filter_type = '${filt.filter_type}';
	    									</sql:query>
	    									<c:forEach items="${filter_vals.rows}" var="vals">
												<input type="radio" name="${filt.filter_type}" value='${vals.tag}' class="filter_rd">  ${vals.name}<br>
	    									</c:forEach>
	    								</div>
	    							</c:forEach>
								</div>
							</div>
						</div>
						<div class="card-body parent">
							<div class="row">
								<sql:query var="headings" dataSource="jdbc/cd2h_tools" >
	        						select distinct(workgroup_heading), string_agg(distinct(tag), ' ') as tag_list 
									from cd2h_tools.tools 
									join cd2h_tools.tool_tags on cd2h_tools.tools.tool_id = cd2h_tools.tool_tags.tool_id 
									join cd2h_tools.tags on cd2h_tools.tags.tag_id = cd2h_tools.tool_tags.tag_id
									group by 1
									order by 1;
	    						</sql:query>
							    <c:forEach items="${headings.rows}" var="row">
							    	<div class="card projects col-md-12 filter ${row.tag_list}"> 
										<div class="card-body">
											<h5 class="card-title">${row.workgroup_heading}</h5>
											<div class="list-group">
												<sql:query var="tools" dataSource="jdbc/cd2h_tools" >
													select cd2h_tools.tools.name, short_desc, inst_short_name, external, tool_link, copyright, string_agg(tag, ' ') as tag_list
													from cd2h_tools.tools 
													join cd2h_tools.tool_tags on cd2h_tools.tools.tool_id = cd2h_tools.tool_tags.tool_id 
													join cd2h_tools.tags on cd2h_tools.tags.tag_id = cd2h_tools.tool_tags.tag_id
													where cd2h_tools.tools.workgroup_heading = '${row.workgroup_heading}'
													and cd2h_tools.tools.show = TRUE
													Group by cd2h_tools.tools.name, short_desc, inst_short_name, external, tool_link, copyright;
	    										</sql:query>
	    										<c:forEach items="${tools.rows}" var="trow">
	    											<c:set var="meta" value="${trow.copyright}"/>
	    											<c:set var="ext" value=""/>
													<c:if test="${trow.external}">
														<c:set var="ext" value="external"/>
														<c:set var="meta" value="External"/>
													</c:if>
	    											<div class="d-flex flex-column filter ${trow.tag_list}">
															<a href="${trow.tool_link}" class="list-group-item list-group-item-action main-desc resource ${ext} filter ${trow.tag_list}">
																<div class="w-200 h-200 justify-content-between">
																	<h6 class="mb-3 list-title">${trow.name}</h6>
																	<p>${trow.short_desc}</p>
																</div>
															</a>
															<div class="d-flex flex-row w-200 pt-1 pl-1 align-text-bottom justify-content-between metadata no-show">
																<span class="pr-1" style="font-size: 9pt;">
																	<img src="images/edu_logos/${trow.inst_short_name.toLowerCase()}.png" width="auto" height='13' style="vertical-align: text-top;">
																	${trow.inst_short_name}
																</span>
																<span class="pr-4 align-bottom" style="font-size: 8pt;">${meta}</span>
															</div>
													</div>
	    										</c:forEach>
											</div>
										</div>
									</div>
							    </c:forEach>
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
							<p style="text-align: center;">Click on any of the cores or projects to navigate to their respective GitHub pages.</p>
							<jsp:include page="image_map2.jsp" flush="true" />
						</div>
					</div>
				</div>			
			</div>
			
			<div class="row memo-case">
				<div class="card memo">
					<div class="card-horizontal">
		  				<img id='testimg' class="card-img-top" src="images/contact.png" alt="Construction" style="max-width:100px; max-height:100px;">
		  				<div class="card-body">
		    				<p class="card-text" style="font-size: 10pt;"><b>Contact Us!</b> <br>Please leave any feedback on our <a href="https://github.com/data2health/cd2h-labs">Labs GitHub <i class="fab fa-github"></i> Page.</a> We welcome any comments or recommendations!</p>
		  				</div>
					</div>
				</div>
				<div class="card memo">
					<div class="card-horizontal">
		  				<img class="card-img-top" src="images/working.png" alt="Construction" style="max-width:100px; max-height:100px;">
		  				<div class="card-body">
		    				<p class="card-text" style="font-size: 10pt;"><b>Coming Soon!</b> <br>We are currently implementing features to allow the community to directly comment on each individual tool. </p>
		  				</div>
					</div>
				</div>
			</div>
			
			
			<jsp:include page="footer.jsp" flush="true" />
		</div>
	</div>

	<script>
		// toggle chevron icon up and down on accordion /////////////////////////////////////////
		$('.collapse').on('show.bs.collapse',function(e) {
			$(e.target).siblings('.card-header').children('.accordion-head-chevron').find('i').removeClass().addClass('fas fa-chevron-down');
		});

		$('.collapse').on('hide.bs.collapse',function(e) {
			$(e.target).siblings('.card-header').find('.accordion-head-chevron').find('i').removeClass().addClass('fas fa-chevron-right');
		});
		
		// Click function for radio filter //////////////////////////////////////////////////////////////
		$('.filter_rd').change(function(){
			   change_filter($(this));
			})
			
		// Get Filter List from Radio ///////////////////////////////////////////////////////////////////
		var filter_list = [];
		function change_filter(obj){
			filter_list = [];
			$(".filter_type").each(function() {
				$(this).children('input').each(function (){
					if( ($(this).is(':checked')) & ($(this).val() != '')){
						filter_list.push($(this).val());
					}
				})
			})
			filterSelection(filter_list, obj);
		};
		
		
 		// show&hide tiles (mostly from w3school)  ////////////////////////////////////////////////////////// 		
 		var showall = [];
 		filterSelection(showall, null); // show all tiles on inital page load
 		
		function filterSelection(c, obj) {
		  var x, i;
		  x = document.getElementsByClassName("filter");
		  for (i = 0; i < x.length; i++) {
		    w3RemoveClass(x[i], "show");
		    w3AddClass(x[i], "hide"); // need this b/c using bootstrap flex layout 
		    var should_show = 0;
		    for (v in c){
		    	if (x[i].className.indexOf(c[v]) > -1){should_show += 1};
		    }
		    if (should_show == c.length){
		    	w3AddClass(x[i], "show");
		    	w3RemoveClass(x[i], "hide");
		    }
		  }
		  if (obj){
		  	toggle_filt(obj);
		  };
		};
		
		// Get Filterable Values and update radio /////////////////////////////////////////////////////
		function toggle_filt(obj){
			
			var filt_vals = [];
			$(".show").each(function() {
				var classes = $(this).attr('class').split(' ');
				for (i in classes) {
					if (filt_vals.indexOf(classes[i]) == -1){
						filt_vals.push(classes[i]);
					}
				}
			});
			$(obj).parent().siblings().children('input').each(function() {
				$(this).attr('disabled',false);
				if ((filt_vals.indexOf($(this).val()) == -1) & ($(this).val() != '')){
					$(this).attr('disabled',true);
				}
			});
			if ($(obj).val() == ''){	// this means it is a 'remove filter' input type 
				// note this currently only works for one sibling. If we add more tag categories will need to edit 
				check = $(obj).parent().siblings().children('input:checked');
				if (check.val()){
					$(obj).parent().siblings().children('input').each(function(){
						$(this).attr('disabled', false);
					});
					toggle_filt(check);
				}else{
					$('input').each(function(){
						$(this).attr('disabled', false);
					});
				} 
			};
		};

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
		};

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
		
		// Show metadata on project hover //////////////////////////////////////////////////////
		jQuery(document).ready(function() {
		    jQuery('.main-desc').mouseover(function() {
		        jQuery(this).siblings('.metadata').removeClass('no-show');
		    }).mouseout(function() {
		        jQuery(this).siblings('.metadata').addClass('no-show');
		    });
		});
		
		// Text animate  ///////////////////////////////////////////////////////////////////////
		anime.timeline({loop: false})
			.add({
				targets : '.ml5 .line',
				opacity : [ 0.5, 1 ],
				scaleX : [ 0, 1 ],
				easing : "easeInOutExpo",
				duration : 700
			}).add({
				targets : '.ml5 .line',
				duration : 600,
				easing : "easeOutExpo",
				translateY : function(e, i, l) {
					var offset = 0;
					if (i==0){
						offset = -19;
					}else{
						offset = 30;
					};
					return offset + "px";}
			}).add({
				targets : '.ml5 .letters-left',
				opacity : [ 0, 1 ],
				translateX : [ "1em", 0 ],
				easing : "easeOutExpo",
				duration : 600,
				offset : '-=300', 
			}).add({
				targets : '.ml5 .letters-right',
				opacity : [ 0, 1 ],
				translateX : [ "-0.3em", 0 ],
				easing : "easeOutExpo",
				duration : 600,
				offset : '-=600',
			}).add({
				targets : '.ml5 .letters-one',
				opacity : [ 0, 1 ],
				easing : "easeInOutQuad",
				duration : 600,
				offset : '-=600',
			}).add({
			    targets: '.ml5 .letters-one',
			    opacity: 0,
			    duration: 1000,
			    easing: "easeOutExpo",
			    delay: 1000
			}).add({
				targets : '.ml5 .letters-two',
				opacity : [ 0, 1 ],
				easing : "easeInOutQuad",
				duration : 600,
				offset : '-=600',
			}).add({
			    targets: '.ml5 .letters-two',
			    opacity: 0,
			    duration: 1000,
			    easing: "easeOutExpo",
			    delay: 1000
			}).add({
				targets : '.ml5 .letters-three',
				opacity : [ 0, 1 ],
				easing : "easeInOutQuad",
				duration : 600,
				offset : '-=600'
			}).add({
			    targets: '.ml5 .letters-three',
			    opacity: 0,
			    duration: 1000,
			    easing: "easeOutExpo",
			    delay: 1000
			});
		
	</script>
</body>

</html>
