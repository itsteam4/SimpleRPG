$('#boarddeletebtn').on('click',function(){
		$('#modalmsg').text("게시글을 삭제하시겠습니까?");
		$('#boardDeleteModal').modal('show');
		var delvalue = $('#boardb_seq').val();
		$('#boarddelbtn').on('click',function(){
			var url="boardDelete?b_seq="+delvalue;
			$(location).attr('href', url);
		});
		return;
	});