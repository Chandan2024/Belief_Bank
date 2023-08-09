<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <% if(session.getAttribute("name")==null) { response.sendRedirect("login.jsp"); } %>
        <!doctype html>
        <html>

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Belief_Bank/profile</title>
            <link rel="icon" href="./img/icon.png">
            <script src="https://cdn.tailwindcss.com"></script>
            <script src="https://unpkg.com/@material-tailwind/html@latest/scripts/collapse.js"></script>
            <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.0/flowbite.min.css" rel="stylesheet" />
        </head>

        <body>
            <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
            <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>

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
                            <h3 class="text-gray-600 font-lg text-semibold leading-6">
                                <%=session.getAttribute("role") %>
                            </h3>
                            <ul
                                class="bg-gray-100 text-gray-600 hover:text-gray-700 hover:shadow py-2 px-3 mt-3 divide-y rounded shadow-sm">
                                <li class="flex items-center py-3">
                                    <span>Status</span>
                                    <span class="ml-auto"><span
                                            class="bg-indigo-500 py-1 px-2 rounded text-white text-sm">
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

                    <div class="w-full md:w-9/12 mx-2 h-64">
                        <div class="bg-white p-3 shadow-sm rounded-sm">
                            <div class="flex items-center space-x-2 font-semibold text-gray-900 leading-8">
                                <span clas="text-green-500">
                                    <svg class="h-5" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                        stroke="currentColor">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                            d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
                                    </svg>
                                </span>
                                <span class="tracking-wide">User Details</span>
                            </div>
                            <div class="text-gray-700">
                                <div class="grid md:grid-cols-2 text-sm">
                                    <div class="grid grid-cols-2">
                                        <div class="px-4 py-2 font-semibold">Account Number</div>
                                        <div class="px-4 py-2">
                                            <%=session.getAttribute("accno")%>
                                        </div>
                                    </div>
                                    <div class="grid grid-cols-2">
                                        <div class="px-4 py-2 font-semibold">Name</div>
                                        <div class="px-4 py-2">
                                            <%=session.getAttribute("name")%>
                                        </div>
                                    </div>
                                    <div class="grid grid-cols-2">
                                        <div class="px-4 py-2 font-semibold">Mobile</div>
                                        <div class="px-4 py-2">
                                            <%=session.getAttribute("mobile")%>
                                        </div>
                                    </div>
                                    <div class="grid grid-cols-2">
                                        <div class="px-4 py-2 font-semibold">Email</div>
                                        <div class="px-4 py-2">
                                            <%=session.getAttribute("email")%>
                                        </div>
                                    </div>
                                    <div class="grid grid-cols-2">
                                        <div class="px-4 py-2 font-semibold">Account Type</div>
                                        <div class="px-4 py-2">
                                            <%=session.getAttribute("acctype")%>
                                        </div>
                                    </div>
                                    <div class="grid grid-cols-2">
                                        <div class="px-4 py-2 font-semibold">Branch</div>
                                        <div class="px-4 py-2">
                                            <%=session.getAttribute("branch")%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <hr class="my-6 border-gray-500 w-full">


                        <div class="bg-white p-3 shadow-sm rounded-sm">
                            <div class="grid grid-cols-2">
                                <div>
                                    <div class="flex items-center space-x-2 font-semibold text-gray-900 leading-8 mb-3">
                                        <span clas="text-green-500">
                                            <svg class="h-5" xmlns="http://www.w3.org/2000/svg" fill="none"
                                                viewBox="0 0 24 24" stroke="currentColor">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                    d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
                                            </svg>
                                        </span>
                                        <span class="tracking-wide">Account Details</span>
                                    </div>
                                    <ul class="list-inside space-y-2">
                                        <li>
                                            <div class="text-indigo-700">Balance</div>
                                            <div class="text-gray-500 text-md text-bold">Rs.
                                                <%=session.getAttribute("balance")%>-/-
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div>
                                    <div class="flex items-center space-x-2 font-semibold text-gray-900 leading-8 mb-3">
                                        <span clas="text-green-500">
                                            <img src="./img/money.png" class="h-5">
                                        </span>
                                        <span class="tracking-wide">Manage</span>
                                    </div>
                                    <ul class="list-inside space-y-4">
                                        <li>
                                            <a href="debit.jsp" class="bg-indigo-500 px-2 rounded bold">Withdraw</a>
                                            <div class="text-gray-500 text-xs">deposit money from account</div>
                                        </li>
                                        <li>
                                            <a href="credit.jsp" class="bg-indigo-500 px-2 rounded bold">Credit</a>
                                            <div class="text-gray-500 text-xs">add money to account</div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <% String role=(String)session.getAttribute("role"); if(role.equals("admin")) { %>
                <button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
                    <a href="index.jsp">Home</a>
                </button>
                <%} %>
        </body>

        </html>