<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>wekidi isback</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #010101;
            margin: 0;
            padding: 20px;
        }
        h1, h2 {
            color: #b6895b;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background: #010101;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .cart {
            margin: 20px 0;
            border: 1px solid #b6895b;
            border-radius: 8px;
            padding: 15px;
            background: #5c5c5c;
            display: flex;
            flex-direction: column;
        }
        ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
            flex: 1;
        }
        li {
            padding: 10px;
            border-bottom: 1px solid #b6895b;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        li:last-child {
            border-bottom: none;
        }
        .remove-button {
            color: #b6895b;
            cursor: pointer;
            margin-left: 10px;
            font-weight: bold;
        }
        .remove-button:hover {
            text-decoration: underline;
        }
        #total-section {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 10px;
            font-size: 1.2em;
        }
        #total-price {
            font-weight: bold;
        }
        #checkout-button {
            background-color: #b6895b;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1.2em;
            transition: background-color 0.3s;
            margin-top: 15px;
        }
        #checkout-button:hover {
            background-color: #816140;
        }
        .product-image {
            width: 50px;
            height: auto;
            margin-right: 15px;
        }
        .quantity-controls {
            display: flex;
            align-items: center;
        }
        .quantity-button {
            border: 1px solid #ddd;
            padding: 5px 10px;
            margin: 0 5px;
            cursor: pointer;
        }
        .quantity-input {
            width: 50px;
            text-align: center;
        }
        .product-description {
            font-size: 0.9em;
            color: #ffffff;
            margin-top: 5px;
        }

        /* Media Queries untuk Responsif */
        @media (max-width: 600px) {
            .container {
                padding: 10px;
            }
            #checkout-button {
                width: 100%;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Keranjang Belanja</h1>
        <div class="cart">
            <h2>Daftar Item</h2>
            <ul id="cart-items"></ul>
            <div id="total-section">
                <span id="total-price">Total: Rp 0</span>
                <button id="checkout-button" onclick="checkout()">Checkout</button>
            </div>
        </div>
    </div>

    <script>
        let cart = JSON.parse(localStorage.getItem('cart')) || [];

        function updateCart() {
            const cartItems = document.getElementById('cart-items');
            cartItems.innerHTML = '';
            cart.forEach((item, index) => {
                const li = document.createElement('li');
                const img = document.createElement('img');
                img.src = item.image; // Gambar produk
                img.alt = item.name;
                img.className = 'product-image';

                li.appendChild(img);
                li.appendChild(document.createTextNode(`${item.name} - Rp ${item.price}`));

                // Menambahkan deskripsi produk
                const description = document.createElement('div');
                description.className = 'product-description';
                description.textContent = item.description; // Deskripsi produk
                li.appendChild(description);

                // Kontrol kuantitas
                const quantityControls = document.createElement('div');
                quantityControls.className = 'quantity-controls';

                const decreaseButton = document.createElement('button');
                decreaseButton.textContent = '-';
                decreaseButton.className = 'quantity-button';
                decreaseButton.onclick = () => updateQuantity(index, -1);
                quantityControls.appendChild(decreaseButton);

                const quantityInput = document.createElement('input');
                quantityInput.type = 'text';
                quantityInput.value = item.quantity;
                quantityInput.className = 'quantity-input';
                quantityInput.readOnly = true;
                quantityControls.appendChild(quantityInput);

                const increaseButton = document.createElement('button');
                increaseButton.textContent = '+';
                increaseButton.className = 'quantity-button';
                increaseButton.onclick = () => updateQuantity(index, 1);
                quantityControls.appendChild(increaseButton);

                li.appendChild(quantityControls);

                const checkbox = document.createElement('input');
                checkbox.type = 'checkbox';
                checkbox.checked = item.selected || false;
                checkbox.onclick = () => {
                    toggleSelect(index);
                    updateTotal(); // Update total ketika checkbox diklik
                };
                li.appendChild(checkbox);

                const removeButton = document.createElement('span');
                removeButton.textContent = 'Hapus';
                removeButton.classList.add('remove-button');
                removeButton.onclick = () => removeFromCart(index);
                li.appendChild(removeButton);
                
                cartItems.appendChild(li);
            });
            updateTotal(); // Memperbarui total setiap kali keranjang diperbarui
        }

        function updateTotal() {
            const total = cart.reduce((sum, item) => {
                return item.selected ? sum + (item.price * item.quantity) : sum;
            }, 0);
            document.getElementById('total-price').textContent = `Total: Rp ${total}`;
        }

        function updateQuantity(index, change) {
            if (cart[index].quantity + change < 1) return; // Minimal kuantitas 1
            cart[index].quantity += change; // Update kuantitas
            localStorage.setItem('cart', JSON.stringify(cart)); // Simpan ke Local Storage
            updateCart();
        }

        function removeFromCart(index) {
            if (confirm(`Anda yakin ingin menghapus ${cart[index].name} dari keranjang?`)) {
                cart.splice(index, 1);
                localStorage.setItem('cart', JSON.stringify(cart));
                updateCart();
            }
        }

        function checkout() {
            const selectedItems = cart.filter(item => item.selected);
            if (selectedItems.length === 0) {
                alert('Silakan pilih produk untuk checkout.');
                return;
            }
            alert(`Checkout untuk ${selectedItems.length} item.`);
        }

        function toggleSelect(index) {
            cart[index].selected = !cart[index].selected;
            localStorage.setItem('cart', JSON.stringify(cart));
            updateTotal(); // Memperbarui total saat item dipilih/dihapus
        }

        updateCart(); // Memperbarui tampilan keranjang saat halaman dimuat
    </script>

</body>
</html>
