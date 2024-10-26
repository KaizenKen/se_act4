<?php
  require_once 'dbConfig.php';
  require_once 'models.php';

  if(isset($_POST['addRestaurant'])) {
    $query = addRestaurant($pdo, $_POST['name'], $_POST['location']);

    if($query){
      header(header: 'location: ../restaurants/restaurants.php');
    } else{
      echo 'Add Restaurant Failed';
    }
  }

  if(isset($_POST['deleteRestaurant'])) {
    $query = deleteRestaurant($pdo, $_GET['restaurantID']);

    if($query){
      header(header: 'location: ../restaurants/restaurants.php');
    } else{
      echo 'Delete Restaurant Failed';
    }
  }

  if(isset($_POST['editRestaurant'])) {
    $query = editRestaurant($pdo, $_GET['restaurantID'], $_POST['name'], $_POST['location']);

    if($query){
      header(header: 'location: ../restaurants/restaurants.php');
    } else{
      echo 'Edit Restaurant Failed';
    }
  }

  if(isset($_POST['addItem'])) {
    $query = addItem($pdo, $_GET['restaurantID'], $_POST['name'], $_POST['price']);

    if($query){
      header(header: 'location: ../items/displayItems.php?restaurantID='. $_GET['restaurantID']);
    } else{
      echo 'Add Restaurant Failed';
    }
  }

  if(isset($_POST['deleteItem'])) {
    $query = deleteItem($pdo, $_GET['itemID']);

    if($query){
      header(header: 'location: ../items/displayItems.php?restaurantID='.$_GET['restaurantID']);
    } else{
      echo 'Delete Restaurant Failed';
    }
  }

  if(isset($_POST['editItem'])) {
    $query = editItem($pdo, $_GET['itemID'], $_POST['name'], $_POST['price']);

    if($query){
      header(header: 'location: ../items/displayItems.php?restaurantID='.$_GET['restaurantID']).'&itemID='.$_GET['itemID'];
    } else{
      echo 'Edit Restaurant Failed';
    }
  }

  else{
    echo 'Unknown Action';
  }
?>