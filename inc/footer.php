</div>

<div class="footersection templete clear">
  <div class="footermenu clear">
	<ul>
		<li><a href="index.php">Home</a></li>
        <?php
            $query = "select * from tbl_page;";
            $pages = $db->select($query);
            if($pages){
                while($result = $pages->fetch_assoc()){  
        ?>
		<li><a  href="page.php?pageid=<?php echo $result['id']; ?>"><?php echo $result['name']; ?></a></li>
        <?php } } ?>
        <li><a href="contact.php">Contact</a></li>
	</ul>
  </div>
  <?php
    $query = "select * from tbl_footer where id='1';";
    $footernote = $db->select($query);
    if($footernote){
        while($result = $footernote->fetch_assoc()){ 
  ?>
  <p>&copy;<?php echo $result['note']; ?><?php echo date('Y')?></p>
  <?php } } ?>
</div>
<div class="fixedicon clear">
    <?php
        $query = "select * from tbl_social where id='1';";
        $social = $db->select($query);
        if($social){
            while($result = $social->fetch_assoc()){ 
    ?>
    <a href="<?php echo $result['fb']; ?>" target="_blank"><img src="images/fb.png" alt="Facebook"/></a>
    <a href="<?php echo $result['tw']; ?>" target="_blank"><img src="images/tw.png" alt="Twitter"/></a>
    <a href="<?php echo $result['ln']; ?>" target="_blank"><img src="images/in.png" alt="LinkedIn"/></a>
    <a href="<?php echo $result['gp']; ?>" target="_blank"><img src="images/gl.png" alt="GooglePlus"/></a>
    <?php } } ?>
</div>
<script type="text/javascript" src="js/scrolltop.js"></script>
</body>
</html>