<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- Output method as HTML -->
	<xsl:output method="html" indent="yes"/>
	<!-- Template to match the root element -->
	<xsl:template match="/library">
		<html>
			<head>
				<title>Library Book List</title>
				<style>table {
                    width: 100%;
                    border-collapse: collapse;
                }
                table, th, td {
                    border: 1px solid black;
                }
                th, td {
                    padding: 8px;
                    text-align: left;
                }
                th {
                    background-color: #f2f2f2;
                }</style>
			</head>
			<body>
				<h2>Library Book List</h2>
				<table>
					<thead>
						<tr>
							<th>Title</th>
							<th>Author</th>
							<th>Year</th>
							<th>Price</th>
						</tr>
					</thead>
					<tbody>
						<xsl:for-each select="book">
							<tr>
								<td>
									<xsl:value-of select="title"/>
								</td>
								<td>
									<xsl:value-of select="author"/>
								</td>
								<td>
									<xsl:value-of select="year"/>
								</td>
								<td>
									<xsl:value-of select="price"/>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>