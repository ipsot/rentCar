<!DOCTYPE html>
<html lang="ru" xmlns="http://www.w3.org/1999/html">
<head>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
          crossorigin="anonymous">
    <link href="resources/static/css/main.css">
    <meta charset="UTF-8">
    <title>RENT CAR</title>
</head>
<body>
<header>
    <div class="collapse bg-dark" id="navbarHeader">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-md-7 py-4">
                    <h4 class="text-white">About</h4>
                    <p class="text-muted">Add some information about the album below, the author, or any other
                        background context. Make it a few sentences long so folks can pick up some informative tidbits.
                        Then, link them off to some social networking sites or contact information.</p>
                </div>
                <div class="col-sm-4 offset-md-1 py-4">
                    <h4 class="text-white">Contact</h4>
                    <ul class="list-unstyled">
                        <li><a href="#" class="text-white">Follow on Twitter</a></li>
                        <li><a href="#" class="text-white">Like on Facebook</a></li>
                        <li><a href="#" class="text-white">Email me</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="navbar navbar-dark bg-dark shadow-sm">
        <div class="container">
            <a href="#" class="navbar-brand d-flex align-items-center">
                <a href="/images/logo.png">
                    <img height="auto" class="img-thumbnail" src="/images/logo.png">
                </a>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader"
                    aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </div>
</header>
<main>

    <section class="py-5 text-center container">
        <div class="row py-lg-2">
            <a href="/images/main_rent_car.jpeg">
                <img height="auto" class="img-fluid" src="/images/main_rent_car.jpeg">
            </a>
        </div>
    </section>

    <form action="/" method="get" enctype="multipart/form-data">
        <div class="album py-5 bg-light">
            <div class="container">
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                    <#list cars as car>
                    <div class="col">
                        <div class="card shadow-sm">
                            <img src="/images/${car.previewImageId}">
<#--                            <#list images as img>-->
<#--                                <img src="/images/${img.id}" height="auto">-->
<#--                            </#list>-->
                            <div class="card-body">
                                <p class="card-text">${car.carModel}</p>
                                <p class="card-text">${car.carName}</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-sm btn-outline-secondary"><a href="/car/${car.id}" style="color: black"> View </a></button>
                                    </div>
                                    <small class="text-muted">${car.priceForDay}</small>
                                </div>
                            </div>
<#--                            <th>${car.priceForDay}</th>-->
<#--                            <th>${car.carModel}</th>-->
<#--                            <th>${car.carName}</th>-->
<#--                            <th>${car.color}</th>-->
<#--                            <th><#if car.isBooking>false<#else>true</#if></th>-->
<#--                            <#else>-->
<#--                                <h3>Машин нет</h3>-->
                            </#list>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <#--                    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">-->
    <#--                        <div class="col">-->
    <#--                            <div class="card shadow-sm">-->
    <#--                                <svg class="bd-placeholder-img card-img-top" width="100%" height="225"-->
    <#--                                     xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail"-->
    <#--                                     preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title>-->
    <#--                                    <rect width="100%" height="100%" fill="#55595c"></rect>-->
    <#--                                    <text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text>-->
    <#--                                </svg>-->

    <#--                                <div class="card-body">-->
    <#--                                    <p class="card-text">This is a wider card with supporting text below as a natural-->
    <#--                                        lead-in to additional content. This content is a little bit longer.</p>-->
    <#--                                    <div class="d-flex justify-content-between align-items-center">-->
    <#--                                        <div class="btn-group">-->
    <#--                                            <button type="button" class="btn btn-sm btn-outline-secondary">View</button>-->
    <#--                                            <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>-->
    <#--                                        </div>-->
    <#--                                        <small class="text-muted">9 mins</small>-->
    <#--                                    </div>-->
    <#--                                </div>-->
    <#--                            </div>-->
    <#--                        </div>-->

</main>
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