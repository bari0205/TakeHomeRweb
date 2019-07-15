<div class="container">
    <div class="row">
        <div class="col s12 m5 card z-depth-3">
            <!-- Start Alert box -->
            <?php
            if (isset($error)) {
                foreach ($error as $error) {
                    ?>
                    <div class="row alert_box">
                        <div class="col s12 m12">
                            <div class="card red darken-2">
                                <div class="row">
                                    <div class="col s9">
                                        <div class="card-content white-text">
                                            <p><?php echo $error; ?></p>
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
            <!-- End Alert box -->
            <form class="col s12 m12"  method="post">
                <input type="hidden" value="<?php echo $detailFaculty->id_fakultas; ?>" name="id_fakultas">
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" name="nama_fakultas" id="nama_faculty" value="<?php echo $detailFaculty->nama_fakultas;?>" class="validate" autofocus>
                        <label for="nama_faculty">Nama Fakultas</label>
                    </div>
                </div>
                <div class="row">
                    <div class="col s12">
                        <button  type="submit" name="btn_update" class="waves-effect waves-light btn col s12 blue">Ubah</button>
                    </div>
                </div>
                <div class="row">
                    <div class="col s12">
                        <a href="javascript:history.back()" class="waves-effect waves-light btn right light-green accent-3">Kembali</a>
                    </div>
                </div>
            </form>
        </div>
    </div>

</div>

<script type="text/javascript">
    (function($){
        $(function(){

            //For dialog box
            $('.alert_close').click(function(){
                $( ".alert_box" ).fadeOut( "slow", function() {
                });
            });

        }); // end of document ready
    })(jQuery); // end of jQuery name space
</script>