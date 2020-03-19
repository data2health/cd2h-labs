<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html>
<html lang="en-US">
<jsp:include page="../head.jsp" flush="true">
	<jsp:param name="title" value="SciTS API" />
</jsp:include>
<style type="text/css" media="all">
@import "../resources/layout.css";
</style>

<body class="home page-template-default page page-id-6 CD2H">
	<jsp:include page="../header.jsp" flush="true" />
	<div class="container pl-0 pr-0">
		<br /> <br />
		<div class="container-fluid">

			<h2>Existing queries:</h2>
			<ul>
				<li><a href="publications.jsp?query=coronavirus">coronavirus</a>
				<li><a href="publications.jsp?query=inosine">Inosine</a>
				<li><a href="publications.jsp?query=inonine_pranobex">Inosine pranobex</a>
                <li><a href="publications.jsp?query=inonine_pranobex_sans_mesh">Inosine pranobex sans MeSH mentions</a>
				<li><a href="publications.jsp?query=inosine_x_coronavirus">Inosine crossed with coronavirus</a>
				<li>Inosine pranobex crossed with coronovirus has no matches
                <li><a href="publications.jsp?query=iad_sans_ip">inosine acedoben dimepranol and not Inosine pranobex</a>
                <li><a href="publications.jsp?query=isoprinosine_sans_ip">isoprinosine and not Inosine pranobex</a>
                <li><a href="publications.jsp?query=methisoprinol_sans_ip">methisoprinol and not Inosine pranobex</a>
			</ul>
			<br/>
			<p>Please submit query requests to <a href="mailto:david-eichmann@uiowa.edu">Dave Eichmann</a></p>
            <br/>

			<c:choose>
				<c:when test="${param.query == 'coronavirus'}">
					<sql:query var="query" dataSource="jdbc/cd2h_tools">
                        select pmid,year,article_title from covid.article natural join covid.coronavirus order by year desc;
                    </sql:query>
				</c:when>
				<c:when test="${param.query == 'inosine'}">
					<sql:query var="query" dataSource="jdbc/cd2h_tools">
                        select pmid,year,article_title from covid.article natural join covid.inosine order by year desc;
                    </sql:query>
				</c:when>
				<c:when test="${param.query == 'inonine_pranobex'}">
					<sql:query var="query" dataSource="jdbc/cd2h_tools">
                        select pmid,year,article_title from covid.article natural join covid.inosine_pranobex order by year desc;
                    </sql:query>
				</c:when>
                <c:when test="${param.query == 'inonine_pranobex_sans_mesh'}">
                    <sql:query var="query" dataSource="jdbc/cd2h_tools">
                        select pmid,year,article_title from covid.article natural join covid.inosine_pranobex_sans_mesh order by year desc;
                    </sql:query>
                </c:when>
				<c:when test="${param.query == 'inosine_x_coronavirus'}">
					<sql:query var="query" dataSource="jdbc/cd2h_tools">
                        select pmid,year,article_title from covid.article natural join covid.inosine natural join covid.coronavirus  order by year desc;
                    </sql:query>
				</c:when>
                <c:when test="${param.query == 'iad_sans_ip'}">
                    <sql:query var="query" dataSource="jdbc/cd2h_tools">
                       select pmid,year,article_title from covid.article natural join covid.inosine_acedoben_dimepranol  where inosine_acedoben_dimepranol.pmid not in (select pmid from covid.inosine_pranobex) order by year desc;
                    </sql:query>
                </c:when>
                <c:when test="${param.query == 'isoprinosine_sans_ip'}">
                    <sql:query var="query" dataSource="jdbc/cd2h_tools">
                       select pmid,year,article_title from covid.article natural join covid.isoprinosine  where isoprinosine.pmid not in (select pmid from covid.inosine_pranobex) order by year desc;
                    </sql:query>
                </c:when>
                <c:when test="${param.query == 'methisoprinol_sans_ip'}">
                    <sql:query var="query" dataSource="jdbc/cd2h_tools">
                        select pmid,year,article_title from covid.article natural join covid.methisoprinol  where methisoprinol.pmid not in (select pmid from covid.inosine_pranobex) order by year desc;
                    </sql:query>
                </c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>

			<c:choose>
				<c:when test="${not empty param.query}">
					<h2>Query Results: ${param.query}</h2>
					<table>
						<tr>
							<th>PMID</th>
							<th>Year</th>
							<th>Title</th>
						</tr>
						<c:forEach items="${query.rows}" var="row" varStatus="rowCounter">
							<tr>
								<td align=right><a href="https://www.ncbi.nlm.nih.gov/pubmed/${row.pmid}">${row.pmid}</a></td>
								<td>${row.year}</td>
								<td>${row.article_title}</td>
							</tr>
						</c:forEach>
					</table>
				</c:when>
				<c:otherwise>
					<p>Please select a query option.</p>
				</c:otherwise>
			</c:choose>
			<jsp:include page="/footer.jsp" flush="true" /></div>
	</div>
</body>
</html>

