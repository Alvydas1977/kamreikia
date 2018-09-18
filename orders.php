<?php
$menu_index = 1;
require('partials/header.php');
require('partials/navigation.php');
require('functions.php');
?>
    <div class="page-header">
        <h1> Orders </h1>
    </div>

    <table class="table table-hover">
        <thead>
        <tr>
            <th><a href="/orders.php?sort-by=id">Id</a></th>
            <th><a href="/orders.php?sort-by=customer_email">Customer email</a></th>
            <th><a href="/orders.php?sort-by=products.title">Product title</a></th>
            <th><a href="/orders.php?sort-by=products.price">Product price</a></th>
        </tr>
        </thead>
        <tbody>
        <?
        $sortBy = isset ($_GET['sort-by']) ? $_GET['sort-by'] : 'id';
        foreach (getOrders($sortBy) as $order) { ?>
            <tr>
                <td><?= $order['id'] ?></td>
                <td><?= $order['customer_email'] ?></td>
                <td><?= $order['title'] ?></td>
                <td><?= $order['price'] ?></td>
            </tr>
        <? } ?>
        </tbody>
    </table>

<?php require('partials/footer.php'); ?>