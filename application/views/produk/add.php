<!DOCTYPE html>
<html>
    <section class="content-header">
        <ol class="breadcrumb">
            <li><a href="<?php echo base_url()?>Dashboard"><i class="fa fa-gears"></i> Produk</a></li>
            <li class="active"><?php echo $breadcum; ?></li>
        </ol>
    </section>
    <hr/>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <form class="form-horizontal" id="submit" enctype="multipart/form-data">
                        <div class="box-body">
                            <div class="row space">
                                <div class="col-md-2"><label class="control-label" for="id">id</label></div>
                                <div class="col-md-10">
                                    <input type="heading" name="id" id="id" class="form-control" required autocomplete="off">
                                </div>
                                <div class="col-md-2"><label class="control-label" for="judul">Judul</label></div>
                                <div class="col-md-10">
                                    <input type="text" name="judul" id="Judul" class="form-control" required autocomplete="off">
                                </div>
                                <div class="col-md-2"><label class="control-label" for="sub_judul">Sub Judul</label></div>
                                <div class="col-md-10">
                                    <input type="text" name="sub_judul" id="sub_judul" class="form-control" required autocomplete="off">
                                </div>
                                <div class="col-md-2"><label class="control-label" for="gambar_satu">Gambar Satu</label></div>
                                <div class="col-md-10">
                                    <input type="file" name="gambar_satu" id="gambar_satu" class="form-control" required autocomplete="off">
                                </div>
                                <div class="col-md-2"><label class="control-label" for="gambar_dua">Gambar Dua</label></div>
                                <div class="col-md-10">
                                    <input type="file" name="gambar_dua" id="gambar_dua" class="form-control" required autocomplete="off">
                                </div>
                                <div class="col-md-2"><label class="control-label" for="gambar_tiga">Gambar Tiga</label></div>
                                <div class="col-md-10">
                                    <input type="file" name="gambar_tiga" id="gambar_tiga" class="form-control" required autocomplete="off">
                                </div>
                                <div class="col-md-2"><label class="control-label" for="sub_gambar_satu">Sub Gambar Satu</label></div>
                                <div class="col-md-10">
                                    <input type="text" name="sub_gambar_satu" id="sub_gambar_satu" class="form-control" required autocomplete="off">
                                </div>
                                <div class="col-md-2"><label class="control-label" for="sub_gambar_dua">Sub Gambar Dua</label></div>
                                <div class="col-md-10">
                                    <input type="text" name="sub_gambar_dua" id="sub_gambar_dua" class="form-control" required autocomplete="off">
                                </div>
                                <div class="col-md-2"><label class="control-label" for="sub_gambar_tiga">Sub Gambar Tiga</label></div>
                                <div class="col-md-10">
                                    <input type="text" name="sub_gambar_tiga" id="sub_gambar_tiga" class="form-control" required autocomplete="off">
                                </div>
                            </div>
                            
                            <div class="row text-center">
                                <button class="btn btn-success" type="submit"><i class="fa fa-download">&nbsp&nbsp</i>Simpan</button>&nbsp;&nbsp;&nbsp;<a href="<?php echo base_url()?>Produk/index" class="btn btn-warning"><i class="fa fa-angle-left">&nbsp&nbsp</i>Kembali</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</html>

<script src="<?php echo base_url('assets/js/plugins/jQuery/jQuery-2.1.3.min.js'); ?>"></script>
<script type="text/javascript">
$(document).ready(function(){
    $(".preloader").fadeOut();
    $('#submit').submit(function(e){
        $(".preloader").fadeIn();
        var a = $('#password').val();
        var b = $('#confirm').val();

        if(a!=b){
            alert('Confirmasi Password Tidak Sesuai');
        }else{
            e.preventDefault(); 
                $.ajax({
                    url:'<?php echo base_url();?>Produk/produk_create',
                    type:"post",
                    data:new FormData(this),
                    processData:false,
                    contentType:false,
                    cache:false,
                    async:false,
                    success: function(data){
                        console.log(data)
                        alert("Data Berhasil Disimpan");
                        $(".preloader").fadeOut();
                        window.location.replace("<?php echo base_url('Produk/index')?>");
                    }
                });
        }
        
        
    });
    });
</script>    