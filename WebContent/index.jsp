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

.index-icon{
    text-align:center;
    color:grey;
    opacity: 0.7;
}
</style>

<body class="home page-template-default page page-id-6 CD2H">
    <jsp:include page="header.jsp" flush="true" />

	<div class="container pl-0 pr-0">
		<div class="container-fluid mt-4">
			<h1>CD2H Labs</h1>
			<hr>
			<p>
				Welcome to CD2H Labs! This is where the National Center for Data to
				Health (CD2H) shows off what its various teams are working on. Our
				purpose is to provide you early access to experiment with and
				comment on our current projects. Most of these projects reside in
				our <a href="https://github.com/data2health">data2health GitHub organization</a>.
			</p>
			<h4 style="text-align: center; font-weight: 400;">
				<i style="color: #6ba097;" class="fas fa-server"></i> Current Prototypes from Our Teams Include:
			</h4>
			<br>
			<div class="row">
				<div class="col-sm-6">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Overall CD2H Project</h5>
							<ul class="list-group">
								<li><a href="http://labs.cd2h.org/analytics/cd2h/dashboard.jsp">CD2H Project Dashboard</a>: Track the progress of CD2H Projects on GitHub</li>
								<li><a href="http://labs.cd2h.org/analytics/proposals/display.jsp">Phase 2 Projects</a>: Visualize the connections between CD2H projects and personnel</li>
								<li><a href="http://labs.cd2h.org/analytics/github/repos.jsp?mode=org">Project analytics</a>: Explore details regarding the status of CD2H projects</li>
							</ul>
						</div>
					</div>
					<div class="card mt-4">
						<div class="card-body">
							<h5 class="card-title">Next Generation Data Sharing & Analytics Network</h5>
							<ul class="list-group">
								<li><a href="http://discovery.biothings.io">Data Discovery Engine</a>: Explore actionable best practices to increase the discoverability and reusability of your data!</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Resource Discovery & Development</h5>
							<ul class="list-group">
								<li><a href="http://labs.cd2h.org/search/facetSearch.jsp">CD2H Search</a>: Search against multiple types and sources across the CTSA consortium (and beyond!)</li>
								<li><a href="http://labs.cd2h.org/analytics/incite/browse.jsp">CTSA Website Search</a>: Explore the CTSA Consortium web</li>
								<li><a href="http://labs.cd2h.org/acknowledgments">acknowledgments</a>: An application supporting search and browsing of the acknowledgments sections of PubMed Central papers</li>
								<li><a href="http://labs.cd2h.org/gitforager/">gitForager</a>: Search against a curated list of CTSA-relevant GitHub content</li>
								<li><a href="http://labs.cd2h.org/viva/">viva</a>: An application blending VIVO-compliant data with multiple external content</li>
                                <li><a href="https://cd2h.cielo.wustl.edu">CIELO</a>, a collaborative tool that enables health researchers, data scientists,
                                policy analysts, and citizen scientists to share software and data and connect with peers, colleagues and specialists to improve
                                the timeliness, efficiency and transparency of data analysis</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" flush="true" />
</body>

</html>
