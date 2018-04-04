<?php
    include('../config.php');
    //include('data/subject_model.php');
    include('data/student_model.php');
    include('data/data_model.php');
    include('grade.php');

    $id = $_GET['id'];
    $student = $student->getstudentbyid($id);
    $classid = isset($_GET['classid']) ? $_GET['classid'] : null;  
?>
<!DOCTYPE html>
<html>
<head>
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Print Report</title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <style type="text/css">
        .wrapper {
            margin-top:20px !important;            
            border:1px solid #777;
            background:#fff;
            margin:0 auto;
            padding: 20px;
        }
        body {
            background:#ccc;   
        }
        img {
            max-height:150px;   
            max-width:150px;   
            margin-right:10px;
        }
        .table>thead>tr>th, .table>tbody>tr>th, .table>tfoot>tr>th, .table>thead>tr>td, .table>tbody>tr>td, .table>tfoot>tr>td {
            border-top: none !important;   
        }
        
    </style>
</head>
<body>
    <div class="container wrapper">
        <div class="row">
            <div class="col-lg-12">
                <div class="text-center">                    
                    <h3>Grade Sheet (Form 138)</h3> 
                    <hr />
                    <?php while($row = mysql_fetch_array($student)): ?>
                    <table class="table">
                        <tr>
                            <td style="width:20%;text-align:left;"><strong>Student ID: </strong><?php echo $row['studid']; ?></td>
                        </tr>
                        <tr>
                            <td style="width:10%;text-align:left;"><strong>Name: </strong><?php echo $row['fname'].' '.$row['lname']; ?></td>
                        </tr>
                        <tr>
                            <td class="text-left"><strong>S.Y: </strong><?php echo date('Y')?></td>
                        </tr>
                        <tr>
                            <td style="width:10%;text-align:left;"><strong>DATE: </strong><?php echo date('F d, Y')?></td>
                        </tr>
                    </table>                    
                    <?php endwhile; ?>
                </div>               
            </div>
        </div> 
      
        <div class="row">
            <div class="col-lg-12">                
                <div class="">
                    <table class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th class="text-center">Subjects</th>
                                <th class="text-center">1st Grading</th>
                                <th class="text-center">2nd Grading</th>
                                <th class="text-center">3rd Grading</th>
                                <th class="text-center">4th Grading</th>
                                <th class="text-center">AVERAGE GRADE</th>
                                <th class="text-center">REMARKS</th>
                            </tr>
                        </thead>
                        <tbody>

                    <?php $mysubject = $grade->getsubject(); ?>
                    <?php foreach($mysubject as $row): ?>
                            <tr>
                                <?php $title = $grade->getsubjectitle($row['subject']);?>
                                <td class="text-center"><?php echo $title[0]['title']; ?></td>
                                <?php $mygrade = $grade->getgrade($row['id']); ?>
                                <td class="text-center"><?php echo $mygrade['first']; ?></td>
                                <td class="text-center"><?php echo $mygrade['second']; ?></td>
                                <td class="text-center"><?php echo $mygrade['third']; ?></td>
                                <td class="text-center"><?php echo $mygrade['fourth']; ?></td>
                                <td class="text-center"><?php echo $mygrade['total'];?></td>
                                <?php
                                    if($mygrade['eqtotal']<=3.0){
                                        $remarks = 'PASSED';
                                        $class = 'text-success';
                                    }else{
                                        $remarks = 'FAILED';
                                        $class = 'text-danger';   
                                    }
                                ?>
                                <td class="text-center <?php echo $class;?>"><?php echo $remarks;?></td> 
                            </tr>
                    <?php endforeach; ?>
                    <?php if(!$student): ?>
                        <tr><td colspan="8" class="text-center text-danger"><strong>*** No Result ***</strong></td></tr>
                    <?php endif; ?>
                        </tbody>
                  </table>
                  <br>
                  <h4><strong>Parent's Signature</strong></h4>
                  <br>
                  <h5><strong>1st Quarter: </strong>______________________________________</h5>
                  <h5><strong>2nd Quarter: </strong>______________________________________</h5>
                  <h5><strong>3rd Quarter: </strong>______________________________________</h5>
                  <h5><strong>4th Quarter: </strong>______________________________________</h5>
                </div>        
            </div>
        </div>
      
    </div>
    
</body>

</html>