<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!doctype html>
    <html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Belief_Bank/Register</title>
        <link rel="icon" href="./img/icon.png">
        <script src="https://cdn.tailwindcss.com"></script>
        <script src="https://unpkg.com/@material-tailwind/html@latest/scripts/collapse.js"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.0/flowbite.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://demos.creative-tim.com/notus-js/assets/styles/tailwind.css">
        <link rel="stylesheet"
            href="https://demos.creative-tim.com/notus-js/assets/vendor/@fortawesome/fontawesome-free/css/all.min.css">
        <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'>
        </link>
    </head>

    <body class="bg-[url('https://source.unsplash.com/random/?bank,money')]">

        <input type="hidden" id="status" value="<%= request.getAttribute(" status")%>">

        <section class=" py-1 bg-blueGray-50">
            <div class="w-full lg:w-8/12 px-4 mx-auto mt-6">
                <div
                    class="relative flex flex-col min-w-0 break-words w-full mb-6 shadow-lg rounded-lg bg-blueGray-100 border-0">
                    <div class="rounded-t bg-white mb-0 px-6 py-6">
                        <div class="text-center flex justify-between">
                            <h6 class="text-blueGray-700 text-xl font-bold">
                                Create account
                            </h6>
                            <p>Already a member?<a href="login.jsp"
                                    class="text-blue-500 hover:text-blue-700 font-semibold"> Log in</a></p>
                        </div>
                    </div>

                    <div class="flex-auto px-4 lg:px-10 py-10 pt-0 bg-gray-200">
                        <form name="frm" method="post" action="Register">

                            <!-- 1 -->
                            <h6 class="text-blueGray-400 text-sm mt-3 mb-6 font-bold uppercase">
                                User Information
                            </h6>
                            <div class="flex flex-wrap">

                                <div class="w-full lg:w-6/12 px-4">
                                    <div class="relative w-full mb-3">
                                        <label class="block uppercase text-blueGray-600 text-xs font-bold mb-2"
                                            htmlfor="grid-password" for="uname">
                                            Username
                                        </label>
                                        <input type="text" id="uid" name="uid" required
                                            class="border-0 px-3 py-3 placeholder-blueGray-300 text-blueGray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150">
                                    </div>
                                </div>

                                <div class="w-full lg:w-6/12 px-4">
                                    <div class="relative w-full mb-3">
                                        <label class="block uppercase text-blueGray-600 text-xs font-bold mb-2"
                                            htmlfor="grid-password" for="email">
                                            Email address
                                        </label>
                                        <input type="email" id="uemail" name="uemail" required minlength="5"
                                            maxlength="15"
                                            class="border-0 px-3 py-3 placeholder-blueGray-300 text-blueGray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150">
                                    </div>
                                </div>

                                <div class="w-full lg:w-6/12 px-4">
                                    <div class="relative w-full mb-3">
                                        <label class="block uppercase text-blueGray-600 text-xs font-bold mb-2"
                                            htmlfor="grid-password" for="fullname">
                                            Full Name
                                        </label>
                                        <input type="text" id="uname" name="uname" required
                                            class="border-0 px-3 py-3 placeholder-blueGray-300 text-blueGray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150">
                                    </div>
                                </div>

                                <div class="w-full lg:w-6/12 px-4">
                                    <div class="relative w-full mb-3">
                                        <label class="block uppercase text-blueGray-600 text-xs font-bold mb-2"
                                            htmlfor="grid-password" for="umobile">
                                            Mobile
                                        </label>
                                        <input type="tel" id="umobile" name="umobile" required minlength="10"
                                            maxlength="12"
                                            class="border-0 px-3 py-3 placeholder-blueGray-300 text-blueGray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150">
                                    </div>
                                </div>
                            </div>

                            <hr class="mt-6 border-b-1 border-blueGray-300">

                            <!-- 2 -->
                            <h6 class="text-blueGray-400 text-sm mt-3 mb-6 font-bold uppercase">
                                Address Information
                            </h6>
                            <div class="flex flex-wrap">

                                <div class="w-full lg:w-12/12 px-4">
                                    <div class="relative w-full mb-3">
                                        <label class="block uppercase text-blueGray-600 text-xs font-bold mb-2"
                                            htmlfor="grid-password" for="uaddress">
                                            Address
                                        </label>
                                        <input type="text" id="uaddress" name="uaddress" required minlength="5"
                                            class="border-0 px-3 py-3 placeholder-blueGray-300 text-blueGray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150">
                                    </div>
                                </div>

                                <div class="w-full lg:w-4/12 px-4">
                                    <div class="relative w-full mb-3">
                                        <label class="block uppercase text-blueGray-600 text-xs font-bold mb-2"
                                            htmlfor="grid-password" for="ucountry">
                                            Country
                                        </label>
                                        <input type="text" value="India" disabled
                                            class="border-0 px-3 py-3 placeholder-blueGray-300 text-blueGray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150">
                                    </div>
                                </div>

                                <div class="w-full lg:w-4/12 px-4">
                                    <div class="relative w-full mb-3">
                                        <label class="block uppercase text-blueGray-600 text-xs font-bold mb-2"
                                            htmlfor="grid-password" for="pcode">
                                            Postal Code
                                        </label>
                                        <input type="text" name="upcode" id="upcode" required minlength="6"
                                            maxlength="6"
                                            class="border-0 px-3 py-3 placeholder-blueGray-300 text-blueGray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150">
                                    </div>
                                </div>
                            </div>

                            <hr class="mt-6 border-b-1 border-blueGray-300">

                            <!-- 3 -->
                            <h6 class="text-blueGray-400 text-sm mt-3 mb-6 font-bold uppercase">
                                Account Information
                            </h6>
                            <div class="flex flex-wrap">

                                <div class="w-full lg:w-6/12 px-4">
                                    <div class="relative w-full mb-3">
                                        <label class="block uppercase text-blueGray-600 text-xs font-bold mb-2"
                                            htmlfor="grid-password" for="ustatus">
                                            Status
                                        </label>
                                        <input type="text" id="ustatus" value="Active" name="ustatus" disabled
                                            placeholder="Active"
                                            class="border-0 px-3 py-3 placeholder-blueGray-300 text-blueGray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150">
                                    </div>
                                </div>

                                <div class="w-full lg:w-6/12 px-4">
                                    <div class="relative w-full mb-3">
                                        <label class="block uppercase text-blueGray-600 text-xs font-bold mb-2"
                                            htmlfor="grid-password" for="ubalance">
                                            Balance
                                        </label>
                                        <input type="text" id="ubalance" name="ubalance" value="0" disabled
                                            placeholder="RS. 0.0/-"
                                            class="border-0 px-3 py-3 placeholder-blueGray-300 text-blueGray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150">
                                    </div>
                                </div>

                                <div class="w-full lg:w-4/12 px-4">
                                    <div class="relative w-full mb-3">
                                        <label class="block uppercase text-blueGray-600 text-xs font-bold mb-2"
                                            htmlfor="grid-password" for="uacctype">
                                            Account Type
                                        </label>
                                        <select data-te-select-init class="w-60 h-10 bg-white text-black" id="utype"
                                            name="utype" required>
                                            <option>Select</option>
                                            <option value="Saving">Saving</option>
                                            <option value="Current">Current</option>
                                            <option value="Fixed Deposit">Fixed Deposit</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="w-full lg:w-4/12 px-4">
                                    <div class="relative w-full mb-3">
                                        <label class="block uppercase text-blueGray-600 text-xs font-bold mb-2"
                                            htmlfor="grid-password" for="ubranch">
                                            Branch
                                        </label>
                                        <select data-te-select-init class="w-60 h-10 bg-white text-black" id="ubranch"
                                            name="ubranch" required>
                                            <option>Select</option>
                                            <option value="Belief_Bank_Amravati">Belief_Bank_Amravati</option>
                                            <option value="Belief_Bank_Akoli">Belief_Bank_Akoli</option>
                                            <option value="Belief_Bank_Badnera">Belief_Bank_Badnera</option>
                                        </select>
                                    </div>
                                </div>

                            </div>

                            <hr class="mt-6 border-b-1 border-blueGray-300">

                            <!-- 4 -->
                            <h6 class="text-blueGray-400 text-sm mt-3 mb-6 font-bold uppercase">
                                Login Cradentials
                            </h6>
                            <div class="flex flex-wrap">

                                <div class="w-full lg:w-12/12 px-4">
                                    <div class="relative w-full mb-3">
                                        <label class="block uppercase text-blueGray-600 text-xs font-bold mb-2"
                                            htmlfor="grid-password" for="upassword">
                                            password
                                        </label>
                                        <input type="password" id="upassword" name="upassword" required minlength="5"
                                            maxlength="10"
                                            class="border-0 px-3 py-3 placeholder-blueGray-300 text-blueGray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150">
                                    </div>
                                </div>

                                <div class="w-full lg:w-4/12 px-4">
                                    <div class="relative w-full mb-3">
                                        <label class="block uppercase text-blueGray-600 text-xs font-bold mb-2"
                                            htmlfor="grid-password" for="usecurityquestion">
                                            Security Question
                                        </label>
                                        <select data-te-select-init class="w-60 h-10 bg-white text-black" id="uquestion"
                                            name="uquestion" required>
                                            <option>Select</option>
                                            <option value="favourite Player">Favourite Player</option>
                                            <option value="favourite Number">Favourite Number</option>
                                            <option value="favourite Dish">Favourite Dish</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="w-full lg:w-4/12 px-4">
                                    <div class="relative w-full mb-3">
                                        <label class="block uppercase text-blueGray-600 text-xs font-bold mb-2"
                                            htmlfor="grid-password" for="uanswer">
                                            Answer
                                        </label>
                                        <input type="text" name="uanswer" id="uanswer" required minlength="1"
                                            maxlength="10"
                                            class="border-0 px-3 py-3 placeholder-blueGray-300 text-blueGray-600 bg-white rounded text-sm shadow focus:outline-none focus:ring w-full ease-linear transition-all duration-150">
                                    </div>
                                </div>
                            </div>

                            <button type="submit" value="submit" class="w-full block bg-indigo-500 hover:bg-indigo-400 focus:bg-indigo-400 text-white font-semibold rounded-lg
                px-4 py-3 mt-6">Submit</button>
                            <h5 class="w-full block  text-black font-semibold rounded-lg
                px-4 py-3 mt-6">Please remember your Email & Password for Login on Portal</h5>
                            <hr class="mt-6 border-b-1 border-blueGray-300">
                        </form>
                    </div>
                </div>
            </div>
        </section>

        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>


        <script>
            var status = document.getElementById("status").value;
            if (status == "active") {
                swal("Congrats", "Account Created Successfully Click on Log in", "success");
            }
            if (status == "inactive") {
                swal("sorry", "Something went wrong Try again", "error");
            }
        </script>

        <script>
            import {
                Collapse,
                initTE,
            } from "tw-elements";

            initTE({ Collapse });

            import { Select, initTE } from "tw-elements";
            initTE({ Select });
        </script>
    </body>

    </html>