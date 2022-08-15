<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>

<table class="table table-hover table-dark">
    <tr>
        <th scope="col">rentalStartDate</th>
        <th scope="col">rentalFinishDate</th>
        <th scope="col">name</th>
        <th scope="col">sureName</th>
        <th scope="col">age</th>
        <th scope="col">driverLicense</th>
        <th scope="col">car number</th>
    </tr>
    <#list records as record>
        <tr>
            <th>${record.rentalStartDate}</th>
            <th>${record.rentalFinishDate}</th>
            <th>${record.name}</th>
            <th>${record.sureName}</th>
            <th>${record.age}</th>
            <th>${record.driverLicense}</th>
            <th>${record.car.id}</th>
        </tr>
    </#list>
</table>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
        integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
        crossorigin="anonymous"></script>
<script src="/docs/5.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>

</body>
</html>