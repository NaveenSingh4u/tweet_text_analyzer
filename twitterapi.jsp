<%@include file="/jsp/soap_header.jsp" %>
<%@ include file="\jsp\link.jsp" %>  
<%@include file="/jsp/logout.jsp" %>    
<%@ include file="\jsp\session.jsp" %>              
<html>
<body bgcolor="pink">                                 
<center>

<p>For operations,we need token key and access key</p></br>
</br>
Click here for generation of key and access token : <a href='https://dev.twitter.com/' " /><button>Genarate</button>
</br>
Click here for managing the application : <a href='https://apps.twitter.com/' " />  <button>Manage</button>
</br>
Click here for downloading tweets from your twitter timeline : <a href='http://www.tweetdownload.net' " />  <button>Go</button>
</br>
Click here for downloading tweet from our application: <a href="getdata.jsp" />  <button>Go</button>
</br>
</br>
Click here for knowing the sentment: <a href="readfile.jsp" />  <button>Go</button>
</br>
</center>
</body> 
<%@include file="/jsp/soap_footer.jsp" %>   
          </html>