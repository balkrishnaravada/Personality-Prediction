<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="ISO-8859-1">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <title>Sample Collector Login</title>
</head>

<%@ include file="/view/layout/appHeader.html" %>

<body>

  <div class="container">
    <br> <br> <br> <br> <br>
    <div class="row">
      <div class="col-md-3">
      </div>
      <div class="col-md-6">

      </div>
      <div class="col-md-3">
      </div>
    </div>

    <div class="row">
      <div class="col-md-3">
      </div>
      <div class="col-md-6">
        <div class="panel-group">

          <div class="panel panel-primary">
            <div class="panel-heading">
              <center>
                <h4>Sample Collector Login</h4>
              </center>
            </div>
            <div class="panel-body">
              <form action="login" method="post">


                <div class="form-group">
                  <label for="usr">Email:</label>
                  <input type="text" class="form-control" name="email">
                </div>
                <div class="form-group">
                  <label for="usr">Password:</label>
                  <input type="text" class="form-control" name="password">
                </div>
                <div class="form-group">
                  <input type="submit" class="btn btn-primary" value="Login">
                  <a href="${pageContext.request.contextPath}/SampleCollectorServlet/create"
                    class="btn btn-primary">Register</a>
                  ${message }
                </div>

                <div class="row">
                  <div class="col-md-4">
                    <a href="${pageContext.request.contextPath}/DoctorServlet/login" class="">Doctor Login</a>
                  </div>
                  <div class="col-md-4">
                    <a href="${pageContext.request.contextPath}/SampleCollectorServlet/login" class="">Sample Collector
                      Login</a>
                  </div>
                  <div class="col-md-4">
                    <a href="${pageContext.request.contextPath}/HighOfficialsServlet/login" class="">High Officials
                      Login</a>
                  </div>
                </div>

              </form>

              <!-- <form action="DrLoginServlet">
                <input type="radio" id="role" name="doctor" value="doctor">
                <label for="doctor">Doctor Login</label><br>
              </form>
                
              <form action="HoLoginServlet">
                <input type="radio" id="role" name="higher_Officials" value="higher_Officials">
                <label for="higher_Officials">Higher Officials Login</label><br>  
              </form>
              
              <form action="ScLoginServlet">
                <input type="radio" id="role" name="sample_Collector" value="sample_Collector">
                <label for="sample_Collector">Sample Collector Login</label><br>
              </form> -->

            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-3">
    </div>
  </div>

  <script type="text/javascript">

    $('input[type=radio]').on('change', function () {
      $(this).closest("form").submit();
    });

  </script>

</body>

<%@ include file="/view/layout/footer.html" %>


</html>