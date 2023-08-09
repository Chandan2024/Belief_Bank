<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

    <% if(session.getAttribute("name")==null) { response.sendRedirect("login.jsp"); } %>

        <!doctype html>
        <html>

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Belief_Bank/Home</title>
            <link rel="icon" href="./img/icon.png">
            <script src="https://cdn.tailwindcss.com"></script>
            <script src="https://unpkg.com/@material-tailwind/html@latest/scripts/collapse.js"></script>
            <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.0/flowbite.min.css" rel="stylesheet" />
        </head>

        <body>

            <nav
                class="bg-white dark:bg-gray-900 fixed w-full z-20 top-0 left-0 border-b border-gray-200 dark:border-gray-600">
                <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
                    <a href="index.jsp" class="flex items-center">
                        <img src="./img/icon.png" class="h-10 mr-3 rounded-xl" alt="Belief_Bank">
                        <span
                            class="self-center text-2xl font-semibold whitespace-nowrap dark:text-white">Belief_Bank</span>
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
<div class="flex flex-wrap px-4">
            <div
                class="max-w-sm mx-4 bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700 mt-20 place-content-center">
                <img class="rounded-t-lg" src="./img/manager.jpeg" alt="user" />
                <div class="p-5">
                    <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                        <%=session.getAttribute("name")%>
                    </h5>
                    <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">
                        <%=session.getAttribute("role")%>
                    </p>
                    <a href="profile.jsp"
                        class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                        Profile
                        <svg class="w-3.5 h-3.5 ml-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                            viewBox="0 0 14 10">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M1 5h12m0 0L9 1m4 4L9 9" />
                        </svg>
                    </a>
                </div>
            </div>

 <div
                class="max-w-sm mx-4 bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700 mt-20 place-content-center">
                <img class="rounded-t-lg bg-white" src="./img/manage.png" alt="user" />
                <div class="p-5">
                    <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                        Users
                    </h5>
                    <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">
                        Show Users Data
                    </p>
                    <a href="showuser.jsp"
                        class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                        Show
                        <svg class="w-3.5 h-3.5 ml-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                            viewBox="0 0 14 10">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M1 5h12m0 0L9 1m4 4L9 9" />
                        </svg>
                    </a>
                </div>
            </div>
</div>

            <script src="../path/to/flowbite/dist/flowbite.min.js"></script>
        </body>

        </html>