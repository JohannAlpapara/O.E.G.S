<?php
    
    $grade = new Datagrade();

    function __construct(){
            if(!isset($_SESSION['id'])){
                header('location:../../');   
            }
        }

    class Datagrade {
        
        function __construct(){
            if(!isset($_SESSION['id'])){
                header('location:../../');   
            }
        }
        
        function getid(){
            $studid = $_SESSION['id'];
            $r = mysql_query("select * from student where studid='$studid'");
            $row = mysql_fetch_array($r);
            $id = $row['id'];
            return $id;
        }
        
        function getsubject(){
            $id = $this->getid();
            $q = "select * from studentsubject where studid=$id";
            $r = mysql_query($q);
            $data = array();
            while($row = mysql_fetch_array($r)){
                $classid = $row['classid'];
                $q2 = "select * from class where id=$classid";   
                $r2 = mysql_query($q2);  
                $data[] = mysql_fetch_array($r2);
            }
            return $data;
        }
        
        function getsubjectitle($code){
            $q = "select * from subject where code='$code'";
            $r = mysql_query($q);
            $data = array();
            $data[] = mysql_fetch_array($r);
            return $data;
        }
        
        function getgrade($classid){
            $studid = $this->getid();
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
        function getteacher($teachid){
            $r = mysql_query("select * from teacher where id=$teachid");
            $result = mysql_fetch_array($r);
            $data = $result['fname'].' '.$result['lname'];
            return $data;
        }
        
    }
?>