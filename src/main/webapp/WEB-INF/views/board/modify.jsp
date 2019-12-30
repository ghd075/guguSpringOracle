<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@include file="../includes/header.jsp" %>

           <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Board Read</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
           <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading"> Board Read Page</div>
                  		<!-- /.panel-heading -->
                        <div class="panel-body">
							<form role="form" action="/board/modify" method="post">
								<div class="form-group">
									<label>Bno</label> <input class="form-control" name="bno" value="${board.bno}" readonly />
								</div>
								<div class="form-group">
									<label>Title</label> <input class="form-control" name="title" value="${board.title}" />
								</div>
								<div class="form-group">
									<label>Text area</label>
									<textarea class="form-control" rows="3" name="content" >${board.content}</textarea>
								</div>
								<div class="form-group">
									<label>Writer</label> <input class="form-control" name="writer" value="${board.writer}" />
								</div>
								<div class="form-group">
									<label>regDate</label> <input class="form-control" name="regDate" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.regdate}" />' readonly />
								</div>
								<div class="form-group">
									<label>Update Date</label> <input class="form-control" name="updateDate" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.updateDate}" />' readonly />
								</div>
								<button type="submit" data-oper="modify" class="btn btn-default">Modify</button>
								<button type="submit" data-oper="remove" class="btn btn-danger">Remove</button>							
								<button type="submit" data-oper="list" class="btn btn-info">List</button>							
							</form>
						</div>
                        <!-- end panel-body -->
                    </div>
                    <!-- end panel -->
                </div>
            </div>
            <!-- /.row -->
<script>
$(document).ready(function(){
	
	var formObj = $('form');
	
	$('button').on('click', function(e){
		
		//submit 태그의 고유 기능을 중단시킴
		e.preventDefault();
		
		var operation = $(this).data('oper');
		
		console.log(operation);
		
		// 삭제처리
		if(operation === 'remove') {
			formObj.attr('action', '/board/remove');
			
		// 목록이동
		} else if(operation === 'list') {
			//move to list
			formObj.attr('action', '/board/list').attr('method','get');
			formObj.empty();
		}
		
		formObj.submit();
		
	});
	
});

</script>
<%@include file="../includes/footer.jsp" %>