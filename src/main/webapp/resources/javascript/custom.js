$(window).on('load', function() {
	 var pathname = window.location.pathname; 
//	 if(pathname == "/springlogin/" || pathname == "/springlogin/product/**"){
	 $.ajax({
			type : "GET",
			url : "/springshoeshop/category/",
			timeout : 100000,
			success : function(data) {
				console.log("SUCCESS: ", data);
				$(".store-menu").append(data);
			},
			error : function(e) {
				console.log("ERROR: ", e);
			}
		});
//	 }
});

 $('input[type=radio][name=color]').on('change', function (e) {
	    var id_color = $(this).val()
	    var id_product = $('#id_product').attr("data-idProduct");
		 $.ajax({
				type : "GET",
				url : "/category/",
				timeout : 100000,
				success : function(data) {
					console.log("SUCCESS: ", data);
					$(".store-menu").append(data);
				},
				error : function(e) {
					console.log("ERROR: ", e);
				}
			});
});
 
// $('.size').on('change', function (e) {
//	    var optionSelected = $("option:selected", this);
//	    var id_size = this.value;
//	    var id_product = $('#id_product').attr("data-idProduct");
//		 $.ajax({
//				type : "GET",
//				url : "../product/ajax/color",
//				timeout : 100000,
//				data: {
//					id_size: id_size,
//					id_product: id_product
//				},
//				success : function(data) {
//					console.log("SUCCESS: ", data);
//					$(".selected-color").html(data);
//				},
//				error : function(e) {
//					console.log("ERROR: ", e);
//				}
//			});
//});
 
 $(document).ready(function(){
	 $('input[type=radio][name=color]:first').attr('checked', true);
});
 
 $(".add-cart").click(function(e) {
	 	e.preventDefault()
	    var id_color =  $('input[type=radio][name=color]:checked').val();
	    var id_size = $(".size option:selected").val();
	    var id_product = $('#id_product').attr("data-idProduct");
	    var count = $("#example-amount").val();
	    var price = $("#price").attr("data-price");
	    var image = $("#image").attr("data-image");
	    var name_product =$('#id_product').text();
	    var name_color =$('input[type=radio][name=color]:checked').next('label:first').html();
	    var name_size = $(".size option:selected").text();
	    function insertCart(){
			 $.ajax({
					type : "GET",
					url : "../cart/create/",
					timeout : 100000,
					data: {
						id_size: id_size,
						id_product: id_product,
						id_color: id_color,
						count: count,
						price: price,
						image: image,
						name_product: name_product,
						name_color: name_color,
						name_size: name_size
					},
					success : function(data) {
						console.log("SUCCESS: ", data);
						$("#amount").html(data + "Items");
						$("#number").html(data);
					},
					error : function(e) {
						console.log("ERROR: ", e);
					}
				});
		}
	    if(count == "" || count <= 0){
	    	$(".amount-error").html("Số lượng không đúng")
	    }else{
			 $.ajax({
					type : "GET",
					url : "../cart/checkcount/",
					timeout : 100000,
					data: {
						id_product: id_product,
						count: count,
					},
					success : function(data) {
						if(data != "true"){
							$(".amount-error").html("Count not bigger than " + data);
						}else{
							insertCart();
						}
					},
					error : function(e) {
						console.log("ERROR: ", e);
					}
				});

	    }

});
 
$(document).ready(function(){
	$(".update_index_cart").click(function(event){
		event.preventDefault();
		var id_product= $(this).closest("tr").find('.id_product').attr("data-id_product");
		var id_color= $(this).closest("tr").find('.id_color').attr("data-id_color");
		var id_size= $(this).closest("tr").find('.id_size').attr("data-id_size");
		var count= $(this).closest("tr").find('.count_index_cart input').val();
		$(this).closest("tr").find(".total_index_cart").addClass("total");
		$(this).closest("tr").find(".amount-error").addClass("add-error");
	    if(count > 0){
			 $.ajax({
					type : "GET",
					url : "/springshoeshop/cart/update/",
					timeout : 100000,
					data: {
						id_product: id_product,
						id_color: id_color,
						id_size: id_size,
						count: count
					},
					success : function(data) {
						if(data != "true"){
							$(".add-error").html("Count not bigger than " + data);
							$(".amount-error").removeClass("add-error");
							
						}else{
							 $(".amount-error").html("");
							 let price = $(".total").closest("tr").find(".price").text();
							 $(".total").html(count * price);					
							 $(".total_index_cart").removeClass("total");
							 $.ajax({
								 type: "GET",
								 url: "/springshoeshop/cart/totalprice/",
								 success: function(result){
									 if(result != "false") $("#total_result").html(result);
									 console.log("SUCCESS TOTAL: ", result); 
								 },
								 error: function(e){
									 console.log("ERROR TOTAL: ", e); 
								 }
							 });
						}
						console.log("Sucess: ", data);
					},
					error : function(e) {
						console.log("ERROR: ", e);
					}
				});
	
	    }else{
	    	$(".add-error").html("Số lượng không đúng");
	    	$(".amount-error").removeClass("add-error");
	    }
	
	});	
	
	//Delete cart
	$(".delete_index_cart").click(function(event){
		event.preventDefault();
		var id_product= $(this).closest("tr").find('.id_product').attr("data-id_product");
		var id_color= $(this).closest("tr").find('.id_color').attr("data-id_color");
		var id_size= $(this).closest("tr").find('.id_size').attr("data-id_size");
		$(this).closest("tr").find(".total_index_cart").addClass("total");
		var self = $(this);
		var isProcessing = false;
		if (isProcessing) {
	        return;
	    }
			 $.ajax({
					type : "GET",
					url : "/springshoeshop/cart/delete/",
					timeout : 100000,
					data: {
						id_product: id_product,
						id_color: id_color,
						id_size: id_size,
					},
					success : function(data) {
						if(data == "false"){
						}else{
							console.log("vao delete success")
							 $(".amount-error").html("");				
							 self.closest("tr").remove();
							 $("#number").html(data);
							 isProcessing = true;
							 $.ajax({
								 type: "GET",
								 url: "/springshoeshop/cart/totalprice/",
								 success: function(result){
									 if(result != "false") $("#total_result").html(result);
									 console.log("vao lan 2");
								 },
								 error: function(e){
									 console.log("ERROR TOTAL: ", e); 
								 }
								 
							 });
						}
						console.log("Sucess: ", data);
					},
					error : function(e) {
						console.log("ERROR: ", e);
					}
				});
	
	});	

})
 
 
 