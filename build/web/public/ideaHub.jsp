<%@page import="classes.IdeaHub"%>
<%@page import="classes.Core"%>
    <%@page import="java.sql.ResultSet"%>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
            <jsp:include page="../includes/layout/headerSite.jsp">
                <jsp:param name="title" value="IdeaHub | SL EVENTS" />
            </jsp:include>

            
            <% 
               
                if(session.getAttribute("auth") == null ){
                   RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                   rd.forward(request, response);
        }
                if(!(Boolean)session.getAttribute("auth")){
    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                   rd.forward(request, response);
}
                
                %>
  <jsp:include page="../includes/layout/nav.jsp" />

<section class="engine"><a href="#">website templates</a></section><section class="timeline1 cid-qXpQvA5hnI" id="timeline1-v">

    
    
    

    <div class="container align-center">
        <h2 class="mbr-section-title pb-3 mbr-fonts-style display-2">
            IdeaHub
        </h2>
        <h3 class="mbr-section-subtitle pb-5 mbr-fonts-style display-5">
            Welcome to IdeaHub
        </h3>

        <div class="container timelines-container" mbri-timelines="">
            
            <%
        IdeaHub ih = new IdeaHub();
        ResultSet rs = ih.getIdeaDetails();
        while(rs.next()){
        
        %>
            
        <a href="ideaHubOne.jsp?id=<%= rs.getInt("ideaID") %>">
            <div class="row timeline-element reverse separline">
                <div class="timeline-date-panel col-xs-12 col-md-6  align-left">
                    <div class="time-line-date-content">
                       <p class="mbr-timeline-date mbr-fonts-style display-5">
                           <% out.println(rs.getString("date")); %>
                        </p>
                    </div>
                </div>
                <span class="iconBackground"></span>
                <div class="col-xs-12 col-md-6 align-right">
                    <div class="timeline-text-content">
                        <h4 class="mbr-timeline-title pb-3 mbr-fonts-style display-5">
                            <% out.println(rs.getString("ideaTitle")); %>
                        </h4>
                        <p class="mbr-timeline-text mbr-fonts-style display-7">
                            <% out.println(rs.getString("ideaDesc")); %>
                        </p>
                    </div>
                </div>
            </div>
            </a>
                        
                        <% 
                            
                if(rs.next()){ %>
            
                        <a href="ideaHubOne.jsp?id=<%= rs.getInt("ideaID") %>">
            <div class="row timeline-element">
                <div class="timeline-date-panel col-xs-12 col-md-6 align-right">
                    <div class="time-line-date-content">
                        <p class="mbr-timeline-date mbr-fonts-style display-5">
                           <% out.println(rs.getString("date")); %>
                        </p>
                    </div>
                </div>
                <span class="iconBackground"></span>
                <div class="col-xs-12 col-md-6 align-left ">
                    <div class="timeline-text-content">
                        <h4 class="mbr-timeline-title pb-3 mbr-fonts-style display-5">
                            <% out.println(rs.getString("ideaTitle")); %>
                        </h4>
                        <p class="mbr-timeline-text mbr-fonts-style display-7">
                            <% out.println(rs.getString("ideaDesc")); %>
                        </p>
                    </div>
                </div>
            </div>
                        </a>
                        <% 
                            
                } %>
            
        
        <%
            }
            %>
            
            
        </div>
    </div>
</section>


<jsp:include page="../includes/layout/footer.jsp" />