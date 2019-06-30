<%@page import="classes.Core"%>
    <%@page import="java.sql.ResultSet"%>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
            <jsp:include page="../includes/layout/headerSite.jsp">
                <jsp:param name="title" value="SL EVENTS" />
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
                


                
                
Core functions = new Core();



%>

                
                    <jsp:include page="../includes/layout/nav.jsp" />

                    <section class="engine"><a href="https://mobirise.me/r">bootstrap template</a></section>

                    <section class="mbr-section content8 cid-qXpPtkCB4z" id="content8-r">



                        <div class="container">
                            <div class="media-container-row title">
                                <div class="col-12 col-md-8">
                                    <div class="mbr-section-btn align-center">
                                       <a class="btn btn-black-outline display-4" href="#" onclick="showCalander();" id="eventBtn">Events</a>
                                        <a class="btn btn-black-outline display-4" href="#" onclick="showCalander();" id="listrBtn">View </a></div>
                                </div>
                            </div>
                        </div>
                    </section>

                    
                    <section class="tabs3 cid-qXpKuOihob features18 popup-btn-cards cid-qXpJxHxTlO" id="tabs3-a">

                        <div class="container">
                            <h2 class="mbr-section-title align-center pb-3 mbr-fonts-style display-2">
                                My Events
                            </h2>
                            <h3 class="mbr-section-subtitle  display-5 align-center mbr-light mbr-fonts-style">
                               Events by category
                            </h3>
                        </div>
                        <div class="container-fluid">
                            <div class="row tabcont">
                                <ul class="nav nav-tabs pt-3 mt-5" role="tablist">

                                    <%
            int count = 0;
            ResultSet rs = functions.getCategoryList();
            while(rs.next()){
                
               
                
                %>
                                        <li class="nav-item mbr-fonts-style">
                                            <a class="nav-link active show display-7" role="tab" data-toggle="tab" href="#tabs3-a_tab<%=String.valueOf(count)%>" aria-selected="true">
                                                <%out.println(rs.getString("category"));%>
                                            </a>
                                        </li>



                                        <%
                    count++;
            }
            %>
                                    




                                </ul>
                            </div>
                        </div>
                        
                        
            
                        <div class="container" id="eventView">
                            <div class="row px-1">
                                <div class="tab-content">
                                   <%
                                   int i = 0;
                                   for(i=0;i<count;i++){
                                       %>
                                       
                                       
                                       
                                       
                                   
                                    <div id="tab<%=String.valueOf(i+1)%>" class="tab-pane in active mbr-table" role="tabpanel">
                                        <div class="row tab-content-row">
                                            <%
                                                ResultSet rs2 = null;
                                                String type = (String)session.getAttribute("type");
                                                if(type.equalsIgnoreCase("university")){
                                                    rs2 = functions.getItemsByCategoryForUni(i);
                                                }
                                                if(type.equalsIgnoreCase("organization")){
                                                    rs2 = functions.getItemsByCategoryForOrg(i);
                                                }
            
            while(rs2.next()){
            %>

                                                
                                                
                                                
                                                
                                                
                                                
                                                <div class="col-xs-12 col-md-6 col-lg-4">
                                                    <div class="card-wrapper">
                                                        <div class="card-img">
                                                            <div class="mbr-overlay"></div>
                                                            <div class="mbr-section-btn text-center">
                                                                <a href="events.jsp?event=<%out.println(rs2.getString("eventID"));%>" class="btn btn-primary display-4">Learn More</a>
                                                            </div>
                                                            <img src="../assets/images/<%out.println(rs2.getString("eventImage"));%>" alt="Mobirise">
                                                        </div>
                                                        <div class="card-box">

                                                            <h4 class="card-title mbr-fonts-style display-7"><%out.println(rs2.getString("eventName"));%>
                                                                <div><br></div>
                                                            </h4>
                                                            <p class="mbr-text mbr-fonts-style display-7"><%out.println(rs2.getString("date"));%>
                                                                
                                                                <br> <br><%out.println(rs2.getString("venue"));%></p>
                                                        </div>
                                                    </div>
                                                </div>

                                            <%
                                                   }
           
                                                        %>


                                        </div>
                                    </div>
<%
                                   }
           
            %>              

                
                                   

                                        </div>
                                    </div>
                                </div>
                                
                                <div class="container" id="addEventView">
                                    
                                </div>
                            
                    </section>
                    
                    
                    
                    <section id="listBiew">
                        
                    </section>

                    <section class="mbr-section form3 cid-qXpKCtquBE" id="form3-b">





                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="title col-12 col-lg-8">
                                    <h2 class="align-center pb-2 mbr-fonts-style display-2">
                                        SUBSCRIBE FORM
                                    </h2>
                                    <h3 class="mbr-section-subtitle align-center pb-5 mbr-light mbr-fonts-style display-5">
                                        Subscribe to our Newsletter
                                    </h3>
                                </div>
                            </div>

                            <div class="row py-2 justify-content-center">
                                <div class="col-12 col-lg-6  col-md-8 " data-form-type="formoid">
                                    <div data-form-alert="" hidden="">
                                        Thanks for filling out the form!
                                    </div>
                                    <form class="mbr-form" action="https://mobirise.com/" method="post" data-form-title="Mobirise Form"><input type="hidden" name="email" data-form-email="true" value="BLjfiwSneYsqPecZxIkKIhbceigOAIneoTQg0ks7vbkCLq3Gs2HoCUpmJdWaTCFAW2NltnKtyZDIvFjwNPpDCvf/bo4gTTPrN5nSRE+tXgLCmYmWWbdCZnd7oATtsVwO" data-form-field="Email">
                                        <div class="mbr-subscribe input-group">
                                            <input class="form-control" type="email" name="email" placeholder="Email" data-form-field="Email" required="" id="email-form3-b">
                                            <span class="input-group-btn">
                            <button href="" type="submit" class="btn btn-primary  display-4">SUBSCRIBE</button>
                        </span>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </section>

                    <jsp:include page="../includes/layout/footer.jsp" />