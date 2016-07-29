$(document).ready(function() {

	$('.reaction').click(function(){
		var id = $(this).attr('id');
		var post_id = $(this).attr('data-post-id');
		var num_likes = $(this).children('.total').html();
		$.ajax({
			'type' 	: 'POST',
			'url'	: 'react.php',
			'data'	: 'post_id=' + post_id + '&user_id=1&reaction=' + id,
			success:function(msg) {
				console.log(msg);
				if (msg == 'err') {
					alert('You have already reacted to this.');
				}
			} 
		});
	});

});