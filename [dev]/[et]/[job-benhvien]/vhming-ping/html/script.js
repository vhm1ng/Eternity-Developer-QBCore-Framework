function menuToggle(state, send) {
    if(state) {
        $(".container").show();
    } else {
        $(".container").hide();
        $(".info").hide();
    }
    if(send){
        $.post("https://vhming-ping/toggle",JSON.stringify({state:state}));
    }
}

$(function(){
    $('.scroll').slimScroll({
        height: '700px',
    });
});

$(function(){
    menuToggle(false,false);
    var datacache = null;

    document.onkeyup = function (data) {
        if (data.which == 27) {
            menuToggle(false,true);
        }
    };

    $(document).on("click",".nhan",function(){
        if($(this).val() != 0){
            $.post("https://vhming-ping/nhan",JSON.stringify({id:$(this).val(), x: $(this).attr('x'), y: $(this).attr('y')}));
        }
    });

    $(document).on("click",".huy",function(){
        $.post("https://vhming-ping/huy",JSON.stringify({id:$(this).val()}));
    });

    $(document).on("click",".xoa",function(){
        var data = $(this).val();
        var name = $(this).attr('gname');
        $("body").overhang({
          type: "confirm",
          primary: "#40D47E",
          accent: "#27AE60",
          yesColor: "#3498DB",
          message: "Bạn có muốn xoá " + name + "?",
          yesMessage: "Đồng ý!",
          noMessage: "Huỷ bỏ",
          overlay: true,
          callback: function (value) {
            var response = value ? "Yes" : "No";
            if(response == "Yes"){
                $.post("https://vhming-ping/xoa",JSON.stringify({id:data}));
            }
          }
        });
        
    });

	window.addEventListener('message', function(event){
		if(event.data.type == "getpinglist") {
            $(".tablebody").empty();
			if(event.data.list!=null) {
                datacache = event.data.list;
                for(row in datacache){
                    var patient = '<tr id="' + datacache[row].id +'">' + 
                                    // '<td class="sdt">'+ datacache[row].sdt +'</td>' +
                                    '<td class="sdt">'+ datacache[row].name +'</td>' +
                                    '<td class="name">'+ datacache[row].name +'</td>' +
                                    '<td class="dist">'+ datacache[row].distance.toFixed(0) +'m </td>';
                    if(datacache[row].status == 0){
                        patient = patient + '<td class="action">' +
                                                '<div class="btn-group" role="group" aria-label="Basic example">' +
                                                    '<button type="button" class="btn btn-success nhan" value="' + datacache[row].id +'" x="'+datacache[row].cords.x+'" y="'+datacache[row].cords.y+'">NHẬN</button>' +
                                                    '<button type="button" class="btn btn-warning huy" value="' + datacache[row].id +'">HUỶ</button>' +
                                                    '<button type="button" class="btn btn-danger xoa" value="' + datacache[row].id +'" gname="'+ datacache[row].name +'">XOÁ</button>' +
                                                '</div>' +
                                            '</td>' +
                                        '</tr>';
                    } else{
                        if(datacache[row].receiver == event.data.myid){
                            patient = patient + '<td class="action">' +
                                                    '<div class="btn-group" role="group" aria-label="Basic example">' +
                                                        '<button type="button" class="btn btn-success nhan disabled" value="0">NHẬN</button>' +
                                                        '<button type="button" class="btn btn-warning huy" value="' + datacache[row].id +'">HUỶ</button>' +
                                                        '<button type="button" class="btn btn-danger xoa" value="' + datacache[row].id +'" gname="'+ datacache[row].name +'">XOÁ</button>' +
                                                    '</div>' +
                                                '</td>' +
                                            '</tr>';
                        } else{
                            patient = patient + '<td class="action">' + 
                                                    'Đã nhận bởi <span class="green">' + datacache[row].receiver_name + "</span>&nbsp;" +
                                                    '<button type="button" class="btn btn-danger xoa" value="' + datacache[row].id +'" gname="'+ datacache[row].name +'">XOÁ</button>' +
                                                '</td>' +
                                            '</tr>';
                        }
                    }
                    $(".tablebody").prepend(patient);
                }
			}
		}
        if(event.data.type == "toggle"){
            menuToggle(event.data.state,false);
        }
	});
});
