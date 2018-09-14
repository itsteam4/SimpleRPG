// Id Check
$(document).ready(function(){
	$('#userconfirm').on('click',function(){
		var id = $('#id').val();
		var msg="아이디를 입력해주세요."
		if($('#id').val() == ""){
			$('#modal-msg').text(msg);
			$('#ConfirmModal').modal('show');
			return;
		}else{
			$.ajax({
				type:'POST',
				data : "id="+id,
				datatype:'json',
				url : 'userconfirm',
				success : function(data){
					if(data == 0){
						$('#modal-msg').text("사용 가능한 아이디 입니다.");
						$('#ConfirmModal').modal('show');
						$('#confirmcheck').attr("value","yes");
						$('#pw').focus();
						return;
					}else{
						$('#modal-msg').text("이미 등록된 아이디 입니다.");
						$('#ConfirmModal').modal('show');
						return;
					}
				},
				error : function(xhr, status, error){
					alert('ajax error');
				}
			});
		}
	});
	
	
	$('#memberInsert').on('click',function(){
		if($('#id').val() == ""){
			alert("아이디를 입력해주세요.");
			return;
		}
		if($('#confirmcheck').val() == 'no'){
			alert("중복검사를 해주세요.");
			return;
		}else{
			$('.member_insert_form').submit();
		}
	});
	
})