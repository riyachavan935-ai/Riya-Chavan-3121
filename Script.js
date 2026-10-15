let tables=[0,1,0,0,1,0];
let selected=null, cart=[], total=0;

function renderTables(){
 let html='';
 tables.forEach((s,i)=>{
  let cls=s==1?'booked':'free';
  if(selected==i) cls='selected';
  let txt=s==1?'Booked':'Available';
  html+=`<div class="table ${cls}" onclick="selectTable(${i})"><b>Table ${i+1}</b><span>${txt}</span></div>`;
 });
 document.getElementById('tables').innerHTML=html;
 document.getElementById('selTable').innerText=selected!=null?`Table ${selected+1} Selected`:'Not selected';
 document.getElementById('total').innerText=total;
 document.getElementById('cartlist').innerHTML=cart.length?cart.map(c=>`<div class="cart-item"><span>${c.name}</span><span>₹${c.price}</span></div>`).join(''):`<div class="empty">No items added yet<br>First select a table, then add food</div>`;
}
