<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>

<div class="collapse mb-3" id="collapseExample" style="">
    <form action="/car/edit/${car.id}" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="priceForDay">Price for day</label>
            <div class="input-group mb-3">
                <input type="number" required class="form-control" id="priceForDay" name="priceForDay"
                       value="${car.priceForDay}">
                <div class="input-group-append">
                    <span class="input-group-text">₽</span>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="carModel">Car Model</label>
            <select id="carModel" name="carModel" class="form-control">
                <option value="${car.carModel}">${car.carModel}</option>
                <option value="AUDI">AUDI</option>
                <option value="BMW">BMW</option>
                <option value="LADA">LADA</option>
            </select>
        </div>
        <div class="form-group">
            <label for="carName">Car name</label>
            <input type="text" required class="form-control"
                   id="carName" name="carName" value="${car.carName}">
        </div>
        <div class="form-group">
            <label for="color">Color</label>
            <div class="input-group mb-3">
                <input type="text" required class="form-control" id="color" name="color" value="${car.color}">
            </div>
        </div>

<#--        <input type="hidden" id="isBooking" name="isBooking" value="${car.isBooking}">-->
        <input type="hidden" id="previewImageId" name="previewImageId" value="${car.previewImageId}">

        <button type="submit" style="width: 100%" class="btn btn-dark">Edit</button>
    </form>
</div>
</body>
</html>