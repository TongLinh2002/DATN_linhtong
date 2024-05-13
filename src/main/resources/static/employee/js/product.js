var token = localStorage.getItem("token");
const listFile = [];
async function loadAllProduct(iddm, idth) {
    var url = 'http://localhost:8080/api/allproduct';
    if(iddm > 0 && idth > 0){
        url = 'http://localhost:8080/api/allproductByDanhMucAndTh?iddm='+iddm+'&idth='+idth;
    }
    const response = await fetch(url, {
        method: 'GET',
        headers: new Headers({
        })
    });
    var listproduct = await response.json();
    var main = '';
    for (i = 0; i < listproduct.length; i++) {
        main += '<tr>'+
                    '<td>'+listproduct[i].id+'</td>'+
                    '<td><img src="'+listproduct[i].imageBanner+'" class="img-sp-admin"></td>'+
                    '<td>'+listproduct[i].name+'</td>'+
                    '<td>'+listproduct[i].createdDate+'</td>'+
                    '<td>'+formatmoney(listproduct[i].price)+'</td>'+
                    '<td>'+formatmoney(listproduct[i].oldPrice)+'</td>'+
                    '<td>'+listproduct[i].quantity+'</td>'+
                '</tr>'
    }
    document.getElementById("listproduct").innerHTML = main
    $('#example').DataTable();
}

async function loadByFilter(){
    var iddm = document.getElementById("danhmuc").value
    var idth = document.getElementById("thuonghieu").value
    loadAllProduct(iddm, idth);
}


const VND = new Intl.NumberFormat('vi-VN', {
    style: 'currency',
    currency: 'VND',
  });

function formatmoney(money) {
    return VND.format(money);
}


async function loadCategory() {
    var url = 'http://localhost:8080/api/public/allcategory';
    const response = await fetch(url, {
        method: 'GET',
        headers: new Headers({
        })
    });
    var listcategory = await response.json();
    var main = '';
    for (i = 0; i < listcategory.length; i++) {
        main += '<option value="'+listcategory[i].id+'">'+listcategory[i].name+'</option>'
    }
    document.getElementById("danhmuc").innerHTML = main

}

async function loadTradeMark() {
    var url = 'http://localhost:8080/api/public/alltrademark';
    const response = await fetch(url, {
        method: 'GET',
        headers: new Headers({
        })
    });
    var list = await response.json();
    var main = '';
    for (i = 0; i < list.length; i++) {
        main += '<option value="'+list[i].id+'">'+list[i].name+'</option>'
    }
    document.getElementById("thuonghieu").innerHTML = main
}

