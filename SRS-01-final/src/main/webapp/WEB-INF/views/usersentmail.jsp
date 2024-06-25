
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%//@ page import="java.util.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %>
<%@ page import="javax.mail.Authenticator"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
String host = "smtp.gmail.com";
String to =""+session.getAttribute("to");
String pass="ab9815136123";
String from ="ankitbhardwaj924@gmail.com";
String subject =""+session.getAttribute("subject");
String messageText =""+session.getAttribute("msg");
boolean sessionDebug = false;
// Create some properties and get the default Session.
Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol", "smtp");
props.put("mail.smtp.starttls.enable","true"); 

Session mailSession = Session.getDefaultInstance(props, null);

mailSession.setDebug(sessionDebug);

Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
//msg.setSentDate(new java.util.Date());
msg.setText(messageText);

 Transport transport = mailSession.getTransport("smtp");  
        transport.connect(host,"ankitbhardwaj924@gmail.com", "ab9815136123");  
 String s="";
        try   
        {  
            transport.sendMessage(msg, msg.getAllRecipients());
             s= "send";
            out.println("Email sent");     
        }  
        catch (Exception err)   
        {}  
        transport.close();  
out.println("Mail was sent to " + to);
out.println(" from " + from);
out.println(" using host " + host + ".");
if(s.equals("send"))
    {
response.sendRedirect("userpwdotp.jsp");
}
else
{
    response.sendRedirect("MailData.jsp?s='fail'");
}

%>

    </body>
</html>
