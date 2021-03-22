/*系统公用*/

var baseUrl = "/admin" ;

$(document).ready(function(e) {
	$("#categoryid").selectBoxIt().on('open', function(){
		$(this).data('selectBoxSelectBoxIt').list.perfectScrollbar();
	});
	$("#field").selectBoxIt().on('open', function(){
		$(this).data('selectBoxSelectBoxIt').list.perfectScrollbar();
	});
	$("#water_place").selectBoxIt().on('open', function(){
		$(this).data('selectBoxSelectBoxIt').list.perfectScrollbar();
	});
	
	
	$("#btn_article_dele").on("click",function(){
		layer.confirm('确定要删除所选择信息吗?删除后将不可恢复!', {
				title:"温馨提示",
				btn : [ '确定', '取消' ]//按钮
			}, function(index) {
				 layer.close(index);
				 $("#frm_article").submit();
			}); 
	});

	if ( $('.alert-success').length > 0 ) {
		 $('.alert-success').delay(5000).hide(0);
	}
	
	$(".tr-article-delete").on("click",function(){
		var that = $(this);
		var id = $(this).attr("data-id");
			id = parseInt(id) ;
		//$(this).parent().parent().remove();
		if(id > 0){
			layer.confirm('确定要删除Id = '+id+' 的信息吗?删除后将不可恢复!', {
				title:"温馨提示",
				btn : [ '确定' ]//按钮
			}, function(index) {
					$.ajax({ 
						 type : "GET",
						 url : baseUrl + "/article/delete",//路径 
						 data : { 
						  "id" : id,
						  "rand" : Math.random()
						 },
						 success : function(res) {
							 layer.close(index);
							 if(res.code){
								 that.parent().parent().remove();
							 }
							 layer.msg(res.msg); 
						 } 
					}); 
			}); 
		}

		
	});
	
	$(".bootstrap-tagsinput input").bind("keypress",function(event){
		 if(event.keyCode == "13"){  
		 	var category = $(this).val() ;
			var fatherid = $(this).parent().parent().find("input").attr("data-id") ;
				fatherid = parseInt(fatherid);
				
				if(fatherid > 0 && category !== ""){
					$.ajax({ 
						 type : "POST",
						 url : baseUrl + "/category/save.html",//路径 
						 data : { 
						  "fatherid" : fatherid,
						  "category" : category,
						  "rand"     : Math.random()
						 },
						 success : function(res) {
							 	layer.msg(res.msg); 
						 } 
						}); 
				}
				
         }  
	});
	
	$(".bootstrap-tagsinput span").on("dblclick",function(){
		  var that = $(this);
		  var category = $(this).text();
		  var fatherid = $(this).parent().parent().find("input").attr("data-id") ;
		      fatherid = parseInt(fatherid);
			  
			  layer.prompt({title: '修改类别',value:category}, function(text, index){
				
					if(fatherid > 0 && text !== ""){
						$.ajax({ 
							 type : "POST",
							 url : baseUrl + "/category/update.html",//路径 
							 data : { 
							  "fatherid" : fatherid,
							  "category" : category,
							  "text"     : text ,
							  "rand"     : Math.random()
							 },
							 success : function(res) {
								    layer.close(index);
									that.text(text);
									layer.msg(res.msg); 
							 } 
							}); 
					}
			  });
	});	
	
	$(".bootstrap-tagsinput span[data-role='remove']").on("click",function(event){
		  var category = $(this).parent().text();
		  var fatherid = $(this).parent().parent().parent().find("input").attr("data-id") ;
			  fatherid = parseInt(fatherid);
			  
					if(fatherid > 0 && category !== ""){
						$.ajax({ 
							 type : "POST",
							 url : baseUrl + "/category/delete.html",//路径 
							 data : { 
							  "fatherid" : fatherid,
							  "category" : category,
							  "rand"     : Math.random()
							 },
							 success : function(res) {
									layer.msg(res.msg); 
							 } 
							}); 
					}
			  
	});
	
});

	$(".tr-slide-delete").on("click",function(){
		var that = $(this);
		var id = $(this).attr("data-id");
			id = parseInt(id) ;
		//$(this).parent().parent().remove();
		if(id > 0){
			layer.confirm('确定要删除Id = '+id+' 的信息吗?删除后将不可恢复!', {
				title:"温馨提示",
				btn : [ '确定' ]//按钮
			}, function(index) {
					$.ajax({ 
						 type : "GET",
						 url : baseUrl + "/slide/delete.html",//路径 
						 data : { 
						  "id" : id,
						  "rand" : Math.random()
						 },
						 success : function(res) {
							 layer.close(index);
							 if(res.code){
								 that.parent().parent().remove();
							 }
							 layer.msg(res.msg); 
						 } 
						}); 
			}); 
		}

		
	});
	$("#btn_slide_dele").on("click",function(){
		layer.confirm('确定要删除所选择信息吗?删除后将不可恢复!', {
				title:"温馨提示",
				btn : [ '确定', '取消' ]//按钮
			}, function(index) {
				 layer.close(index);
				 $("#frm_slide").submit();
			}); 
	});


	$(".tr-links-delete").on("click",function(){
		var that = $(this);
		var id = $(this).attr("data-id");
			id = parseInt(id) ;
		//$(this).parent().parent().remove();
		if(id > 0){
			layer.confirm('确定要删除Id = '+id+' 的信息吗?删除后将不可恢复!', {
				title:"温馨提示",
				btn : [ '确定' ]//按钮
			}, function(index) {
					$.ajax({ 
						 type : "GET",
						 url : baseUrl + "/links/delete.html",//路径 
						 data : { 
						  "id" : id,
						  "rand" : Math.random()
						 },
						 success : function(res) {
							 layer.close(index);
							 if(res.code){
								 that.parent().parent().remove();
							 }
							 layer.msg(res.msg); 
						 } 
						}); 
			}); 
		}

		
	});
	$("#btn_links_dele").on("click",function(){
		layer.confirm('确定要删除所选择信息吗?删除后将不可恢复!', {
				title:"温馨提示",
				btn : [ '确定', '取消' ]//按钮
			}, function(index) {
				 layer.close(index);
				 $("#frm_links").submit();
			}); 
	});


	$(".btn-admin-delete").on("click",function(){
		var that = $(this);
		var id = $(this).attr("data-id");
			id = parseInt(id) ;
		//$(this).parent().parent().remove();
		if(id > 0){
			layer.confirm('确定要删除Id = '+id+' 的信息吗?删除后将不可恢复!', {
				title:"温馨提示",
				btn : [ '确定' ]//按钮
			}, function(index) {
					$.ajax({ 
						 type : "GET",
						 url : baseUrl + "/admin/delete.html",//路径 
						 data : { 
						  "id" : id,
						  "rand" : Math.random()
						 },
						 success : function(res) {
							 layer.close(index);
							 if(res.code){
								 that.parent().parent().parent().parent().remove();
							 }
							 layer.msg(res.msg); 
						 } 
					}); 
			}); 
		}

		
	});


