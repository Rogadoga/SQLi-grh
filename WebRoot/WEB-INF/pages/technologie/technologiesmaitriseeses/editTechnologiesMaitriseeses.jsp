<%@page language="java" isELIgnored="false" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:directive.include file="/WEB-INF/sitemesh-decorators/include.jsp"/>
<fmt:setBundle basename="bundles.technologie-resources"/>
<html>
<head>
<title>Edit <fmt:message key="technologie.title"/> <fmt:message key="technologiesmaitrisees.title"/></title>
</head>
<body>
<div id="contentarea">      
	<div id="lb"><div id="rb"><div id="bb"><div id="blc">
	<div id="brc"><div id="tb"><div id="tlc"><div id="trc">
	<div id="content">
		<h1><fmt:message key="navigation.edit"/> <fmt:message key="technologiesmaitrisees.title"/></h1>
		<div class="navitem"><a class="button" href="${pageContext.request.contextPath}/selectTechnologie?idKey=${technologie_id}&"><span><img src="images/icons/back.gif" /><fmt:message key="navigation.back"/></span></a></div>
		<form:form action="${pageContext.request.contextPath}/saveTechnologieTechnologiesMaitriseeses" method="POST" modelAttribute="technologiesmaitrisees">
			<table cellpadding="0" cellspacing="0" id="viewTable">
				<tbody>
					<tr>
						<td class="label" valign="top">
							<fmt:message key="technologiesmaitrisees.technologiefield.title"/>:
						</td>
						<td>
							<c:choose>
								<c:when test='${newFlag}' >
							<form:input id="technologiesmaitrisees_technologieField" path="technologieField" cssStyle="width:300px;"/>
							<script type="text/javascript">Spring.addDecoration(new Spring.ElementDecoration({elementId : "technologiesmaitrisees_technologieField",widgetType : "dijit.form.NumberTextBox",widgetAttrs : {promptMessage: "<fmt:message key="technologiesmaitrisees.technologiefield.help"/>", constraints : {places:0}}})); </script>
								</c:when>
								<c:otherwise>
							${technologiesmaitrisees.technologieField}
						&nbsp;
									<form:hidden id="technologiesmaitrisees_technologieField" path="technologieField"/>
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
					<tr>
						<td class="label" valign="top">
							<fmt:message key="technologiesmaitrisees.collaborateur.title"/>:
						</td>
						<td>
							<c:choose>
								<c:when test='${newFlag}' >
							<form:input id="technologiesmaitrisees_collaborateur" path="collaborateur" cssStyle="width:300px;"/>
							<script type="text/javascript">Spring.addDecoration(new Spring.ElementDecoration({elementId : "technologiesmaitrisees_collaborateur",widgetType : "dijit.form.NumberTextBox",widgetAttrs : {promptMessage: "<fmt:message key="technologiesmaitrisees.collaborateur.help"/>", constraints : {places:0}}})); </script>
								</c:when>
								<c:otherwise>
							${technologiesmaitrisees.collaborateur}
						&nbsp;
									<form:hidden id="technologiesmaitrisees_collaborateur" path="collaborateur"/>
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
					<tr>
						<td class="label" valign="top">
							<fmt:message key="technologiesmaitrisees.niveauexpertise.title"/>:
						</td>
						<td>
							<form:input id="technologiesmaitrisees_niveauExpertise" path="niveauExpertise" cssStyle="width:300px;"/>
							<script type="text/javascript">Spring.addDecoration(new Spring.ElementDecoration({elementId : "technologiesmaitrisees_niveauExpertise",widgetType : "dijit.form.NumberTextBox",widgetAttrs : {promptMessage: "<fmt:message key="technologiesmaitrisees.niveauexpertise.help"/>", constraints : {places:0}}})); </script>
						</td>
					</tr>
				</tbody>
			</table>
			<span class="inputbutton"><input class="savebutton" id="save" type="submit" value="<fmt:message key="navigation.save"/>"/></span>
			<script type="text/javascript">Spring.addDecoration(new Spring.ValidateAllDecoration({elementId:'save', event:'onclick'}));</script>
				<input type="hidden" name="technologie_id" value="${technologie_id}" >
				
		</form:form>
		<div class="clear">&nbsp;</div>
	</div>
	</div></div></div></div>
	</div></div></div></div>
</div>
</body>
</html>
