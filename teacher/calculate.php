<?php
    include('include/header.php');
    include('include/sidebar.php');
    include('data/student_model.php');
    $classid = isset($_GET['classid']) ? $_GET['classid']:null;    
    $studid = isset($_GET['studid']) ? $_GET['studid']:null;    
    $studentgrade = $student->getstudentgrade($studid,$classid);
    $mystudent = $student->getstudentbyid($studid);
?>
<div id="page-wrapper">

    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    <small>Calculation</small>
                </h1>
                <ol class="breadcrumb">
                    <li>
                        <i class="fa fa-dashboard"></i> <a href="index.php">Dashboard</a>
                    </li>
                    <li>
                        <a href="subject.php">My Subject</a>
                    </li>
                    <li>
                        <a href="student.php?classid=<?php echo $classid?>">My Students</a>
                    </li>
                    <li class="active">
                        Calculate Grade
                    </li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

       <div class="row">
            <div class="col-lg-12">
                 <?php if(isset($_GET['status'])): ?>
                    <?php if($_GET['status'] == 1): ?>
                        <div class="alert alert-success">
                            <strong>Done!</strong>
                        </div>
                    <?php endif; ?>
                <?php endif;?>
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <tr class="bg-primary">
                            <td><strong>Student ID</strong></td>
                            <td><strong>Fullname</strong></td>
                            <td><strong>1st Quarter</strong></td>
                            <td><strong>2nd Quarter</strong></td>
                            <td><strong>3rd Quarter</strong></td>
                            <td><strong>4th Quarter</strong></td>
                        </tr>
                        <?php foreach($mystudent as $row): ?>
                        <tr class="bg-info">
                            <td><?php echo $row['studid'];?></td>
                            <td><?php echo $row['lname'].', '.$row['fname'];?></td>
                            <td><?php echo $studentgrade['first'];?></td>
                            <td><?php echo $studentgrade['second'];?></td>
                            <td><?php echo $studentgrade['third'];?></td>
                            <td><?php echo $studentgrade['fourth'];?></td>
                        </tr>
                        <?php endforeach;?>
                        
                    </table>                    
                </div>               
              
                <div class="col-lg-4 col-md-4">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-bar-chart-o fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php echo $studentgrade['first'];?></div>
                                    <div>1st Quarter</div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <form action="data/grade_model.php?term=1&studid=<?php echo $studid;?>&classid=<?php echo $classid; ?>" method="POST">
                                <div class="form-group">
                                    <lable><strong>Grade</strong></lable><input type="number" min=60 max=100 class="form-control" value="<?php echo $studentgrade['att1'];?>" name="att1" />
                                </div>
                                <button type="submit" class="btn btn-success">Update Grade</button>
                            </form>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4 col-md-4">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-bar-chart-o fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php echo $studentgrade['second'];?></div>
                                    <div>2nd Quarter</div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <form action="data/grade_model.php?term=2&studid=<?php echo $studid;?>&classid=<?php echo $classid; ?>" method="POST">
                                <div class="form-group">
                                    <lable><strong>Grade</strong></lable><input type="number" min=60 max=100 class="form-control" value="<?php echo $studentgrade['att2'];?>" name="att2" />
                                </div>
                                <button type="submit" class="btn btn-success">Update Grade</button>
                            </form>
                        </div>
                    </div>
                </div>
              
                <div class="col-lg-4 col-md-4">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-bar-chart-o fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php echo $studentgrade['third'];?></div>
                                    <div>Third Quarter</div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <form action="data/grade_model.php?term=3&studid=<?php echo $studid;?>&classid=<?php echo $classid; ?>" method="POST">
                                <div class="form-group">
                                    <lable><strong>Grade</strong></lable><input type="number" min=60 max=100 class="form-control" value="<?php echo $studentgrade['att3'];?>" name="att3" />
                                </div>
                                <button type="submit" class="btn btn-success">Update Grade</button>
                            </form>
                        </div>
                    </div>
                </div>
              
                <div class="col-lg-4 col-md-4">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-bar-chart-o fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php echo $studentgrade['fourth'];?></div>
                                    <div>4th Quarter</div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <form action="data/grade_model.php?term=4&studid=<?php echo $studid;?>&classid=<?php echo $classid; ?>" method="POST">
                                <div class="form-group">
                                    <lable><strong>Grade</strong></lable><input type="number" min=50 max=100 class="form-control" value="<?php echo $studentgrade['att4'];?>" name="att4" />
                                </div>
                                <button type="submit" class="btn btn-success">Update Grade</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->        


    </div>
    <!-- /.container-fluid -->

</div>
<!-- /#page-wrapper -->    
<?php include('include/footer.php');