<?xml version="1.0" encoding="utf-8"?>
<?xml-stylesheet type="text/css" href="http://www.phpmyadmin.net/home_page/css/feed.css"?>
<rss version="2.0" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:admin="http://webns.net/mvcb/" xmlns:atom="http://www.w3.org/2005/Atom" xmlns:py="http://genshi.edgewall.org/">
<channel>
<atom:link href="${rss_security}" rel="self" type="application/rss+xml" />
<title>phpMyAdmin security announcements</title>
<link>http://www.phpmyadmin.net/security/</link>
<description>phpMyAdmin security announcements</description>
<dc:language>en-us</dc:language>
<dc:creator>phpMyAdmin devel team</dc:creator>
<dc:date>${generated.w3cdtf()}</dc:date>
<admin:generatorAgent rdf:resource="${server}" />

<item  py:for="issue in topissues">
<guid>${issue.fulllink}</guid>
<link>${issue.fulllink}</link>
<title>${issue.name}</title>
<dc:date>${issue.date.w3cdtf()}</dc:date>
<dc:creator>phpMyAdmin devel team</dc:creator>
<dc:subject>phpMyAdmin security</dc:subject>
<description>
<!--! Just a way to make py:for work inside CDATA -->
    <div py:def="foo()">
        <p py:for="cve in issue.cves"><a href="http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=${cve}">${cve}</a></p>
    </div>
<![CDATA[
<p>${issue.summary}</p>

<h3>Affected Versions</h3>
<p>${issue.versions}</p>

<h3>CVE ID</h3>
${foo()}
]]>
</description>
</item>
</channel>
</rss>
