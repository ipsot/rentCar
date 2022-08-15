<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<form action="/car/{id}" method="get" enctype="multipart/form-data">
    <#list images as img>
        <img src="/images/${img.id}" height="300px">
    </#list>
    <div class="card-body">
        <p class="card-text">${car.carModel}</p>
        <p class="card-text">${car.carName}</p>
        <p class="card-text">${car.color}</p>
        <p class="card-text"><#if car.isBooking>false<#else>true</#if></p>
        <div class="d-flex justify-content-between align-items-center">
            <small class="text-muted">${car.priceForDay}</small>
        </div>
    </div>
<#--    <button type="button" class="btn btn-sm btn-outline-secodary"><a href="/records"> See records </a> </button>-->

    <form action="/addRecord/${car.id}" method="get">
        <input type="hidden" name="id" value="${car.id}">
        <button type="button" class="btn btn-sm btn-outline-secondary"><a href="/addRecord/${id}" style="color: black"> Rent car</a></button>
    </form>

</form>
<#--                    <th>${car.priceForDay}</th>-->
<#--                    <th>${car.carModel}</th>-->
<#--                    <th>${car.carName}</th>-->
<#--                    <th>${car.color}</th>-->
<#--                    <th><#if car.isBooking>false<#else>true</#if></th>-->
<#--                    <h3>Машин нет</h3>-->


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

<footer class="text-muted py-5">
    <div class="container">
        <p class="float-end mb-1">
            <a href="#">Back to top</a>
        </p>
        <p class="mb-1">Album example is © Bootstrap, but please download and customize it for yourself!</p>
        <p class="mb-0">New to Bootstrap? <a href="/">Visit the homepage</a> or read our <a
                    href="/docs/5.2/getting-started/introduction/">getting started guide</a>.</p>
    </div>
</footer>
</html>