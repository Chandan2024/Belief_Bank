<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <%@ page import="java.sql.*,java.util.*" %>
    <% if(session.getAttribute("name")==null) { response.sendRedirect("login.jsp"); } %>

      <!doctype html>
      <html>

      <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Belief_Bank/Holders</title>
        <link rel="icon" href="./img/icon.png">
        <script src="https://cdn.tailwindcss.com"></script>
        <script src="https://unpkg.com/@material-tailwind/html@latest/scripts/collapse.js"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.0/flowbite.min.css" rel="stylesheet" />
      </head>

      <body>

        <nav
          class="bg-gray-900 dark:bg-gray-900 fixed w-full z-20 top-0 left-0 border-b border-gray-200 dark:border-gray-600">
          <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
            <a href="index.jsp" class="flex items-center">
              <img src="./img/icon.png" class="h-10 mr-3 rounded-xl" alt="Belief_Bank">
              <span class="self-center text-2xl font-semibold whitespace-nowrap dark:text-white">Belief_Bank</span>
            </a>
            <div class="flex md:order-2">
              <button type="button"
                class="text-white bg-blue-700 hover:bg-blue-800 mx-2 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 text-center mr-3 md:mr-0 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                <a href="logout">logout</a>
              </button>
            </div>
          </div>
        </nav>
        <br>

        <link rel="stylesheet" href="https://demos.creative-tim.com/notus-js/assets/styles/tailwind.css">
        <link rel="stylesheet"
          href="https://demos.creative-tim.com/notus-js/assets/vendor/@fortawesome/fontawesome-free/css/all.min.css">
        <section class="relative py-16 bg-white">
          <div class="w-full mb-12 px-4">
            <div class="relative flex flex-col min-w-0 break-words w-full mb-6 shadow-lg rounded 
  bg-gray-900 text-white">
              <div class="rounded-t mb-0 px-4 py-3 border-0">
                <div class="flex flex-wrap items-center">
                  <div class="relative w-full px-4 max-w-full flex-grow flex-1 ">
                    <h3 class="font-semibold text-lg text-white">Account Holder</h3>
                  </div>
                </div>
              </div>
              <div class="block w-full overflow-x-auto ">
                <table class="items-center w-full bg-transparent border-collapse">
                  <thead>
                    <tr>
                      <th
                        class="px-6 align-middle border border-solid py-3 text-xs uppercase border-l-0 border-r-0 whitespace-nowrap font-semibold text-left bg-pink-800 text-pink-300 border-pink-700">
                        Account Holder Name</th>
                      <th
                        class="px-6 align-middle border border-solid py-3 text-xs uppercase border-l-0 border-r-0 whitespace-nowrap font-semibold text-left bg-pink-800 text-pink-300 border-pink-700">
                        Account Number</th>
                      <th
                        class="px-6 align-middle border border-solid py-3 text-xs uppercase border-l-0 border-r-0 whitespace-nowrap font-semibold text-left bg-pink-800 text-pink-300 border-pink-700">
                        Status</th>
                      <th
                        class="px-6 align-middle border border-solid py-3 text-xs uppercase border-l-0 border-r-0 whitespace-nowrap font-semibold text-left bg-pink-800 text-pink-300 border-pink-700">
                        Type</th>
                      <th
                        class="px-6 align-middle border border-solid py-3 text-xs uppercase border-l-0 border-r-0 whitespace-nowrap font-semibold text-left bg-pink-800 text-pink-300 border-pink-700">
                        Branch</th>
                      <th
                        class="px-6 align-middle border border-solid py-3 text-xs uppercase border-l-0 border-r-0 whitespace-nowrap font-semibold text-left bg-pink-800 text-pink-300 border-pink-700">
                        Balance </th>
                    </tr>
                  </thead>
                  <% Connection con; 
                  PreparedStatement stmt; ResultSet rs; 
                  try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    con=DriverManager.getConnection("jdbc:mysql://bjqihypxiloujpf1q0vz-mysql.services.clever-cloud.com:3306/bjqihypxiloujpf1q0vz?user=uaojpnxtco3vr7qm&password=ZALNnkM2lYNv9ert8K2d");
                    stmt=con.prepareStatement("select * from accounts;"); 
                    rs=stmt.executeQuery(); 
                    while(rs.next()) 
                    { 
                      %>
                    <tbody>
                      <tr>
                        <th
                          class="border-t-0 px-6 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4 text-left flex items-center">
                          <span class="ml-3 font-bold text-white">
                            <%=rs.getString("name")%>
                          </span>
                        </th>
                        <td class="border-t-0 px-6 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4">
                          <%=rs.getString("accno")%>
                        </td>
                        <td class="border-t-0 px-6 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4">
                          <i class="fas fa-circle text-green-500 mr-2"></i>
                          <%=rs.getString("status")%>
                        </td>
                        <td class="border-t-0 px-6 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4">
                          <div class="flex">
                            <%=rs.getString("acctype")%>
                          </div>
                        </td>
                        <td class="border-t-0 px-6 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4">
                          <div class="flex items-center">
                            <span class="mr-2">
                              <%=rs.getString("branch")%>
                            </span>
                          </div>
              </div>
              </td>
              <td class="border-t-0 px-6 align-middle border-l-0 border-r-0 text-xs whitespace-nowrap p-4">
                <div class="flex items-center">
                  <span class="mr-2">
                    <%=rs.getString("balance")%>
                  </span>

                </div>
            </div>
            </td>

            </tr>
            </tbody>
            <% } } catch(Exception e) { out.println(e); } %>
              </table>
          </div>
          </div>
          </div>

        </section>

        <% String role=(String)session.getAttribute("role"); if(role.equals("admin")) { %>
          <button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
            <a href="index.jsp">Home</a>
          </button>
          <%} %>
            <script src="../path/to/flowbite/dist/flowbite.min.js"></script>
      </body>

      </html>