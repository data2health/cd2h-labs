<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>


<!DOCTYPE html>
<html lang="en-US">
<jsp:include page="head.jsp" flush="true">
    <jsp:param name="title" value="CD2H Analytics" />
</jsp:include>
<style type="text/css" media="all">
@import "resources/layout.css";
</style>

<body class="home page-template-default page page-id-6 CD2H">
    <jsp:include page="header.jsp" flush="true" />

    <div class="container pl-0 pr-0">
        <br /> <br /> <br /> <br /> <br />
        <div class="container-fluid">

            <h1>CD2H Labs</h1>
            <hr>
            <p>Welcome to CD2H Labs! Current prototypes from our teams include the 
            following.</p>
            <h3>Resource Discovery & Development</h3>
            <ol class="bulletedList">
             <li><a href="http://labs.cd2h.org/analytics/cd2h/dashboard.jsp">CD2H Project Dashboard</a>
             <li><a href="http://labs.cd2h.org/analytics/proposals/display.jsp">Visualizing</a> CD2H phase 2 projects
             <li><a href="http://labs.cd2h.org/analytics/github/repos.jsp?mode=org">Project analytics</a>, details regarding status of CD2H projects
             <li><a href="http://labs.cd2h.org/search/facetSearch.jsp">Faceted search</a> against multiple types and sources
             <li><a href="http://labs.cd2h.org/gitforager/">gitForager</a>, search against a curated list of CTSA-relevant GitHub content
             <li><a href="http://labs.cd2h.org/viva/">Viva</a>, an application blending VIVO-compliant data with multiple external content
            </ol>
        </div>
        <jsp:include page="footer.jsp" flush="true" />
</body>

</html>
