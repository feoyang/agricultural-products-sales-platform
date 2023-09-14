package com.taicang.server.controller;

import com.taicang.server.entity.Cart;
import com.taicang.server.entity.Purchase;
import com.taicang.server.entity.ShoppingCart;
import com.taicang.server.service.OrderService;
import com.taicang.server.service.PurchaseService;
import com.taicang.server.service.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/member/cart")
public class ShoppingCartController {
    @Autowired
    private ShoppingCartService shoppingCartService;
    @Autowired
    private PurchaseService purchaseService;
    @Autowired
    private OrderService orderService;

    @PostMapping("/add")
    public ResponseEntity<?> addToCart(@RequestBody ShoppingCart cart) {
        shoppingCartService.addToCart(cart);
        return ResponseEntity.ok("商品已添加到购物车");
    }

    @GetMapping("/items/{own_name}")
    public ResponseEntity<List<Cart>> findByOwner(@PathVariable String own_name) {
        List<ShoppingCart> carts = shoppingCartService.findByOwner(own_name);
        List<Cart> cartList = new ArrayList<>();
        for(var c:carts){
            Cart cart = new Cart(c,orderService.selectById(c.getOrder_id()));
            cartList.add(cart);
        }
        return new ResponseEntity<>(cartList, HttpStatus.OK);
    }

    @DeleteMapping("/remove/{shopping_id}")
    public ResponseEntity<?> removeFromCart(@PathVariable int shopping_id) {
        shoppingCartService.removeFromCart(shopping_id);
        return ResponseEntity.ok("商品已从购物车中移除");
    }

    @PutMapping("/update")
    public ResponseEntity<?> updateCart(@RequestBody ShoppingCart cart) {
        shoppingCartService.updateCart(cart);
        return ResponseEntity.ok("购物车已更新");
    }

    @PostMapping("/createPurchase")
    public ResponseEntity<?> createOrder(@RequestBody Purchase purchase) {
//        System.out.println(purchase.getOwn_name());
        purchaseService.addPurchase(purchase);
        return ResponseEntity.ok("订单已创建");
    }
}






