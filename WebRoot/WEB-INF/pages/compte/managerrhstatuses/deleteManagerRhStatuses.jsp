<%@page language="java" isELIgnored="false" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:directive.include file="/WEB-INF/sitemesh-decorators/include.jsp"/>
<fmt:setBundle basename="bundles.compte-resources"/>
<html>
<head>
<title>View <fmt:message key="compte.title"/> <fmt:message key="managerrhstatus.title"/></title>
</head>
<body>
<div id="contentarea">      
	<div id="lb"><div id="rb"><div id="bb"><div id="blc">
	<div id="brc"><div id="tb"><div id="tlc"><div id="trc">
		<div id="content">
			<h1><fmt:message key="navigation.view"/> <fmt:message key="managerrhstatus.title"/></h1>
			<div class="navitem"><a class="button" href="${pageContext.request.contextPath}/selectCompte?idKey=${compte_id}&"><span><img src="images/icons/back.gif" /><fmt:message key="navigation.back"/></span></a></div>
			<table cellpadding="0" cellspacing="0" id="viewTable">
				<tbody>
					<tr>
						<td class="label" valign="top">
							<fmt:message key="managerrhstatus.id.title"/>:
						</td>
						<td>
							${managerrhstatus.id}
						&nbsp;
						</td>
					</tr>
					<tr>
						<td class="label" valign="top">
							<fmt:message key="managerrhstatus.collaborateur.title"/>:
						</td>
						<td>
							${managerrhstatus.collaborateur}
						&nbsp;
						</td>
					</tr>
					<tr>
						<td class="label" valign="top">
							<fmt:message key="managerrhstatus.activation.title"/>:
						</td>
						<td>
							${managerrhstatus.activation}
						&nbsp;
						</td>
					</tr>
				</tbody>
			</table>
			<div class="navitem"><a class="button" href="${pageContext.request.contextPath}/deleteCompteManagerRhStatuses?compte_id=${compte_id}&related_managerrhstatuses_id=${managerrhstatus.id}&"><span><img src="images/icons/delete.gif" /><fmt:message key="navigation.delete"/></span></a></div>
			<div class="clear">&nbsp;</div>
		</div>
	</div></div></div></div>
	</div></div></div></div>
</div>
</body>
</html>
