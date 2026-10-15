function selectTable(i){
 if(tables[i]==1){alert('This table is already booked!');return;}
 selected=i;
 renderTables();
}

function order(name,price){
 if(selected==null){alert('Please select a table first!');return;}
 cart.push({name,price});
 total+=price;
 renderTables();
}

function checkout(){
 if(selected==null){alert('Please select a table first!');return;}
 if(cart.length==0){alert('Please add some food!');return;}
 alert(`Order Placed Successfully!\n\nTable: ${selected+1}\nItems: ${cart.length}\nTotal: ₹${total}\n\nThank you for visiting Hotel Royal Mumbai!`);
 // reset after order
 tables[selected]=1;
 selected=null; cart=[]; total=0;
 renderTables();
}
