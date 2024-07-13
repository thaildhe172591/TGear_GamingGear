document.addEventListener("DOMContentLoaded", function () {
    // Selector cho các sản phẩm giải trí
    var giaitriProducts = document.querySelectorAll("#item-giaitri");
    var giaitriLoadMoreButton = document.getElementById("loadMoreButton-GiaiTri");

    // Selector cho các sản phẩm học tập
    var hoctapProducts = document.querySelectorAll("#item-hoctap");
    var hoctapLoadMoreButton = document.getElementById("loadMoreButton-HocTap");

    // Selector cho các sản phẩm game trên Steam
    var steamgameProducts = document.querySelectorAll("#item-steamgame");
    var steamgameLoadMoreButton = document.getElementById("loadMoreButton-SteamGame");

    // Số lượng sản phẩm được hiển thị mỗi lần
    var productsPerPage = 4;

    // Ẩn các sản phẩm ban đầu ngoại trừ số lượng sản phẩm trên mỗi trang
    hideProductsAfterIndex(giaitriProducts, productsPerPage);
    hideProductsAfterIndex(hoctapProducts, productsPerPage);
    hideProductsAfterIndex(steamgameProducts, productsPerPage);

    // Xử lý sự kiện click cho nút "Xem thêm" của sản phẩm giải trí
    giaitriLoadMoreButton.addEventListener("click", function () {
        handleLoadMoreButtonClick(giaitriProducts, giaitriLoadMoreButton);
    });

    // Xử lý sự kiện click cho nút "Xem thêm" của sản phẩm học tập
    hoctapLoadMoreButton.addEventListener("click", function () {
        handleLoadMoreButtonClick(hoctapProducts, hoctapLoadMoreButton);
    });

    // Xử lý sự kiện click cho nút "Xem thêm" của sản phẩm game trên Steam
    steamgameLoadMoreButton.addEventListener("click", function () {
        handleLoadMoreButtonClick(steamgameProducts, steamgameLoadMoreButton);
    });

    // Hàm ẩn các sản phẩm sau một chỉ số cụ thể
    function hideProductsAfterIndex(products, startIndex) {
        for (var i = startIndex; i < products.length; i++) {
            products[i].style.display = "none";
        }
    }

    // Hàm xử lý sự kiện click cho nút "Xem thêm"
    function handleLoadMoreButtonClick(products, loadMoreButton) {
        // Tìm chỉ số của sản phẩm cuối cùng được hiển thị
        var endIndex = 0;
        for (var i = 0; i < products.length; i++) {
            var style = window.getComputedStyle(products[i]);
            if (style.display !== "none") {
                endIndex = i;
            }
        }

        // Hiển thị 4 sản phẩm tiếp theo, nếu có
        for (var i = endIndex + 1; i < endIndex + 1 + productsPerPage; i++) {
            if (i < products.length) {
                products[i].style.display = "block";
            } else {
                break;
            }
        }

        // Kiểm tra xem còn sản phẩm nào để hiển thị không, nếu không ẩn nút "Xem thêm"
        var allProductsDisplayed = true;
        for (var i = endIndex + 1; i < products.length; i++) {
            var style = window.getComputedStyle(products[i]);
            if (style.display === "none") {
                allProductsDisplayed = false;
                break;
            }
        }

        if (allProductsDisplayed) {
            loadMoreButton.style.display = "none";
        }
    }
});

