<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<div class="col-md-7 col-lg-8">
    <h4 class="mb-3">Billing address</h4>
    <form class="needs-validation" action="/addRecord/${car.id}" method="post">
        <div class="row g-3">
            <div class="col-sm-6">
                <label for="rentalStartDate" class="form-label">Rental Start Date</label>
                <input type="datetime-local" class="form-control" name="rentalStartDate" id="rentalStartDate">
            </div>
            <div class="col-sm-6">
                <label for="rentalFinishDate" class="form-label">Rental Finish Date</label>
                <input type="datetime-local" class="form-control" name="rentalFinishDate" id="rentalFinishDate">
            </div>

            <div class="col-12">
                <label for="name" class="form-label">Name</label>
                <div class="input-group has-validation">
                    <input type="text" class="form-control" name="name" id="name" placeholder="Name">
                </div>
            </div>

            <div class="col-12">
                <label for="sureName" class="form-label">Sure name</label>
                <input type="text" class="form-control" name="sureName" id="sureName">
            </div>

            <div class="col-sm-6">
                <label for="age" class="form-label">Age</label>
                <input type="number" class="form-control" name="age" id="age">
            </div>

            <div class="col-sm-6">
                <label for="driverLicense" class="form-label">Driver License</label>
                <input type="text" class="form-control" name="driverLicense" id="driverLicense">
            </div>
            <input type="hidden" name="carId" value="${car.id}">
            <hr class="my-4">
        </div>

        <button class="w-100 btn btn-primary btn-lg" type="submit">Make a request</button>
    </form>
</div>
</body>
</html>