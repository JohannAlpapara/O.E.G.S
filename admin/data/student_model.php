<?php
    $student = new Datastudent();
    if(isset($_GET['q'])){
        $student->$_GET['q']();
    }
    class Datastudent {
        
        function __construct(){
            if(!isset($_SESSION['id'])){
                header('location:../../');   
            }
        }
        
        //create logs
        function logs($act){            
            $date = date('m-d-Y h:i:s A');
            echo $q = "insert into log values(null,'$date','$act')";   
            mysql_query($q);
            return true;
        }
        
        //get all student info
        function getstudent($search){
            $q = "select * from student where studid like '%$search%' or fname like '%$search%' or lname like '%$search%' order by lname,fname,studid";
            $r = mysql_query($q);
            
            return $r;
        }
        
        //get class by ID
        function getstudentbyid($id){
            $q = "select * from student where id=$id";
            $r = mysql_query($q);
            
            return $r;
        }
        //add student
        function addstudent(){
            include('../../config.php');
            $studid = $_POST['studid'];
            $fname = $_POST['fname'];
            $lname = $_POST['lname'];
          
          
            $query=mysql_query("select * from student where studid='".$studid."' ") or die(mysql_error());
            $duplicate=mysql_num_rows($query);
            if($duplicate==0)
            {
              $q = "insert into student values('','$studid','$fname','$lname')";
              mysql_query($q);
              $name = $fname.' '.$lname;
              $act = "add new student $name";
              $this->logs($act);
            
            header('location:../studentlist.php?r=added');
            }
            else
            {
              echo'The name '.$studid.' is already present in the user table';
            header('location:../studentlist.php?r=has already an account');
            }
        }
        
        //update student
        function updatestudent(){
            include('../../config.php');
            $id = $_GET['id'];
            $studid = $_POST['studid'];
            $fname = $_POST['fname'];
            $lname = $_POST['lname'];
            $q = "update student set studid='$studid', fname='$fname', lname='$lname' where id=$id";
            mysql_query($q);
            
            $name = $fname.' '.$lname;
            $act = "update student $name";
            $this->logs($act);
            
            header('location:../studentlist.php?r=updated');
        }
        //remove from class
        function removesubject(){
            include('../../config.php');
            $studid = $_GET['studid'];
            $classid = $_GET['classid'];
            mysql_query("delete from studentsubject where studid=$studid and classid=$classid");
            
            $tmp = mysql_query("select * from class where id=$classid");
            $tmp_row = mysql_fetch_array($tmp);
            $tmp_subject = $tmp_row['subject'];
            $tmp_class = $tmp_row['course'].' '.$tmp_row['year'].'-'.$tmp_row['section'];
            
            $tmp = mysql_query("select * from student where id=$studid");
            $tmp_row = mysql_fetch_array($tmp);
            $tmp_student = $tmp_row['fname'].' '.$tmp_row['lname'];
            
            $act = "remove student $tmp_student from class $tmp_class with the subject of $tmp_subject";
            $this->logs($act);
            
            header('location:../studentsubject.php?id='.$studid.'');
        }
        
        function getstudentbyclass($classid){
            $q = "select * from studentsubject where classid=$classid";
            $r = mysql_query($q);
            $student = array();
            if($classid != null){
               while($row = mysql_fetch_array($r)){
                    $q2 = 'select * from student where id='.$row['studid'].'';  
                    $r2 = mysql_query($q2);
                    $student[] = mysql_fetch_array($r2);    
                } 
            }
            return $student;
        }
        
        function getstudentbysearch($classid,$search){
            $q = "select * from student where fname like '%$search%' or lname like '%$search%' or studid like '%$search%'";
            $r = mysql_query($q);
            $student = array();
            while($row = mysql_fetch_array($r)){
                $q2 = 'select * from studentsubject where studid='.$row['id'].' and classid='.$classid.'';  
                $r2 = mysql_query($q2);
                if(mysql_num_rows($r2) > 0) {
                    $student[] = $row;
                }

            }
            return $student;        
        }
        
        function getstudentgrade($studid,$classid){
            $q = "select * from studentsubject where studid='$studid' and classid='$classid'";
            $r = mysql_query($q);
            if($row = mysql_fetch_array($r)){
                $att1 = ($row['att1']);   
                $att2 = ($row['att2']);   
                $att3 = ($row['att3']);   
                $att4 = ($row['att4']); 
                
                $first = $att1;
                $second = $att2;
                $third = $att3;
                $fourth = $att4;
                
                $data = array(
                    'first' => round($first),
                    'second' => round($second),
                    'third' => round($third),
                    'fourth' => round($fourth),
                    'att1' => $row['att1'],
                    'att2' => $row['att2'],
                    'att3' => $row['att3'],
                    'att4' => $row['att4'],
                );
            }
            
            return $data;
        }
    }
?>