<?php include 'inc/header.php'; ?>         
<?php include 'inc/sidebar.php'; ?>  
<?php if(Session::get('userRole') =='1' ){
    echo "<script>window.location = 'index.php';</script>";
    }
?>
<?php
    $catid = mysqli_real_escape_string($db->link,$_GET['catid']);
    if(!isset($catid) || $catid == NULL){
        header("Location:catlist.php");
    }else{
        $id = $catid;
    }
?>
<div class="grid_10">
    <div class="box round first grid">
        <h2>Update Category</h2>
       <div class="block copyblock">
           <?php
               if($_SERVER['REQUEST_METHOD'] == 'POST'){
                   $name = $_POST['name']; 
                   $name = mysqli_real_escape_string($db->link,$name);
                   if(empty($name)){
                       echo "<span class='error'>Field must not be empty!!</span>";
                   }else{
                       $query = "update tbl_category set name = '$name' where id = '$id';";
                       $updated_row = $db->update($query);
                       if($updated_row){
                           echo "<span class='success'>Category updated Successfully!!</span>";
                       }else{
                           echo "<span class='error'>Update Failed!!</span>";
                       }
                   }
               }
           ?>
           <?php 
               $query = "select * from tbl_category where id = '$id' order by id desc;";
               $category = $db->select($query);
               if($category){
                while($result = $category->fetch_assoc()){
           ?>
         <form action="" method="post">
            <table class="form">					
                <tr>
                    <td>
                        <input type="text" name="name" value ="<?php echo $result['name']?>" class="medium" />
                    </td>
                </tr>
                <tr> 
                    <td>
                        <input type="submit" name="submit" value="Update" />
                    </td>
                </tr>
            </table>
            </form>
           <?php } } ?>
        </div>
    </div>
</div>
<?php include 'inc/footer.php'; ?> 