$(".backup").on("click",function(){
	
	$.ajax({ 
		 type : "GET",
		 url : baseUrl + "/mysql/backup.html",//路径 
		 data : { 
		  "rand" : Math.random()
		 },
		 beforeSend:function(){ 
		 
		    var i = 0 ;
		 	var s = setInterval(function(){
				
				i = i + 5 ;
					if(i>=100){layer.msg("备份成功");clearInterval(s);/*$(".alert").removeClass("out");*/}
					$(".knob").val(i).trigger('change');
					
				},1000);
			

		 },
		 success : function(res) {
			 
			// if(res.code){
				
			 //}
			  
		 } 
	}); 
	
	
});

$("a[href='#downsql']").on("click",function(){
	
	$.ajax({ 
		 type : "GET",
		 url : baseUrl + "/mysql/getFile.html",//路径 
		 data : { 
		  "rand" : Math.random()
		 },
		 success : function(res) {
			 
			var list = "";
			if(res.code){
				 var file = res.data ;
				 for(i in file){
					list += "<a href='/public/backup/"+file[i]+"'><div class='label label-primary'>"+file[i]+"</div></a>";  
			  	 }
		
			}
			
			$("#downsql .form-group").html(list);
			  
		 } 
	}); 
	
});


	$(".tr-book-delete").on("click",function(){
		var that = $(this);
		var id = $(this).attr("data-id");
			id = parseInt(id) ;
		//$(this).parent().parent().remove();
		if(id > 0){
			layer.confirm('确定要删除Id = '+id+' 的信息吗?删除后将不可恢复!', {
				title:"温馨提示",
				btn : [ '确定' ]//按钮
			}, function(index) {
					$.ajax({ 
						 type : "GET",
						 url : baseUrl + "/book/delete.html",//路径 
						 data : { 
						  "id" : id,
						  "rand" : Math.random()
						 },
						 success : function(res) {
							 layer.close(index);
							 if(res.code){
								 that.parent().parent().remove();
							 }
							 layer.msg(res.msg); 
						 } 
					}); 
			}); 
		}

		
	});

	$("#btn_book_dele").on("click",function(){
		layer.confirm('确定要删除所选择信息吗?删除后将不可恢复!', {
				title:"温馨提示",
				btn : [ '确定', '取消' ]//按钮
			}, function(index) {
				 layer.close(index);
				 $("#frm_book").submit();
			}); 
	});


	$(".tr-job-delete").on("click",function(){
		var that = $(this);
		var id = $(this).attr("data-id");
			id = parseInt(id) ;
		if(id > 0){
			layer.confirm('确定要删除Id = '+id+' 的信息吗?删除后将不可恢复!', {
				title:"温馨提示",
				btn : [ '确定' ]//按钮
			}, function(index) {
					$.ajax({ 
						 type : "GET",
						 url : baseUrl + "/job/delete.html",//路径 
						 data : { 
						  "id" : id,
						  "rand" : Math.random()
						 },
						 success : function(res) {
							 layer.close(index);
							 if(res.code){
								 that.parent().parent().remove();
							 }
							 layer.msg(res.msg); 
						 } 
						}); 
			}); 
		}

		
	});
	$("#btn_job_dele").on("click",function(){
		layer.confirm('确定要删除所选择信息吗?删除后将不可恢复!', {
				title:"温馨提示",
				btn : [ '确定', '取消' ]//按钮
			}, function(index) {
				 layer.close(index);
				 $("#frm_job").submit();
			}); 
	});
