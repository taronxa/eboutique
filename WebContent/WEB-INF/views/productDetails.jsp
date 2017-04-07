<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!DOCTYPE html> --%>
<%@ include file="/WEB-INF/views/header.jsp"%>

<!-- Page Title -->
<div class="section section-breadcrumbs">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1 data-id="${produit.id}">Detail produit</h1>
			</div>
		</div>
	</div>
</div>

<div class="section">
	<div class="container">
		<div class="row">
			<!-- Product Image  -->
			<div class="col-sm-6">
				<div class="product-image-large">
					<img src="img/product_${produit.id}.jpg" alt="Item Name">
				</div>
			</div>
			<!-- End Product Image  -->
			<!-- Product Summary & Options -->
			<div class="col-sm-6 product-details">
				<h4 id="nomProduit">${produit.name}</h4>
				<div id="prixProduit" data-price="${produit.sellingPrice}" class="price">Euros ${produit.sellingPrice}</div>
				<table class="shop-item-selections modelPanier">

					<!--Augmenter quantité -->
					<tr>
						<td></td>
						<td>
							<div class="drownup">
								<a data-id="plus" class="btn btn-sm btn-grey btnDecrIncr">+ </a>
							</div>
						</td>
					</tr>
					<!-- Quantity -->
					<tr>
						<td><b>Quantité:</b></td>
						<td><input type="text"
							id="quantity" class="form-control input-sm input-micro qteProduct" value="1"></td>
					</tr>
					<!--diminuer quantité -->
					<tr>
						<td></td>
						<td>
							<div class="drowndown">
								<a data-id="moins" class="btn btn-sm btn-grey btnDecrIncr">- </a>

							</div>
						</td> 
					</tr>
					<!-- Add to Cart Button -->
					<tr>
						<td>&nbsp;</td>
						<td> <a class="btn btn" id="ajouterPanier"><i 
								class="icon-shopping-cart icon-white"></i> Ajouter au panier</a></td>
					</tr>
				</table>

			</div>
			<!-- End Product Summary & Options -->

			<!-- Full Description & Specification -->
			<div class="col-sm-12">
				<div class="tabbable">
					<!-- Tabs -->
					<ul class="nav nav-tabs product-details-nav">
						<li class="active"><a href="#tab1" data-toggle="tab">Description</a></li>
					</ul>
					<!-- Tab Content (Full Description) -->
					<div class="tab-content product-detail-info">
						<div class="tab-pane active" id="tab1">
							<h4>Description du produit</h4>
							<p>${produit.description}</p>
							<h4>Composants</h4>


							<!-- Tab Content (Specification) -->
							<div class="tab-pane" id="tab2">
								<table>
									<c:forEach items="${produit.pHasComponents}" var="composition">
										<tr>
											<td class="quantity">${composition.component.name}</td>
											<td class="quantity">${composition.quantite}</td>
										</tr>
									</c:forEach>
								</table>
							</div>
						</div>

					</div>

				</div>
			</div>
		</div>
		<!-- End Full Description & Specification -->
	</div>
</div>
</div>

<!-- Footer -->
<%@ include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>