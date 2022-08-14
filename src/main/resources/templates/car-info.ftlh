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
    <form action="/addRecord/{carId}">
        <input type="hidden" name="carId" value="${car.id}">
    </form>
    <button type="button" class="btn btn-sm btn-outline-secondary"><a href="/addRecord" style="color: black"></a> Rent car</button>
</form>
<#--                    <th>${car.priceForDay}</th>-->
<#--                    <th>${car.carModel}</th>-->
<#--                    <th>${car.carName}</th>-->
<#--                    <th>${car.color}</th>-->
<#--                    <th><#if car.isBooking>false<#else>true</#if></th>-->
<#--                    <h3>Машин нет</h3>-->


</body>
</html>