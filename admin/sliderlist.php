<?php include 'inc/header.php'; ?>         
<?php include 'inc/sidebar.php'; ?> 
<div class="grid_10">
    <div class="box round first grid">
        <h2>Slider List</h2>
        <?php
            if(isset($_GET['delid'])){
                $delid =  mysqli_real_escape_string($db->link,$_GET['delid']);
                $query = "select * from tbl_slider where id = $delid;";
                $delquery ="delete from tbl_slider where id = '$delid';";
                $getdata = $db->select($query);
                if($getdata){
                    while($delimg = $getdata->fetch_assoc()){
                        $dellink = "upload/slider/".$delimg['image'];
                        unlink($dellink);
                    }
                }
                $deldata = $db->delete($delquery);
                 if($deldata){
                   echo "<span class='success'>Slider Image Deleted Successfully!!</span>";
                 }else{
                   echo "<span class='error'>Slider Image Deletion Failed!!</span>";
                 }
            }
        ?>
        <div class="block">  
            <table class="data display datatable" id="example">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Slider Title</th>
                    <th>Slider Image</th>
                    <?php if(Session::get('userRole') == '0'){?>
                    <th>Action</th>
                    <?php } ?>
                </tr>
            </thead>
            <tbody>
                <?php
                    $query = "SELECT *
                    FROM tbl_slider;";
                    $slider = $db->select($query);
                    if($slider){
                        $i = 0;
                        while($result = $slider->fetch_assoc()){
                            $i++;   
                ?>
                <tr class="odd gradeX">
                    <td><?php echo $i; ?></td>
                    <td><?php echo $result['title']; ?></td>
                    <td><img src="upload/slider/<?php echo $result['image']; ?>" height="40px" width="60px"/></td>
                    <td>
                        <?php if(Session::get('userRole') == '0'){?>
                        <a href="editslider.php?sliderid=<?php echo $result['id']; ?>">Edit</a> ||
                        <a onclick="return confirm('Are you sure to Delete?')" href="?delid=<?php echo $result['id']; ?>">Delete</a>
                        <?php } ?>
                        
                        </td>
                </tr>
                 <?php } } ?>
            </tbody>
        </table>

       </div>
    </div>
</div>
 <script type="text/javascript">
    $(document).ready(function () {
        setupLeftMenu();

        $('.datatable').dataTable();
        setSidebarHeight();
    });
</script>
<?php include 'inc/footer.php'; ?>         

