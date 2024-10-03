<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zeck Garage</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        h1, h2 {
            color: #333;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background: #222;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .product, .cart {
            margin: 20px 0;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 15px;
            background: #f9f9f9;
        }
        .product img, .cart img {
            width: 50px; /* Atur lebar gambar */
            height: auto; /* Memastikan proporsi gambar terjaga */
            margin-right: 15px; /* Ruang antara gambar dan teks */
        }
        .product h2, .cart h2 {
            margin: 0 0 10px;
        }
        .product button {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .product button:hover {
            background-color: #218838;
        }
        .remove-button {
            color: red;
            cursor: pointer;
            margin-left: 10px;
            font-weight: bold;
        }
        .remove-button:hover {
            text-decoration: underline;
        }
        .cart-button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
            margin-left: 10px;
            transition: background-color 0.3s;
        }
        .cart-button:hover {
            background-color: #0056b3;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        li {
            padding: 10px;
            border-bottom: 1px solid #ddd;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        li:last-child {
            border-bottom: none;
        }
        #total-price {
            font-weight: bold;
            margin-top: 10px;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Favorites</h1>
        <div class="product">
            <img src="https://via.placeholder.com/50" alt="Produk 1">
            <h2>Produk 1</h2>
            <p>Harga: Rp 100.000</p>
            <button onclick="addToCart('Produk 1', 100000, 'https://via.placeholder.com/50')">Tambah ke Favorites</button>
        </div>
        <div class="product">
            <img src="https://via.placeholder.com/50" alt="Produk 2">
            <h2>Produk 2</h2>
            <p>Harga: Rp 200.000</p>
            <button onclick="addToCart('Produk 2', 200000, 'https://via.placeholder.com/50')">Tambah ke Favorites</button>
        </div> 
        <div class="product">
            <img src="https://via.placeholder.com/50" alt="Produk 3">
            <h2>Produk 3</h2>
            <p>Harga: Rp 150.000</p>
            <button onclick="addToCart('Produk 3', 150000, 'https://via.placeholder.com/50')">Tambah ke Favorites</button>
        </div>
        <div class="product">
            <img src="https://via.placeholder.com/50" alt="Produk 4">
            <h2>Produk 4</h2>
            <p>Harga: Rp 450.000</p>
            <button onclick="addToCart('Produk 4', 450000, 'https://via.placeholder.com/50')">Tambah ke Favorites</button>
        </div> 


        <div class="cart">
            <h2>Favorites</h2>
            <ul id="cart-items"></ul>
            <p id="total-price">Total: Rp 0</p>
        </div>
    </div>

    <script>
        let cart = [];
        let total = 0;

        function loadCart() {
            const storedCart = localStorage.getItem('cart');
            if (storedCart) {
                cart = JSON.parse(storedCart);
                cart.forEach(item => {
                    total += item.price;
                });
                updateCart();
            }
        }

        function saveCart() {
            localStorage.setItem('cart', JSON.stringify(cart));
        }

        function addToCart(productName, price, imageUrl) {
            cart.push({ name: productName, price: price, image: imageUrl });
            total += price;
            saveCart();
            updateCart();
        }

        function removeFromCart(index) {
            if (confirm(`Anda yakin ingin menghapus ${cart[index].name} dari Favorites?`)) {
                total -= cart[index].price;
                cart.splice(index, 1);
                saveCart();
                updateCart();
            }
        }

        function viewCart() {
            alert('Keranjang: ' + cart.map(item => `${item.name} - Rp ${item.price}`).join(', ')); // Ganti dengan logika yang sesuai
        }

        function updateCart() {
            const cartItems = document.getElementById('cart-items');
            cartItems.innerHTML = '';
            cart.forEach((item, index) => {
                const li = document.createElement('li');
                const img = document.createElement('img');
                img.src = item.image;
                img.alt = item.name;
                img.style.width = '30px'; // Atur lebar gambar di favorites
                li.appendChild(img);
                li.appendChild(document.createTextNode(`${item.name} - Rp ${item.price}`));
                
                const removeButton = document.createElement('span');
                removeButton.textContent = 'Hapus';
                removeButton.classList.add('remove-button');
                removeButton.onclick = () => removeFromCart(index);
                li.appendChild(removeButton);
                
                const cartButton = document.createElement('button');
                cartButton.textContent = 'Keranjang';
                cartButton.classList.add('cart-button');
                cartButton.onclick = viewCart;
                li.appendChild(cartButton);

                cartItems.appendChild(li);
            });
            document.getElementById('total-price').textContent = `Total: Rp ${total}`;
        }

        loadCart();
    </script>

</body>
</html>
