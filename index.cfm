<!DOCTYPE html>
<html lang="en">
<head>
    <title>Pokemon Table</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script src="https://kit.fontawesome.com/ce4d174c15.js" crossorigin="anonymous"></script>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
</head>
<body>

    <div class="container">
        <h2>Pokemon Table</h2>            
        <table class="table">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Base Experience</th>
                    <th>Pict</th>
                    <th>More details</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>

</body>
</html>

<script>
    $(document).ready(function () { 
        $('.table').DataTable({
            processing: true,
            serverSide: true,
            ajax: 'getData.cfm',
        
            aoColumns : [                               
                            { mDataProp: "name"},
                            { mDataProp: "base_experience"},
                            { mDataProp: "image"},
                            { mDataProp: "id"}
            ]

                    
        });
    });
</script>
