<html xmlns:py="http://genshi.edgewall.org/" py:strip="">

<!--! Main menu bar -->

   <ul id="links">
   <py:for each="item in menu">
     <li py:attrs="item['class']"><a href="${item.link}">${item.title}</a></li>
   </py:for>
   </ul>
</html>
