<?php
function isValidPhoneName($phoneName)
{
    if (strlen($phoneName) > 3) {
        return true;
    } else {
        return false;
    }
}

function isValidProductId($phoneId)
{
    if (!is_numeric($phoneId) > 1) {
        return false;
    }
    if ($phoneId < 1) {
        return false;
    } else {
        return true;
    }
}

function getProducts()
{
    require_once('mysql.php');
    $products = [];
    $results = mysqli_query($conn, 'SELECT id, title, price FROM products ORDER BY id ASC');

    if (mysqli_num_rows($results) > 0) {
        while ($row = mysqli_fetch_assoc($results)) {
            array_push($products, $row);
        }
    }
    return $products;
}

function getOrders($sortBy = 'id')
{
    require_once('mysql.php');
    $sortBy = mysqli_real_escape_string($conn, $sortBy);
    $orders = [];
    $results = mysqli_query($conn,
        'SELECT orders.id as id, orders.customer_email as customer_email, products.title as title, '
        . 'products.price as price FROM orders '
        . 'LEFT JOIN products ON orders.product_id = products.id ORDER BY '.$sortBy.' ASC');

    if (mysqli_num_rows($results) > 0) {
        while ($row = mysqli_fetch_assoc($results)) {
            array_push($orders, $row);
        }
    }
    return $orders;
}