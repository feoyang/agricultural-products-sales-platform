package com.taicang.server.service;

import com.taicang.server.entity.ShoppingCart;
import com.taicang.server.mapper.ShoppingCartMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Time;
import java.util.Date;
import java.util.List;

@Service
public class ShoppingCartService {
    @Autowired
    private ShoppingCartMapper shoppingCartMapper;

    public void addToCart(ShoppingCart cart) {
        cart.setCreate_time(new Date());
        cart.setUpdate_time(new Date());
        shoppingCartMapper.addToCart(cart);
    }

    public List<ShoppingCart> findByOwner(String ownName) {
        return shoppingCartMapper.findByOwner(ownName);
    }

    public void removeFromCart(int shoppingId) {
        shoppingCartMapper.removeFromCart(shoppingId);
    }

    public void updateCart(ShoppingCart cart) {
        cart.setUpdate_time(new Date());
        shoppingCartMapper.updateCart(cart);
    }
}
