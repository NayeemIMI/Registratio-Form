<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Registration Form</title>
        <script>
            function Information(){
                let Name = document.forms["Details"]["Name"];
                let Pass = document.forms["Details"]["Pass"];
                let RePass = document.forms["Details"]["RePass"];
                let Mail = document.forms["Details"]["Mail"];
                let Gender = document.forms["Details"]["Gender"];
                let Country = document.forms["Details"]["Country"];
                let Address = document.forms["Details"]["Address"];
                let Phone = document.forms["Details"]["Phone"];

                if (Name.value == "" || Pass.value == "" || RePass.value == "" || Mail.value == "" || Gender.value == "Select" || Country.value == "Select" || Address.value == "" || Phone.value == "") { 
                    window.alert("You need to fill up the whole form!"); 
                    return false; 
                }
                if(Pass.value != RePass.value){
                    window.alert("Your 'Password' and 'Retype Password' didn't match!"); 
                    return false; 
                }
                return true;
            }
        </script>
    </head>
    <body align="center" style="background-color: khaki;margin-top: 90px">
        <h1 style="text-align: center;">REGISTRATION FORM</h1>
        <form name="Details" action="ShowInfo.jsp" onsubmit="return Information()" method="post">
            <table align="center">
                <tr>
                    <td>Login Name:</td>
                    <td>
                        <input type="text" name="Name" style="width: 100%;"/>
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td>
                        <input type="password" name="Pass"  style="width: 100%;"/>
                    </td>
                </tr>
                <tr>
                    <td>Confirm Password:</td>
                    <td>
                        <input type="password" name="RePass" style="width: 100%;" />
                    </td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>
                        <input type="email" name="Mail" style="width: 100%;" />
                    </td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td>
                        <select name="Gender"  style="width: 100%;">
                            <option value="Select" >---Select---</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Select Country:</td>
                    <td>
                        <select name="Country" style="width: 100%;">
                            <option  value="Select" >---Select---</option>
                            <option value="Bangladesh">Bangladesh</option>
                            <option value="USA">USA</option>
                            <option value="UK">UK</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td>
                        <textarea name="Address" rows="5" cols="30"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Phone no:</td>
                    <td>
                        <input type="tel" name="Phone" style="width: 100%;" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="reset" value="Reset">
                    </td>
                    <td>
                        <input type="submit" value="Submit">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
