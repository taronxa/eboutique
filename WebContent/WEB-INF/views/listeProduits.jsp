<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!DOCTYPE html> --%>
<%@ include file="/WEB-INF/views/header.jsp"%>

<!-- Page Title -->
<div class="section section-breadcrumbs">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1>Liste de produits</h1>
			</div>
		</div>
	</div>
</div>

<div class="section">
	<div class="container">

		<!-- 	TODO : traiter le nombre de lignes -->

		<div class="row">
			<c:forEach items="${listeProduits}" var="item">

				<div class="col-sm-4">
					<!-- Product -->
					<div class="shop-item">
						<!-- Product Image -->
						<div class="image">

							<a href="ShowDetailsServlet?id=${item.id}"><img
								src="img/product_${item.id}.jpg" alt="Item Name"></a>
						</div>
						<!-- Product Title -->
						<div class="title">
							<h3>
								<a href="ShowDetailsServlet?id=${item.id}">${item.name}</a>
							</h3>
						</div>
						<!-- Product Available Colors-->
						<!-- Product Price-->
						<div class="price">Euros ${item.sellingPrice}</div>
						<!-- Product Description-->
						<div class="description">
							<p>${item.description}</p>
						</div>
						<!-- Add to Cart Button -->
						<div class="actions">
							<a href="ShowDetailsServlet?id=${item.id}" class="btn"><i
								class="icon-shopping-cart icon-white"></i>Détail</a>
						</div>
					</div>
					<!-- End Product -->
				</div>
			</c:forEach>
		</div>
	</div>
</div>
<!-- Footer -->
<%@ include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>