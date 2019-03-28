<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="scale">0.5</c:set>
<c:set var="onload_image">"this.width*=${scale}";this.onload=null;"</c:set>

<div id="map_container" style="text-align:center;">
<img id="project_map" src="<util:applicationRoot/>/images/idtf_map.png" onload=${onload_image} usemap="#image-map">

<map name="image-map">
    <area target="" alt="scits-platform" title="scits-platform" href="https://github.com/data2health/scits-platform" coords="${233*scale},${577*scale},${583*scale},${685*scale}" shape="rect">
    <area target="" alt="menrva" title="menrva" href="https://github.com/data2health/menRva" coords="${235*scale},${705*scale},${581*scale},${814*scale}" shape="rect">
    <area target="" alt="edu-harmonization" title="edu-harmonization" href="https://github.com/data2health/edu-harmonization" coords="${235*scale},${863*scale},${577*scale},${971*scale}" shape="rect">
    <area target="" alt="architecting_attribution" title="architecting_attribution" href="https://github.com/data2health/architecting_attribution" coords="${237*scale},${1017*scale},${579*scale},${1116*scale}" shape="rect">
    <area target="" alt="CTS-Personas" title="CTS-Personas" href="https://github.com/data2health/CTS-Personas" coords="${235*scale},${1128*scale},${581*scale},${1225*scale}" shape="rect">
    <area target="" alt="clinical-adaptor" title="clinical-adaptor" href="https://github.com/data2health/clinical-adaptor" coords="${606*scale},${705*scale},${950*scale},${821*scale}" shape="rect">
    <area target="" alt="nlp-review" title="nlp-review" href="https://github.com/data2health/nlp-review" coords="${604*scale},${865*scale},${950*scale},${971*scale}" shape="rect">
    <area target="" alt="maturity-model" title="maturity-model" href="https://github.com/data2health/maturity-model" coords="${604*scale},${1010*scale},${950*scale},${1118*scale}" shape="rect">
    <area target="" alt="biodataclubkit" title="biodataclubkit" href="https://github.com/data2health/biodataclubkit" coords="${604*scale},${1130*scale},${950*scale},${1234*scale}" shape="rect">
    <area target="" alt="data-harmonization" title="data-harmonization" href="https://github.com/data2health/data-harmonization" coords="${964*scale},${572*scale},${1286*scale},${680*scale}" shape="rect">
    <area target="" alt="ehr2HPO.prj" title="ehr2HPO.prj" href="https://github.com/data2health/ehr2HPO.prj" coords="${966*scale},${705*scale},${1287*scale},${814*scale}" shape="rect">
    <area target="" alt="DREAM-Challenge" title="DREAM-Challenge" href="https://github.com/data2health/DREAM-Challenge" coords="${964*scale},${865*scale},${1282*scale},${968*scale}" shape="rect">
    <area target="" alt="governance-pathways" title="governance-pathways" href="https://github.com/data2health/governance-pathways" coords="${962*scale},${1017*scale},${1284*scale},${1123*scale}" shape="rect">
    <area target="" alt="rdp-portal" title="rdp-portal" href="https://github.com/data2health/rdp-portal" coords="${962*scale},${1135*scale},${1284*scale},${1233*scale}" shape="rect">
    <area target="" alt="leaf-edw" title="leaf-edw" href="https://github.com/data2health/leaf-edw" coords="${1300*scale},${577*scale},${1701*scale},${683*scale}" shape="rect">
    <area target="" alt="data-quality" title="data-quality" href="https://github.com/data2health/data-quality" coords="${1298*scale},${705*scale},${1699*scale},${819*scale}" shape="rect">
    <area target="" alt="cloud-sharing" title="cloud-sharing" href="https://github.com/data2health/cloud-sharing" coords="${1300*scale},${865*scale},${1699*scale},${973*scale}" shape="rect">
    <area target="" alt="sparc-cloud" title="sparc-cloud" href="https://github.com/data2health/sparc-cloud" coords="${1314*scale},${1015*scale},${1701*scale},${1123*scale}" shape="rect">
    <area target="" alt="competitions-project" title="competitions-project" href="https://github.com/data2health/competitions-project" coords="${1314*scale},${1132*scale},${1699*scale},${1241*scale}" shape="rect">
    <area target="" alt="cd2hpm" title="cd2hpm" href="https://github.com/topics/cd2hpm" coords="${134*scale},${784*scale},${189*scale},${1026*scale}" shape="rect">
    <area target="" alt="data2health" title="data2health" href="https://github.com/data2health" coords="${233*scale},${132*scale},${1704*scale},${268*scale}" shape="rect">
<%--     <area target="" alt="resource_discovery" title="resource_discovery" href="" coords="${235*scale},${277*scale},${583*scale},${553*scale}" shape="rect"> --%>
<%--     <area target="" alt="informatics" title="informatics" href="" coords="${606*scale},${274*scale},${950*scale},${553*scale}" shape="rect"> --%>
<%--     <area target="" alt="next_gen" title="next_gen" href="" coords="${966*scale},${275*scale},${1286*scale},${551*scale}" shape="rect"> --%>
<%--     <area target="" alt="software" title="software" href="" coords="${1300*scale},${277*scale},${1699*scale},${553*scale}" shape="rect"> --%>
<%--     <area target="" alt="data_standards" title="data_standards" href="" coords="${1715*scale},${572*scale},${1971*scale},${825*scale}" shape="rect"> --%>
<%--     <area target="" alt="soft_tools_alg" title="soft_tools_alg" href="" coords="${1718*scale},${837*scale},${1971*scale},${991*scale}" shape="rect"> --%>
<%--     <area target="" alt="people" title="people" href="" coords="${1722*scale},${1008*scale},${1973*scale},${1241*scale}" shape="rect"> --%>
<%--     <area target="" alt="community_groups" title="community_groups" href="" coords="${115*scale},${267*scale},${203*scale},${558*scale}" shape="rect"> --%>
<%--     <area target="" alt="sus_p2" title="sus_p2" href="" coords="${604*scale},${1256*scale},${931*scale},${1328*scale}" shape="rect"> --%>
<%--     <area target="" alt="text" title="text" href="" coords="${977*scale},${1256*scale},${1271*scale},${1330*scale}" shape="rect"> --%>
<%--     <area target="" alt="data_warehouse" title="data_warehouse" href="" coords="${1310*scale},${1254*scale},${1688*scale},${1335*scale}" shape="rect"> --%>
<%--     <area target="" alt="id2f" title="id2f" href="" coords="${25*scale},${1250*scale},${219*scale},${1338*scale}" shape="rect"> --%>
</map>
</div>