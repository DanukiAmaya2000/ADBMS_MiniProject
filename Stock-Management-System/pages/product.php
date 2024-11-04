<?php
include '../includes/connection.php';
include '../includes/sidebar.php';

// Query using the User_Type_View
$query = 'SELECT ID, TYPE FROM User_Type_View WHERE ID = '.$_SESSION['MEMBER_ID'];
$result = mysqli_query($db, $query) or die (mysqli_error($db));

while ($row = mysqli_fetch_assoc($result)) {
    $Aa = $row['TYPE'];
    if ($Aa == 'User') {
?>
        <script type="text/javascript">
            alert("Restricted Page! You will be redirected to POS");
            window.location = "pos.php";
        </script>
<?php   
    }
}

// Query using the Category_View
$sql = "SELECT CNAME, CATEGORY_ID FROM Category_View";
$result = mysqli_query($db, $sql) or die ("Bad SQL: $sql");

$aaa = "<select class='form-control' name='category' required>
        <option disabled selected hidden>Select Category</option>";
while ($row = mysqli_fetch_assoc($result)) {
    $aaa .= "<option value='".$row['CATEGORY_ID']."'>".$row['CNAME']."</option>";
}
$aaa .= "</select>";

// Query using the Supplier_View
$sql2 = "SELECT SUPPLIER_ID, COMPANY_NAME FROM Supplier_View";
$result2 = mysqli_query($db, $sql2) or die ("Bad SQL: $sql2");

$sup = "<select class='form-control' name='supplier' required>
        <option disabled selected hidden>Select Supplier</option>";
while ($row = mysqli_fetch_assoc($result2)) {
    $sup .= "<option value='".$row['SUPPLIER_ID']."'>".$row['COMPANY_NAME']."</option>";
}
$sup .= "</select>";
?>

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h4 class="m-2 font-weight-bold text-primary">Product&nbsp;
        <a href="pro_add.php" class="btn btn-primary" role="button">
            <i class="fas fa-fw fa-plus"></i> 
        </a>
            <!--
            <a href="" data-toggle="modal" data-target="#aModal" type="button" class="btn btn-primary bg-gradient-primary" style="border-radius: 0px;">
                <i class="fas fa-fw fa-plus"></i>
            </a>-->
        </h4>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0"> 
                <thead>
                    <tr>
                        <th>Product Code</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Category</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>

<?php
// Query using the Product_Details_View
$query = 'SELECT PRODUCT_ID, PRODUCT_CODE, NAME, PRICE, CNAME FROM Product_Details_View';
$result = mysqli_query($db, $query) or die (mysqli_error($db));

while ($row = mysqli_fetch_assoc($result)) {
    echo '<tr>';
    echo '<td>'. $row['PRODUCT_CODE'].'</td>';
    echo '<td>'. $row['NAME'].'</td>';
    echo '<td>'. $row['PRICE'].'</td>';
    echo '<td>'. $row['CNAME'].'</td>';
    echo '<td align="right">
            <div class="btn-group">
                <a type="button" class="btn btn-primary bg-gradient-primary" href="pro_searchfrm.php?action=edit&id='.$row['PRODUCT_CODE'].'"><i class="fas fa-fw fa-list-alt"></i> Details</a>
                <div class="btn-group">
                    <a type="button" class="btn btn-primary bg-gradient-primary dropdown no-arrow" data-toggle="dropdown" style="color:white;">
                        ... <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu text-center" role="menu">
                        <li>
                            <a type="button" class="btn btn-warning bg-gradient-warning btn-block" style="border-radius: 0px;" href="pro_edit.php?action=edit&id='.$row['PRODUCT_ID'].'">
                                <i class="fas fa-fw fa-edit"></i> Edit
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
          </td>';
    echo '</tr>';
}
?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<?php
include '../includes/footer.php';
?>
