<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>
<%@ taglib prefix="json" uri="http://labs.cd2h.org/JSONTagLib"%>

<style type="text/css" media="all">
body {
    font-size: 84%;
    font-family: Arial,Helvetica,sans-serif;
    color: #000;
    margin: 0;
    padding: 0;
    line-height: 1.5em;
}
</style>

<c:set var="fields" value=""/>
<table border="1" cellpadding="10" >
<json:object sourceURL="${param.url}">
    <tr>
    <json:array label="headers">
        <json:object>
            <th><json:data label="label"/></th>
            <c:set var="fields">${fields}|<json:data label="field"/></c:set>
        </json:object>
    </json:array>
    </tr>
    <json:array label="data">
        <json:object>
            <tr>
            <c:forTokens items="${fields}" delims="|" var="field">
                <td><json:data label="${field}"/></td>
            </c:forTokens>
            </tr>
        </json:object>
    </json:array>
</json:object>
</table>
