package com.taicang.server.mapper;

import com.taicang.server.entity.ShoppingCart;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ShoppingCartMapper {

    void addToCart(ShoppingCart cart);

    List<ShoppingCart> findByOwner(String own_name);

    void removeFromCart(int shopping_id);

    void updateCart(ShoppingCart cart);

}
