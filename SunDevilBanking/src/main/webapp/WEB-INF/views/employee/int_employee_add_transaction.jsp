<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${pageContext.servletContext.contextPath}/static/favicon.ico">

    <title>SBS Internal Employee Add Transactions - Group 11</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.servletContext.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="${pageContext.servletContext.contextPath}/static/css/bootstrap-theme.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.servletContext.contextPath}/static/css/custom.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body role="document">

    <div class="container container-main" role="main">

      <div class="row">
        
        <div class="col-sm-3 col-md-2 sidebar">

          <ul class="nav nav-sidebar">
            <li><a href="#">Home</a></li>
            <li><a href="#">Pending Transactions</a></li>
            <li><a href="#">Add Transactions</a></li>
            <li><a href="#">Request Manager</a></li>
            <li><a href="#">Request Admin</a></li>
            <li><a href="#">Settings</a></li>
            <li><a href="#">Logout </a></li>
          </ul>
          
        </div> <!-- sidebar -->

        <div class="col-sm-9 col-md-10 main">

          <div class="page-header">
            <h1>SBS - Welcome Jack Doe </h1>
          </div>

          <h2>Add Transactions:</h2>
		  <br>

          <div id="fund-transfer">
            <div class="modal-body">
              <p>
                <label>Account Details:</label>
                <select class="form-control">
                  <option>Select an Account</option>
                  <option>Checking Account (*1234)</option>
                  <option>Savings Account (*5678)</option>
                </select>
              </p>                  
              <hr>
              <p>
                <label>Current Balance:</label>
                <p><i> $200.56 </i></p>
              </p>
              <hr>
              <div>
                <label>Transfer Type:</label><br>
                <div class="btn-group" role="group">
                  <button title="Transfer to User's another account within the bank" type="button" class="internal-transfer transfer-option-btn btn btn-default">Internal Transfer</button>
                  <button title="Transfer to another User's account within the bank" type="button" class="external-transfer transfer-option-btn btn btn-default">External Transfer</button>
                </div>
              </div>
              <div class="transfer-account-details">
                <div id="internal-transfer" class="hidden">
                  <select class="form-control">
                    <option>Select credit account</option>
                    <option>${User}'s Checking Account (*1234)</option>
                    <option>${User}'s Savings Account (*5678)</option>
                  </select>
                </div>

                <div id="external-transfer" class="hidden">
                  <p>
                    <label>User's Name:</label>
                    <input type="text" class="form-control" placeholder="ex: Rishi">
                  </p>
                  <p>
                    <label>Account No.:</label>
                    <input type="text" class="form-control" placeholder="ex: 123456789">
                  </p>
                </div>
              </div>
              <hr>
              <p>
                <label>Amount to Transfer:</label>
                <input type="text" class="form-control" placeholder="ex: 0.00">
              </p>
            </div>
            <div class="modal-footer">                
              <button type="button" class="btn btn-success">Add Transaction</button>
            </div>
          </div><!-- /. -->
          
        </div> <!-- /main -->

      </div> <!-- /row -->

      <div id="virtualKeyboard">        
      </div>

    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/static/js/bootstrap.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/static/js/jsKeyboard.js"></script>
    <script src="${pageContext.servletContext.contextPath}/static/js/common.js"></script>
  </body>
</html>
