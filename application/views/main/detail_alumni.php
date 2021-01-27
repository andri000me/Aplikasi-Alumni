<div class="container">    
	<a class="line"><h4 class="margin h1" data-aos="zoom-out" data-aos-duration="500"> Data Alumni : <?php echo $first_name; ?> <?php echo $last_name; ?></h4></a>
		
		<div id="demo">
		<?php if (isset($message)):
         echo  '<p data-aos="zoom-out" data-aos-duration="500">'.$message.'</p>';
        else:
            echo '
				<div class="table-responsive-vertical shadow-z-1">
				<table id="table" class="table table-hover table-striped table-bordered table-mc-light-blue" data-aos="zoom-out" data-aos-duration="500">					
                <tr>
                    <td colspan="3"><center><b>BIODATA DIRI</b></center></td>
                </tr>
                <tr>
                    <td>NISN</td>
                    <td>:</td>
                    <td>'.$nisn.'</td>
                </tr>
                <tr>
                    <td>Nama</td>
                    <td>:</td>
                    <td>'.$first_name.' '.$last_name.'</td>
                </tr>
                <tr>
                    <td>Tempat Tanggal Lahir</td>
                    <td>:</td>
                    <td>'.$tempat_lahir.', '.$tanggal_lahir.'</td>
                </tr>
                <tr>
                    <td>Alamat</td>
                    <td>:</td>
                    <td>'.$alamat.'</td>
                </tr>
                <tr>
                    <td>Nomor Telp.</td>
                    <td>:</td>
                    <td>'.$no_telp.'</td>
                </tr>
                <tr>
                    <td>Tahun Masuk</td>
                    <td>:</td>
                    <td>'.$tahun_masuk.'</td>
                </tr>
                <tr>
                    <td>Tahun Lulus</td>
                    <td>:</td>
                    <td>'.$tahun_lulus.'</td>
                </tr>
                <tr>
                    <td>No. Ijazah</td>
                    <td>:</td>
                    <td>'.$no_ijazah.'</td>
                </tr>
                <tr>
                    <td>No. SKHUN</td>
                    <td>:</td>
                    <td>'.$no_skhun.'</td>
                </tr>
                <tr>
                    <td>Status</td>
                    <td>:</td>
                    <td>'.$status.'</td>
                </tr>
                <tr>
                    <td>Detail status</td>
                    <td>:</td>
                    <td>'.$deskripsi.'</td>
                </tr>
                <br>
                <tr>
                    <td colspan="3"><center><b>BIODATA ORANG TUA</center></b></td>
                </tr>
                <tr>
                    <td>Nama Ayah</td>
                    <td>:</td>
                    <td>'.$nama_ayah.'</td>
                </tr>
                <tr>
                    <td>Pekerjaan Ayah</td>
                    <td>:</td>
                    <td>'.$pekerjaan_ayah.'</td>
                </tr>
                <tr>
                    <td>Nama Ibu</td>
                    <td>:</td>
                    <td>'.$nama_ibu.'</td>
                </tr>
                <tr>
                    <td>Pekerjaan Ibu</td>
                    <td>:</td>
                    <td>'.$pekerjaan_ibu.'</td>
                </tr>	
				
				</table>
				</div>
				';
        endif; ?>
		
		</div>
		
</div>