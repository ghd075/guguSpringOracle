<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

							<div class="form-group">
								<label>Bno</label> <input class="form-control" name="bno" value="${board.bno}" readonly />
							</div>
							<div class="form-group">
								<label>Title</label> <input class="form-control" name="title" value="${board.title}" readonly />
							</div>
							<div class="form-group">
								<label>Text area</label>
								<textarea class="form-control" rows="3" name="content" readonly>${board.content}</textarea>
							</div>
							<div class="form-group">
								<label>Writer</label> <input class="form-control" name="writer" value="${board.writer}" readonly />
							</div>
							<button data-oper="modify" class="btn btn-default">Modify</button>
							<button data-oper="list" class="btn btn-info">List</button>
							
							<form id="operForm" action="/board/modify" method="get">
								<input type="hidden" id="bno" name="bno" value="${board.bno}" />
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
	
	var operForm = $('#operForm');
	
	//수정페이지로
    $("button[data-oper='modify']").on("click", function (e) {
        operForm.attr("action", "/board/modify").submit();
    });
	
	//목록페이지로
    $("button[data-oper='list']").on("click", function (e) {
        operForm.find("#bno").remove();
        operForm.attr("action", "/board/list");
        operForm.submit();
    });
});

</script>
<%@include file="../includes/footer.jsp" %>