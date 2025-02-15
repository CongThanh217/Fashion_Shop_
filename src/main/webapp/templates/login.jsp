<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Fashion Shop - Login</title>

    <link href="${pageContext.request.contextPath}/static/common/css/font-awesome.min.css" rel="stylesheet"
          type="text/css">
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
          rel="stylesheet">

    <link href="${pageContext.request.contextPath}/static/sb-admin-2.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans"/>

</head>
<style>

   {
        display: flex;
        align-items: center;
        justify-content: center;
        background-color: #fff;
        border: 1px solid #ddd;
        border-radius: 20px;
        padding: 8px 12px;
        cursor: pointer;
        width: 100%;
    }

   {
        margin-right: 8px;
        width: 20px;
        height: 20px;
        background-image: url('https://storage.googleapis.com/support-kms-prod/ZAl1gIwyUsvfwxoW9ns47iJFioHXODBbIkrK'); /* Replace with the URL of the Google icon image */
        background-size: cover;
        border-radius: 50%;
    }


</style>
<body>
<jsp:include page="./common/notifier.jsp"/>
<div style="margin-top: 80px" class="container">

    <div class="row justify-content-center">

        <div class="col-xl-10 col-lg-12 col-md-9">

            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <div class="row">
                        <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                        <div class="col-lg-6">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Fashion Shop</h1>
                                </div>
                                <form method="post" class="user">
                                    <div class="form-group">
                                        <input
                                                id="exampleInputEmail"
                                                type="email"
                                                class="form-control form-control-user"
                                                placeholder="Nhập địa chỉ email..."
                                                name="email"
                                                value="${ _data.email }"
                                                required
                                        >
                                    </div>
                                    <div class="form-group">
                                        <input
                                                id="exampleInputPassword"
                                                type="password"
                                                class="form-control form-control-user"
                                                placeholder="Password"
                                                name="password"
                                                value="${ _data.password }"
                                                required
                                        >
                                    </div>


                                    <button class="btn btn-primary btn-user btn-block">
                                        Đăng nhập
                                    </button>
                                    <div class="text-center text-lg-start mt-4 pt-2">
                                        <p class="small fw-bold mt-2 pt-1 mb-0">Bạn chưa có tài khoản? <a
                                                href="${pageContext.request.contextPath}/auth/register"
                                                class="link-danger">Đăng ký</a></p>
                                    </div>
                                </form>
                                <hr>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/static/common/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/static/common/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/common/js/sweetalert2.js"></script>
<script src="${pageContext.request.contextPath}/static/common/js/notifier.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>

</body>

</html>