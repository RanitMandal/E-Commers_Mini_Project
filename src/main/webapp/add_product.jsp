
<!DOCTYPE html>
<html>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}
input[type=reset] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=reset]:hover {
  background-color: #45a049;
}
div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<body>

<h3>Add Product</h3>

<div>
  <form action="Product" method="GET" enctype="multipart/form-data" >
    <label for="productid">Product Id</label>
    <input type="text"  name="prodid" placeholder="Product Id..">

    <label for="productname">ProductName</label>
    <input type="text"  name="prodname" placeholder="Product name..">

    <label for="catagory">Catagory</label>
    <select id="country" name="catagory">
      <option value="menscollection">Men's Collection</option>
      <option value="womenscollection">Women's Collection</option>
      <option value="handbag">HandBags</option>
      <option value="jwellery">Jwellery</option>
      <option value="perfumes">Perfumes</option>
      <option value="shoes">Shoes</option>
    </select>
  <label for="quantity">Quantity</label>
    <input type="text"  name="qty" placeholder="Quantity..">
    
    <label for="price">Price</label>
    <input type="text"  name="price" placeholder="Price..">
     <label for="remarks">Remarks</label>
    <input type="text"  name="remarks" placeholder="Remarks..">
    Select File:<input type="file" name="fname"/>
    <input type="submit" value="Submit">
    <input type="reset" value="Clear">
  </form>
</div>

</body>
</html>


