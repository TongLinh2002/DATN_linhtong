var token = localStorage.getItem("token");
async function loadAllUser() {
    $('#example').DataTable().destroy();
    var role = document.getElementById("rolesort").value
    var url = 'http://localhost:8080/api/admin/getAllUser';
    if(role != ""){
        url = 'http://localhost:8080/api/admin/getAllUser?role='+role;
    }
    const response = await fetch(url, {
        method: 'GET',
        headers: new Headers({
            'Authorization': 'Bearer ' + token
        })
    });
    var listUser = await response.json();
    console.log(listUser)
    var main = '';
    var activebtn = 'btn btn-primary'
    var activename = 'khóa'
    var activeicon = 'fa fa-lock'
    var type = 1;
    for (i = 0; i < listUser.length; i++) {
        if(listUser[i].actived == 0){
            activebtn = 'btn btn-danger'
            activename = 'mở khóa'
            activeicon = 'fa fa-unlock'
            type = 0;
        }
        else{
            activebtn = 'btn btn-primary'
            activename = 'khóa'
            activeicon = 'fa fa-lock'
            type = 1;
        }

        main += '<tr>'+
            '<td>#'+listUser[i].id+'</td>'+
            '<td>'+listUser[i].username+'</td>'+
            '<td>'+listUser[i].fullname+'</td>'+
            '<td>'+listUser[i].created_date+'</td>'+
            '<td>'+listUser[i].diaChi+'</td>'+
            '<td>'+listUser[i].authorities[0].name+'</td>'+
            '<td><button onclick="lockOrUnlock('+listUser[i].id+','+type+')" class="'+activebtn+'"><i class="'+activeicon+'"></i> '+activename+'</button></td>'+
            '</tr>'
    }
    document.getElementById("listuser").innerHTML = main
    $('#example').DataTable();
}


async function lockOrUnlock(id, type) {
    var url = 'http://localhost:8080/api/admin/activeUser?id=' + id;
    const response = await fetch(url, {
        method: 'POST',
        headers: new Headers({
            'Authorization': 'Bearer ' + token
        })
    });
    if (response.status < 300) {
        var mess = '';
        if(type == 1){
            mess = 'Khóa thành công'
        }
        else{
            mess = 'Mở khóa thành công'
        }
        swal({
                title: "Thông báo",
                text: mess,
                type: "success"
            },
            function(){
                window.location.reload();
            });
    }
    else {
        swal({
                title: "Thông báo",
                text: "hành động thất bại",
                type: "error"
            },
            function(){
                window.location.reload();
            });
    }
}

async function addtk() {
    var url = 'http://localhost:8080/api/admin/addAdmin'
    var email = document.getElementById("email").value
    var fullname = document.getElementById("fullname").value
    var address = document.getElementById("address").value
    var password = document.getElementById("pass").value
    var repassword = document.getElementById("repass").value
    var rolename = document.getElementById("rolename").value
    var user = {
        "username": email,
        "email": email,
        "fullname": fullname,
        "diaChi": address,
        "password": password,
        "authorities": [
            rolename
        ]
    }
    if(password != repassword){
        alert("Mật khẩu không trùng khớp")
        return;
    }
    if(password === "" || repassword === ""){
        alert("mật khẩu không được để trống!")
        return;
    }
    const res = await fetch(url, {
        method: 'POST',
        headers: new Headers({
            'Authorization': 'Bearer ' + token,
            'Content-Type': 'application/json'
        }),
        body: JSON.stringify(user)
    });
    var result = await res.text();
    console.log(result)
    if (result === '1') {
        alert("email đã tồn tại")
    }
    else if (result === '0') {
        swal({
                title: "Thông báo",
                text: "Tạo tài khoản admin thành công!",
                type: "success"
            },
            function(){
                window.location.reload();
            });
    }
}