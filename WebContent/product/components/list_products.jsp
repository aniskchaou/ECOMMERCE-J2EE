	<%@page import="uha.anis.fr.dao.product.ProductDAOImpl"%>
<%@page import="java.util.List"%>
<%@page import="uha.anis.fr.entities.Product"%>
<%@page import="uha.anis.fr.dao.product.ProductDAO"%>
<%
	ProductDAO productDAO=new ProductDAOImpl();
    List<Product> products=productDAO.getProducts();
	
	%>
	 <ul class="breadcrumb">
		<li><a href="#">Home</a> <span class="divider">/</span></li>
		<li class="active">Products</li>
    </ul>
		
	<hr class="soft">
	<div class="well well-small">
	<h3>New Products </h3>
	<hr class="soften"/>

		<div class="row-fluid">
		  <ul class="thumbnails">
			<%
			for(Product p:products)
			{	
			
			%>
			<li class="span4">
			  <div class="thumbnail"> 
				<a class="zoomTool" href="<%= request.getContextPath()+"/product/product_details.jsp?id_prod="+p.getpId() %>" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<a href="<%= request.getContextPath()+"/product/product_details.jsp?id_prod="+p.getpId() %>"><img src="<%= request.getContextPath()+"/assets/products/"+p.getpPhoto() %>" alt=""></a>
				<div class="caption cntr">
					<p><%= p.getpName()%></p>
					<p><strong> $<%= p.getpPrice() %></strong></p>
					<h4><a class="shopBtn" href="#" title="add to cart"> Add to cart </a></h4>
					
					<br class="clr">
				</div>
			  </div>
			</li>
			<%
			}
			%>
		
		  </ul>
		</div>
	</div>