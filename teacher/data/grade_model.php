<?php
    include('../../config.php');
    $studid = $_GET['studid'];
    $classid = $_GET['classid'];
    $term = $_GET['term'];
    
    $grade = new Datagrade();
    if($term == 1){
        $grade->first($studid,$classid);   
    }else if($term == 2){
        $grade->second($studid,$classid);   
    }else if($term == 3){
        $grade->third($studid,$classid);   
    }else if($term == 4){
        $grade->fourth($studid,$classid);   
    }
    class Datagrade {
        
        function __construct(){
            if(!isset($_SESSION['id'])){
                header('location:../../');   
            }
        }
        
        function logs($act){            
            $date = date('m-d-Y h:i:s A');
            echo $q = "insert into log values(null,'$date','$act')";   
            mysql_query($q);
            return true;
        }
        
        function first($studid,$classid){
            $att = $_POST['att1'];    
            $q = "update studentsubject set att1=$att where studid=$studid and classid=$classid";
            mysql_query($q);
            $term = 'first';
            $this->createlog($studid,$classid,$term);
            
            header('location:../student.php?studid='.$studid.'&classid='.$classid.'&status=1');   
//header('location:../calculate.php?studid='.$studid.'&classid='.$classid.'&status=1');
        }
        
        function second($studid,$classid){
            $att = $_POST['att2'];      
            $q = "update studentsubject set att2=$att where studid=$studid and classid=$classid";
            mysql_query($q);
            $term = 'second';
            $this->createlog($studid,$classid,$term);
            header('location:../student.php?studid='.$studid.'&classid='.$classid.'&status=1');
        }
        
        function third($studid,$classid){
            $att = $_POST['att3'];    
            $q = "update studentsubject set att3=$att where studid=$studid and classid=$classid";
            mysql_query($q);
            $term = 'third';
            $this->createlog($studid,$classid,$term);
            header('location:../student.php?studid='.$studid.'&classid='.$classid.'&status=1');
        }
      
        function fourth($studid,$classid){
            $att = $_POST['att4'];
            $q = "update studentsubject set att4=$att where studid=$studid and classid=$classid";
            mysql_query($q);
            $term = 'fourth';
            $this->createlog($studid,$classid,$term);
            header('location:../student.php?studid='.$studid.'&classid='.$classid.'&status=1');
        }
      
        function createlog($studid,$classid,$term){
            $student = mysql_query("select * from student where id=$studid");
            $student = mysql_fetch_array($student);
            $student = $student['fname'].' '.$student['lname'];
            
            $subject = mysql_query("select * from class where id=$classid");
            $subject = mysql_fetch_array($subject);
            $subject = $subject['subject'];
            
            $act = $_SESSION['id'].' calculated the grades of '.$student.' in '.$subject.' in '.$term.'';
            $this->logs($act);
            return true;
        }
    }
?>