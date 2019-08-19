<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="scale">0.4</c:set>
<c:set var="onload_image">"this.width*=${scale}";this.onload=null;"</c:set>

<div id="map_container" style="text-align:center;">
<img id="project_map" src="<util:applicationRoot/>/images/cd2hmap.png" onload=${onload_image} usemap="#image-map">

<map name="image-map">
    <area target="" alt="resource-discovery" title="resource-discovery" href="https://github.com/data2health/resource-discovery" coords="${258*scale},${4*scale},${686*scale},${485*scale}" shape="rect">
    <area target="" alt="informatics-maturity" title="informatics-maturity" href="https://github.com/data2health/informatics-maturity" coords="${702*scale},${4*scale},${1171*scale},${487*scale}" shape="rect">
    <area target="" alt="next-gen-data-sharing" title="next-gen-data-sharing" href="https://github.com/data2health/next-gen-data-sharing" coords="${1181*scale},${2*scale},${1733*scale},${487*scale}" shape="rect">
    <area target="" alt="tools-cloud-infrastructure" title="tools-cloud-infrastructure" href="https://github.com/data2health/tools-cloud-infrastructure" coords="${1741*scale},${0*scale},${2248*scale},${485*scale}" shape="rect">
    <area target="" alt="scits-platform" title="scits-platform" href="https://github.com/data2health/scits-platform" coords="${294*scale},${509*scale},${666*scale},${619*scale}" shape="rect">
    <area target="" alt="InvenioRDM" title="InvenioRDM" href="https://github.com/data2health/InvenioRDM" coords="${298*scale},${670*scale},${660*scale},${780*scale}" shape="rect">
    <area target="" alt="edu-harmonization" title="edu-harmonization" href="https://github.com/data2health/edu-harmonization" coords="${343*scale},${855*scale},${602*scale},${947*scale}" shape="rect">
    <area target="" alt="architecting_attribution" title="architecting_attribution" href="https://github.com/data2health/architecting_attribution" coords="${367*scale},${1048*scale},${582*scale},${1128*scale}" shape="rect">
    <area target="" alt="CTS-Personas" title="CTS-Personas" href="https://github.com/data2health/CTS-Personas" coords="${383*scale},${1172*scale},${562*scale},${1221*scale}" shape="rect">
    <area target="" alt="maturity-model" title="maturity-model" href="https://github.com/data2health/maturity-model" coords="${759*scale},${599*scale},${1131*scale},${718*scale}" shape="rect">
    <area target="" alt="governance-pathways" title="governance-pathways" href="https://github.com/data2health/governance-pathways" coords="${773*scale},${1038*scale},${1114*scale},${1150*scale}" shape="rect">
    <area target="" alt="rdp-portal" title="rdp-portal" href="https://github.com/data2health/rdp-portal" coords="${773*scale},${1170*scale},${1116*scale},${1247*scale}" shape="rect">
    <area target="" alt="data-harmonization" title="data-harmonization" href="https://github.com/data2health/data-harmonization" coords="${1257*scale},${503*scale},${1689*scale},${619*scale}" shape="rect">
    <area target="" alt="HOT-FHIR" title="HOT-FHIR" href="https://github.com/HOT-FHIR" coords="${1297*scale},${674*scale},${1659*scale},${784*scale}" shape="rect">
    <area target="" alt="ehr2HPO.prj" title="ehr2HPO.prj" href="https://github.com/data2health/ehr2HPO.prj" coords="${1255*scale},${845*scale},${1703*scale},${971*scale}" shape="rect">
    <area target="" alt="cloud-sharing" title="cloud-sharing" href="https://github.com/data2health/cloud-sharing" coords="${1766*scale},${507*scale},${2228*scale},${625*scale}" shape="rect">
    <area target="" alt="leaf-edw" title="leaf-edw" href="https://github.com/data2health/leaf-edw" coords="${1790*scale},${664*scale},${2224*scale},${804*scale}" shape="rect">
    <area target="" alt="DREAM-Challenge" title="DREAM-Challenge" href="https://github.com/data2health/DREAM-Challenge" coords="${1822*scale},${837*scale},${2174*scale},${965*scale}" shape="rect">
    <area target="" alt="competitions-project" title="competitions-project" href="https://github.com/data2health/competitions-project" coords="${1822*scale},${1066*scale},${2180*scale},${1201*scale}" shape="rect">
</map>
</div>