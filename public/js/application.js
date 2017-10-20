$(document).ready(function() {
  getAddCommentForm();
  addNewComment();
  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});

var getAddCommentForm = function () {
  $('#new_comment_button').on('click', function(){
    $(this).hide();
    $(new_comment_form).show();
  });
};

var addNewComment = function(){
  $('#new_comment_form').on('submit', function(event)){
    event.preventDefault();
    var commenter_text = $('#comment_text').val();
    var commenter_name = $('#commenter_name').val();

    $('#comment_list').append('<li class="comment"><article><p>'+commenter_text+'</p><span class="author">'+commenter_name+'</span><button class="button delete-button">Delete Comment</button></article></li>');
  });
};

  });
};
