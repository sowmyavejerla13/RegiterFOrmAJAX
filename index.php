 

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="description" content="">
    <meta name="author" content="Scotch">

    <title>Web Application Task 1</title>

    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
</head>
<style type="text/css">
    
      .success{
        color: green;
      }
      .error{
        color:red;
      }
</style>
<body>
<div class="container">

 
    <h2>Register</h2>
<div   class="loading"></div>
    <div class="message"></div>
    <form method="POST" >

        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control text" id="name" name="name">
        </div>
 
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" class="form-control text" id="email" name="email">
        </div>
 
        <div class="form-group">
            <label for="pincode">Pincode:</label>
            <input type="number" class="form-control text" id="pincode" name="pincode">
        </div>
 
        <div class="form-group">
            <button style="cursor:pointer" type="submit" id ="submit" name ="submit" class="btn btn-primary">Submit</button>
        </div>
       
    </form>
 
</div>
<script type="text/javascript">

     $(document).ready(function() {
   
     
        $('#submit').click(function () {       
            
            var name = $('input[name=name]').val();
            var email = $('input[name=email]').val();
            var pincode = $('input[name=pincode]').val();
            alert (pincode.length);
            if(name == "" || email == "" || pincode == ""){
                $('.message').addClass('error');
                $('.message').html('Please Fill all details! ');
                return false;
            }if(IsEmail(email)==false){
                $('.message').addClass('error');
              $('.message').html('Please enter valid email ');
              return false;
            }
            if(pincode.length != 6){
                $('.message').addClass('error');
                $('.message').html('Please provide correct pincode ');
                return false;
            }
             
            var form_data = 
              'name='+name+
              '&email='+email+
              '&pincode='+pincode;
             
            //$('.text').attr('disabled','true');
             
            $.ajax({
                url: "process.php",
                type: "POST",
                data: form_data,    
                 
                
                //success
                success: function (data) { 
                    console.log(data);
                    var json = JSON.parse(data);
                    console
                    if (json.status==200) {                 
                            $('form').fadeOut('slow');  
                            $('.message').removeClass('error');
                            $('.message').addClass('success');     
                        $('.message').html(json.message).fadeIn('slow');
                         
                    } else {
                         $('.message').removeClass('success');
                            $('.message').addClass('error');
                       $('.message').html(json.message)
                    }              
                }      
            });
             
            return false;
    });

        function IsEmail(email) {
          var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
          if(!regex.test(email)) {
            return false;
          }else{
            return true;
          }
        }
}); 


</script>
</body>
</html>