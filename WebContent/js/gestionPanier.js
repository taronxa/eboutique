/**
 * 
 */
$(function() {
	$.cookie.json = true;

	var panier = $.cookie("panier") || {};
	var qtePanier = $.cookie("qtePanier") || 0;

	if ($("#nomProduit")) {
		var nomProduit = $("#nomProduit").text();
	}
	if ($("#prixProduit")) {
		var prix = parseFloat($("#prixProduit").data("price"));
	}
	var id = $("h1").data("id");

	/** * mise à jour qté panier *** */
	$("#nbArticlesPanier").text(qtePanier);
	$(".shopping-cart-items").show();

	if ($("#listProducts")) {

		var numLigne = 0;
		var total = 0;
		for (idProduct in panier) {
			var subTotal = 0;
			var nom = panier[idProduct].nom;
			var prix = panier[idProduct].prix;
			var qte = panier[idProduct].quantite;
			var image = "img/product_" + idProduct + ".jpg"
			/*
			 * console.log(nom); console.log(prix); console.log(qte);
			 */
			subTotal = prix * qte;
			total += subTotal;

			$("#template > .modelPanier").clone().appendTo("#listProducts");

			var ligne = $("#listProducts").find(".modelPanier").eq(numLigne);

			ligne.find(".libelle").text(nom);
			ligne.find(".qteProduct").val(qte);
			ligne.find(".prixProduct").text(subTotal);
			ligne.find(".idProduct").attr("data-id", idProduct);
			ligne.find("#photo").attr("src", image);

			numLigne++;
		}
		$(".total").text(Math.round(total * 100) / 100);
	}
	;

	/** *** Ecoute click plus et moins ** */
	$(".btnDecrIncr").bind(
			"click",
			function() {
				var operateur = 1;
				var qt = $(this).parents(".modelPanier").find(".qteProduct");
				var quantite = parseInt(qt.val());

				if ($(this).attr("data-id") == "plus") {
					operateur = 1;
				}
				if ($(this).attr("data-id") == "moins") {
					if (quantite == 1) {
						operateur = 0;
					} else {
						operateur = -1;
					}
				}

				quantite += operateur;

				qt.val(quantite);

				if ($(".prixProduct").length > 0) {
					qtePanier += operateur;

					var total = parseFloat($(".total").text());
					var id = $(this).parents(".modelPanier").find(".idProduct")
							.attr("data-id");
					panier[id].quantite = quantite;
					$.cookie("panier", panier);
					$.cookie("qtePanier", qtePanier);

					var nvPrix = panier[id].prix * quantite;
					var subTotal = parseFloat($(this).parents(".modelPanier")
							.find($(".prixProduct")).text());
					total = total - subTotal + nvPrix;

					$(".total").text(Math.round(total * 100) / 100);
					$(this).parents(".modelPanier").find($(".prixProduct"))
							.text(Math.round(nvPrix * 100) / 100);
					$("#nbArticlesPanier").text(qtePanier);

				}
			});

	/** *** Ecoute modification champ quantité : controle saisie ** */
	$(".qteProduct").keypress(function(e) {
		return e.which > 45 && e.which < 55;
	});

	/** *** Ecoute modification champ quantité ** */
	$(".qteProduct").bind(
			"keyup change",
			function(e) {

				if ($(".prixProduct")) {

					var quantite = $(this).val();
					var total = parseFloat($(".total").text());
					var id = $(this).parents(".modelPanier").find(".idProduct")
							.attr("data-id");

					var nvPrix = panier[id].prix * quantite;
					var subTotal = parseFloat($(this).parents(".modelPanier")
							.find($(".prixProduct")).text());
					total = total - subTotal + nvPrix;

					$(".total").text(Math.round(total * 100) / 100);
					$(this).parents(".modelPanier").find($(".prixProduct"))
							.text(Math.round(nvPrix * 100) / 100);
				}
			});

	/** *** Ecoute click ajout panier ** */

	$("#ajouterPanier").click(function() {
		var quantite = parseInt($("#quantity").val());
		var produit = {
			"nom" : nomProduit,
			"prix" : prix,
			"quantite" : quantite,
			"id" : id
		};

		qtePanier += quantite;
		$("#nbArticlesPanier").text(qtePanier);

		panier[id] = produit;
		$.cookie("panier", panier);
		$.cookie("qtePanier", qtePanier);
	});

	/** *** Ecoute click poubelle ** */

	$(".idProduct").click(function() {

		var id = $(this).attr("data-id");

		$.cookie("panier", panier);

		var subTotal = panier[id].prix * panier[id].quantite;
		var total = parseFloat($(".total").text());
		total -= subTotal;

		var qtePanier = parseInt($("#nbArticlesPanier").text());
		qtePanier -= panier[id].quantite;
		$("#nbArticlesPanier").text(qtePanier);

		delete panier[id];

		$(this).parents(".modelPanier").remove();
		$(".total").text(Math.round(total * 100) / 100);

	});

	/** **validation du panier JSON.stringify(panier)*** */
	$("#valider").click(function() {
		$.post("ValidationShoppingCartServlet", {
			"panier" : JSON.stringify(panier)
		}, function(response) {
			if (response == "OK") {
				console.log("Yes");
			} else {
				console.log("Ko");
			}
		});
	});

});
