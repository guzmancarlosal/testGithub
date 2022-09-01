

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

<cfoutput>#now()#</cfoutput>
<cfset myFirstName = "Carlos"/>
<cfset myLastName = "Guzman"/>
#myFirstName#<br> #now()#
<cfoutput>
    my name is #myFirstName# #myLastName#<Br>

    <cfloop from="1" to="10" index="i" >
        #i#
    </cfloop>

<Br><br><Br>
<cfscript>
    writeDump(myFirstName);
    writeDump(myLastName)
    for (i = 10; i <= 20; i++) {
        writeDump( i&'<br>')
     }
</cfscript>
<form>
    <div class="form-group">
        <label for="exampleInputEmail1">Name</label>
        <input type="text" class="form-control" id="nameExample"  placeholder="Enter name" value ="#myFirstname#">
        <small id="emailHelp" class="form-text text-muted">We'll never share your data with anyone else.</small>
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Email address</label>
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
    </div>
    <div class="form-check">
        <input type="checkbox" class="form-check-input" id="exampleCheck1">
        <label class="form-check-label" for="exampleCheck1">Check me out</label>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
</cfoutput>