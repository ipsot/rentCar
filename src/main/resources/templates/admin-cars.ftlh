<!DOCTYPE html>
<html lang="ru">
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
          crossorigin="anonymous">
    <meta charset="UTF-8">
    <title>All cars</title>
</head>
<body>
<h1 style="text-align: center">Панель администратора</h1>
<hr>
<table class="table table-hover table-dark">
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Price for day</th>
        <th scope="col">Car model</th>
        <th scope="col">Car name</th>
        <th scope="col">Color</th>
        <th scope="col">isBooking</th>
    </tr>
    <#list cars as car>
        <tr>
            <th>${car.id}</th>
            <th>${car.priceForDay}</th>
            <th>${car.carModel}</th>
            <th>${car.carName}</th>
            <th>${car.color}</th>
            <th><#if car.isBooking>false<#else>true</#if></th>
        </tr>
    <#else>
        <h3>Машин нет</h3>
    </#list>
</table>

<a class="btn btn-dark mt-3 mb-3" style="text-align: center; width: 100%"
   data-toggle="collapse" href="#collapseExample" role="button"
   aria-expanded="true" aria-controls="collapseExample">
    Добавить новую машину
</a>
<div class="collapse mb-3" id="collapseExample" style="">
    <form action="/admin/car/add" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="priceForDay">Price for day</label>
            <div class="input-group mb-3">
                <input type="number" required class="form-control" id="priceForDay" name="priceForDay">
                <div class="input-group-append">
                    <span class="input-group-text">₽</span>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="carModel">Car Model</label>
            <select id="carModel" name="carModel" class="form-control">
                <option value="">Модель не выбрана</option>
                <option value="AUDI">AUDI</option>
                <option value="BMW">BMW</option>
                <option value="LADA">LADA</option>
            </select>
        </div>
        <div class="form-group">
            <label for="carName">Car name</label>
            <input type="text" required class="form-control"
                   id="carName" name="carName">
        </div>
        <div class="form-group">
            <label for="color">Color</label>
            <div class="input-group mb-3">
                <input type="text" required class="form-control" id="color" name="color">
            </div>
        </div>
        <div class="form-group">
            <div class="custom-file">
                <input type="file" name="file" id="file">
                <label class="custom-file-label" for="file">Image</label>
            </div>
        </div>

        <button type="submit" style="width: 100%" class="btn btn-dark">Добавить</button>
    </form>
</div>
<#--<div class="card-columns">-->
<#--    <#list cars as car>-->
<#--        <a href="/cars/${car.id}" class="car-link">-->
<#--            <div class="card text-white bg-dark my-3 car">-->
<#--                <img src="/images/${car.previewImageId}"-->
<#--                     class="card-img-top">-->
<#--                <div class="card-body">-->
<#--                    <h5 class="card-title">${car.carName}</h5>-->
<#--                    <p class="card-text">${car.priceForDay} ₽</p>-->
<#--                </div>-->
<#--            </div>-->
<#--        </a>-->
<#--    <#else>-->
<#--        <h1 style="text-align: center">Не найдено</h1>-->
<#--    </#list>-->
<#--</div>-->


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
        integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
        crossorigin="anonymous"></script>
</body>
</html>