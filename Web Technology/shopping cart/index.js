function SaveProduct(event) {
	//Get table body of product list table
	var tableBody = document.getElementById("dtTable").getElementsByTagName('tbody')[0];
	
	//Fetch variable values from Form
	var pname = document.getElementById('pname').value;
	var pPrice = document.getElementById('txtPrice').value;
	var pQTY = document.getElementById('txtQty').value;
	
	var pIMG = document.getElementById('pimage').files[0];
	var ImageURL = (pIMG != undefined) ? URL.createObjectURL(pIMG) : "";
	
	//Create Image tag
	var img = document.createElement("img");
	img.style.width = "50px";
	img.style.height = "50px";
	img.src = ImageURL
	var row = tableBody.insertRow(-1);
	var cell1 = row.insertCell(0);
	var cell2 = row.insertCell(1);
	var cell3 = row.insertCell(2);
	var cell4 = row.insertCell(3);
	var cell5 = row.insertCell(4);
	
	//Set values in table
	cell1.appendChild(img);
	cell2.innerHTML = pname;
	cell3.innerHTML = pPrice;
	cell4.innerHTML = pQTY;
	cell5.innerHTML = '<button type="button" class="btnDelete" onclick="deleteRow(this);">Delete</button><button type="button" class="btnAddToCart" onclick="addtocart(this,\'' + ImageURL + '\');">Add to Cart</button>';
	
	document.getElementsByClassName("CreateProductForm")[0].reset();
}

function deleteRow(btn) {
	var row = btn.parentNode.parentNode;
	row.parentNode.removeChild(row);
}

function removeItemFromCart(btn) {	
	var row = btn.parentNode.parentNode;
	var orderTotal = parseInt(document.getElementById("total").textContent);
	var pPrice = parseInt(row.cells[2].textContent.trim());
	var pQTY = parseInt(row.cells[3].textContent.trim());
	orderTotal -= pPrice * pQTY;
	document.getElementById("total").textContent = orderTotal;
	row.parentNode.removeChild(row);
}

function addtocart(btn, strImg){
	var tableBody = document.getElementById("cartTable").getElementsByTagName('tbody')[0];
	var orderTotal = (document.getElementById("total").textContent != "") ? parseInt(document.getElementById("total").textContent) : 0;
	
	var row = btn.parentNode.parentNode;
	var pname = row.cells[1].textContent.trim();
	var pPrice = parseInt(row.cells[2].textContent.trim());	
	var pQTY = parseInt(row.cells[3].textContent.trim());	
	orderTotal += pPrice * pQTY;
	document.getElementById("total").textContent = orderTotal;
	
	var img = document.createElement("img");
	img.style.width = "100px";
	img.style.height = "100px";
	img.src = strImg;
	var row = tableBody.insertRow(-1);
	var cell1 = row.insertCell(0);
	var cell2 = row.insertCell(1);
	var cell3 = row.insertCell(2);
	var cell4 = row.insertCell(3);
	var cell5 = row.insertCell(4);
	cell1.appendChild(img);
	cell2.innerHTML = pname;
	cell3.innerHTML = pPrice;
	cell4.innerHTML = pQTY;
	cell5.innerHTML = '<button type="button" class="btnRemoveItem" onclick="removeItemFromCart(this);">Delete</button>';
}
