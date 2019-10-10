$(window).on('load', function() {
	 var pathname = window.location.pathname; 
//	 if(pathname == "/springlogin/" || pathname == "/springlogin/product/**"){
	 $.ajax({
			type : "GET",
			url : "/springlogin/category/",
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
				url : "category/",
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
		    alert("color "+id_color+ "-" + id_size + "-"+ id_product + "-" +count + "-" + image + "-" +price + "-" +name_product
		    		+ " -" + name_color + "- size: "+name_size  );
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
 
 