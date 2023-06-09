var audio = new Audio('audio.mp3');
audio.volume = 0.1;
function menutoggle(state,send){
	if(state) {
        $(".container").show();
    } else {
        $(".container").hide();
    }
    if(send){
        $.post("https://ntl-announcement/toggle",JSON.stringify({state:state}));
    }
}
$(function(){
	$('.container').hide()
	$('.banner').hide()
})
window.addEventListener('message', async (event) => {
	var item = event.data;
	if (item !== undefined && item.action === "tbao") {
		$('.banner').show()
		setTimeout(function(){
			$('.banner').hide()
			menutoggle(true,false)
			setTimeout(function(){
				$('.khung').addClass('active')
				setTimeout(function(){
					audio.play();
					document.getElementById('show').innerHTML = '<marquee scrollamount="13"><p>'+event.data.text+'</p></marquee>';
				},500)
			}, 100);
			// $('.khung').css('width','800px')
			
		},2000)
			

	} else if (item.action == 'open'){
	
		const { value: text } = await Swal.fire({
			title: 'Nhập thông báo',
			input: 'text',
			showCancelButton: true,
			inputLabel:  false,
			inputPlaceholder: 'Nhập...'
		})
		if (text) {
			$.post("https://ntl-announcement/sendData", JSON.stringify({
				text: text
			}));
			menutoggle(false,true)

		}else{
			$.post("https://ntl-announcement/sendData", JSON.stringify({
				text: text
			}));
			menutoggle(false,true)

		}

	} else if (item.action === 'display'){
		audio.pause();
		audio.currentTime = 0;
		$('.khung').removeClass('active')
		menutoggle(false,false)
		document.getElementById('show').innerHTML = '';

		}
});