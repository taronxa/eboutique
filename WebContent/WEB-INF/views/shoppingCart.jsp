<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!DOCTYPE html> --%>
<%@ include file="/WEB-INF/views/header.jsp"%>

<!-- Page Title -->
<div class="section section-breadcrumbs">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1>Panier</h1>
			</div>
		</div>
	</div>
</div>

<div class="section">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- Action Buttons -->
				<div class="pull-right">
					 <a href="#" id="valider"
						class="btn"><i 
						class="glyphicon glyphicon-shopping-cart icon-white"></i> VALIDER</a>
				</div>
			</div>
		</div>
		
		
		
		<!-- Là où l'on va aller copier -->
		<div class="row"><div id="listProducts"></div></div>

		


		<div class="row">
			<!-- Promotion Code -->
			<div class="col-md-4  col-md-offset-0 col-sm-6 col-sm-offset-6">

			</div>
			<!-- Shipment Options -->
			<div class="col-md-4 col-md-offset-0 col-sm-6 col-sm-offset-6">

			</div>


			<!-- Shopping Cart Totals -->
			<div class="col-md-4 col-md-offset-0 col-sm-6 col-sm-offset-6">
				<table class="cart-totals">
					<tr>
						<td><b>Frais de port</b></td>
						<td>Offert</td>
					</tr>
					<tr>
						<td><b></b></td>
						<td></td>
					</tr>
					<tr class="cart-grand-total ">
						<td><b>Total TTC</b></td>
						<td><b class="total"></b></td>
					</tr>
				</table>
				<!-- Action Buttons -->
				<div class="pull-right">
					 <a href="#" id="valider"
						class="btn"><i 
						class="glyphicon glyphicon-shopping-cart icon-white "></i> VALIDER</a>
				</div>
			</div>
		</div>
	</div>
</div>

<div id="template" class="hide">
			<div class="row modelPanier">
				<div class="col-md-12">
					<!-- Shopping Cart Items -->
					<table class="shopping-cart">
						<!-- Shopping Cart Item -->
						<tr>
							<!-- Shopping Cart Item Image -->
							<td class="image"><a href="ShowDetailsServlet?id=${item.id}"><img id="photo"
									src="img/product1.jpg" alt="Item Name"></a></td>
							<!-- Shopping Cart Item Description & Features -->
							<td>
								<div class="libelle">
									<a href="WEB-INF/views/productDetails.jsp">LOREM IPSUM
										DOLOR</a>
								</div>
							</td>
							<td><a data-id="moins" class="btn btn-sm btn-grey btnDecrIncr btnMoins">-
							</a></td>
							<!-- Shopping Cart Item Quantity -->
							<td class="quantity"><input type="text"
								class="form-control input-sm input-micro qteProduct" value="1"></td>
							<td><a data-id="plus"
								class="btn btn-sm btn-grey btnDecrIncr btnPlus">+ </a></td>
							<!-- Shopping Cart Item Price -->
							<td class="prixProduct"></td>
							<!-- Shopping Cart Item Actions -->

							<td class="actions"><a href="#"
								class="btn btn-sm btn-grey idProduct" data-id=""><i
									class="glyphicon glyphicon-trash"></i></a></td>
						</tr>
						<!-- End Shopping Cart Item -->

					</table>
					<!-- End Shopping Cart Items -->

				</div>
			</div>
		</div>
<!-- Footer -->

<%@ include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>