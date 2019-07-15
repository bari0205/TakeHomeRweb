<link rel="stylesheet" type="text/css" href="<?php $baseUrl; ?>public/css/style.css">

<div style="margin:auto; padding:50px 0 30px; text-align:center"></div>
<div style="margin:auto; padding:50px 0 30px; text-align:center"></div>


            <div class="left-card">
                <div class="center-left-card">
                <h3>Welcome to</h3>
                <img src="<?php $baseUrl; ?>public/img/logo wh.png" width = "250px">
                <p>Sistem Pengelolaan Lab. Riset</p>
                </div>
            </div>
<div style="margin:auto">
	<form method="post" style="width:400px; margin:auto;">
        <!-- <div class="row">
                <?php
                if (isset($error)) {
                    foreach ($error as $error) {
                        ?>
                        <div class="row alert_box">
                            <div class="col s12">
                                <div class="card red darken-2">
                                    <div class="row">
                                        <div class="col s9">
                                            <div class="card-content white-text">
                                                <?php echo $error; ?>
                                            </div>
                                        </div>
                                        <div class="col s3 white-text">
                                            <i class="mdi mdi-close close right alert_close" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php

                    }
                }
                ?>
            </div> -->



		 <div class="right-card">

        <div class="form-title">
            <h1>Login</h1>
        </div>


        <div class="input-form">
			<div class="input-field col s6">
                <i class="mdi mdi-account-circle prefix"></i>
                <input id="id_user" type="text" class="validate" name="id_user" autofocus>
                <label for="id_user">NIDN/ NIK</label>
            </div>

			<div class="input-field col s6">
                <i class="mdi mdi-lock-outline prefix"></i>
                <input id="password" type="password" class="validate" name="password" >
                <label for="password">Password</label>
            </div>
        </div>

    		<div class="pull-bot-form">
                <button class="btn waves-effect waves-light" type="submit" name="btn_login">Masuk<i class="mdi mdi-send right"></i></button> 
                
              <!--   <button class="btn waves-effect red waves-light" type="button" Value="Login Page" Onclick="window.location.href='index.php'">Cancel<i class="mdi mdi-exit-to-app right"></i></button> -->

            </div>
	</form>
    </div> 
</div>

<script type="text/javascript">
    $('.alert_close').click(function(){
        $( ".alert_box" ).fadeOut( "slow", function() {
        });
    });
</script>