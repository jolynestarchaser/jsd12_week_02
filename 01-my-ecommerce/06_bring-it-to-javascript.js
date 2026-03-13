// เอา entity ที่เขียนใน diagram มาเขียนในรูปแบบของ Javascript code
// เช่น String for product name, number for price

let item_1 = {
    itemname: "Vinyl",
    item_sku: "sku01",
    quantity: 5,
    price : 10000,
    limited : true,
    available : true,

};

let item_2 = {
    itemname: "CD",
    item_sku: "sku02",
    quantity: 100,
    price : 300,
    limited : true,
    available : true,

};

let item_3 = {
    itemname: "Artwork",
    item_sku: "sku03",
    quantity: 5,
    price : 1000,
    limited : false,
    available : true,

};

let itemList = [item_1, item_2, item_3];

let userid = {
    username: "Preaw",
    displayname: "Preaw lnwza",
    email: "test@gmail.com",
    number: "081234578",
    pw: 1234,
    address: "Bangkok,Thailand",
    Artist: false

}

let userid01 = {
    username: "starchaser",
    displayname: "sterchaseza",
    email: "star@gmail.com",
    number: "555554545",
    pw: 1234,
    address: "Trat,thailand",
    Artist: true

}

console.log("User: "+ userid.displayname)
console.log("Number: "+ userid.number)
console.log("Address: "+ userid.address)
console.log("Item in cart= " + itemList[0].itemname +", "+ itemList[1].itemname + ", "+ itemList[2].itemname);
let total = itemList[0].price + itemList[1].price + itemList[2].price;
console.log("Total = " + total + " THB");