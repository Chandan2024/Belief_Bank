<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
   <% if(session.getAttribute("name")==null) { response.sendRedirect("login.jsp"); } %>
    <!doctype html>
    <html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Belief_Bank/Credit</title>
        <link rel="icon" href="./img/icon.png">
        <script src="https://cdn.tailwindcss.com"></script>
        <script src="https://unpkg.com/@material-tailwind/html@latest/scripts/collapse.js"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.0/flowbite.min.css" rel="stylesheet" />
        <link rel="stylesheet"
            href="https://demos.creative-tim.com/notus-js/assets/vendor/@fortawesome/fontawesome-free/css/all.min.css">
        <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link> 
    </head>

    <body>
        <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>

<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
        <nav class="bg-gray-900 fixed w-full z-20 top-0 left-0 border-b border-gray-200 dark:border-gray-600">
            <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
                <a href="index.jsp" class="flex items-center">
                    <img src="./img/icon.png" class="h-10 mr-3 rounded-xl" alt="Belief_Bank">
                    <span
                        class="self-center text-2xl font-semibold whitespace-nowrap dark:text-white">Belief_Bank</span>
                </a>
                <div class="flex md:order-2">
                    <button type="button"
                        class="text-white bg-blue-700 hover:bg-blue-800 mx-2 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 text-center mr-3 md:mr-0 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                        <a href="logout">Logout</a>
                    </button>
                </div>
        </nav>
        <div class="mt-16"></div>
        <div class="my-auto"></div>
        <div class="container mx-auto my-5 p-5">
            <div class="md:flex no-wrap md:-mx-2 ">
                <div class="w-full md:w-3/12 md:mx-2">
                    <div class="bg-white p-3 border-t-4 border-indigo-500">
                        <div class="image overflow-hidden">
                            <img class="h-auto w-full mx-auto" src="./img/user.png" alt="">
                        </div>
                        <h3 class="text-gray-900 font-bold text-md leading-8 my-1">
                            <%=session.getAttribute("name")%>
                        </h3>
                        <h3 class="text-gray-600 font-lg text-semibold leading-6">Account Holder</h3>
                        <ul
                            class="bg-gray-100 text-gray-600 hover:text-gray-700 hover:shadow py-2 px-3 mt-3 divide-y rounded shadow-sm">
                            <li class="flex items-center py-3">
                                <span>Status</span>
                                <span class="ml-auto"><span class="bg-indigo-500 py-1 px-2 rounded text-white text-sm">
                                        <%=session.getAttribute("status")%>
                                    </span></span>
                            </li>
                            <li class="flex items-center py-3">
                                <span>Account Type</span>
                                <span class="ml-auto">
                                    <%=session.getAttribute("acctype")%>
                                </span>
                            </li>
                        </ul>
                    </div>
                </div>

                <!-- credit -->
                <div class="flex-auto px-4 lg:px-10 py-10 pt-0 bg-gray-200">
                    <div class="mt-10 sm:mx-auto sm:w-full sm:max-w-sm">
                        <form class="space-y-6" name="frm" method="POST" action="credit">
                            <div>
                                <h2 class="mt-10 text-center text-2xl font-bold leading-9 tracking-tight text-gray-900">
                                    Credit Amount to Account</h2>
                                <label for="camount" class="block text-sm font-medium leading-6 text-gray-900">Enter
                                    Amount to Credit</label>
                                <div class="mt-2">
                                    <input id="camount" name="camount" type="number" required minlength="1"
                                        maxlength="5"
                                        class="block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                                </div>
                            </div>

                            <div>
                                <label for="password" class="block text-sm font-medium leading-6 text-gray-900">Enter
                                    Password</label>
                                <div class="mt-2">
                                    <input id="upassword" name="upassword" type="password" required minlength="5"
                                        maxlength="20"
                                        class="block w-full rounded-xl border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                                </div>
                            </div>

                            <div>
                                <button type="submit" value="submit"
                                    class="flex w-full justify-center rounded-md bg-indigo-600 px-3 py-1.5 text-sm font-semibold leading-6 text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">credit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
<button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
  <a href="profile.jsp">profile</a>
</button>

 <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>

    <script>
      var status = document.getElementById("status").value;
      if (status == "complete") {
          swal("Transaction Complete", "Amount credited", "success");
        }
      if (status == "incomplete") {
        swal("Transaction incomplete", "Wrong cradentials", "error");
      }
    </script>

    <script>
      import {
        Collapse,
        initTE,
      } from "tw-elements";

      initTE({ Collapse });
    </script>
    </body>

    </html>