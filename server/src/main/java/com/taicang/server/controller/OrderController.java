package com.taicang.server.controller;


import com.taicang.server.entity.*;
import com.taicang.server.service.OrderService;
import com.taicang.server.service.PurchaseDetailService;
import com.taicang.server.service.PurchaseService;
import com.taicang.server.service.SellPurchaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/order")
public class OrderController {

    @Autowired
    private SellPurchaseService sellPurchaseService;

    private Map<Integer,Category> categories = new HashMap<>(){
        {
            //
            put(0,new Category(0,"水果","",new ArrayList<Child>(){
                {
                    add(new Child("","",null,0,"热带水果","","","",""));
                    add(new Child("","",null,1,"柑橘类","","","",""));
                    add(new Child("","",null,2,"浆果类","","","",""));
                    add(new Child("","",null,3,"瓜果类","","","",""));
                }
            }));
            put(1,new Category(1,"蔬菜","",new ArrayList<Child>() {
                {
                    add(new Child("","",null,0,"葱姜蒜类","","","",""));
                    add(new Child("","",null,1,"根茎菜类","","","",""));
                    add(new Child("","",null,2,"叶菜类","","","",""));
                    add(new Child("","",null,3,"豆菜类","","","",""));
                }
            }));
            put(2,new Category(2,"禽兽","",new ArrayList<Child>(){
                {
                    add(new Child("","",null,0,"禽畜苗","","","",""));
                    add(new Child("","",null,1,"蛋类","","","",""));
                    add(new Child("","",null,2,"活畜","","","",""));
                    add(new Child("","",null,3,"活禽","","","",""));
                }
            }));
            put(3,new Category(3,"水产","",new ArrayList<Child>(){
                {
                    add(new Child("", "", null, 0, "葱姜蒜类", "", "", "", ""));
                    add(new Child("", "", null, 1, "虾类", "", "", "", ""));
                    add(new Child("", "", null, 2, "贝类", "", "", "", ""));
                    add(new Child("", "", null, 3, "食用鱼类", "", "", "", ""));
                }
            }));
            put(4,new Category(4,"农副加工","",new ArrayList<Child>(){
                {
                    add(new Child("","",null,0,"干果坚果","","","",""));
                    add(new Child("","",null,1,"茶叶","","","",""));
                    add(new Child("","",null,2,"肉制品加工","","","",""));
                    add(new Child("","",null,3,"水产加工","","","",""));
                }
            }));
            put(5,new Category(5,"粮油米面","",new ArrayList<Child>(){
                {
                    add(new Child("","",null,0,"食用油","","","",""));
                    add(new Child("","",null,1,"调味品","","","",""));
                    add(new Child("","",null,2,"香辛料","","","",""));
                    add(new Child("","",null,3,"谷物粉淀粉","","","",""));
                }
            }));
            put(6,new Category(6,"种子种苗","",new ArrayList<Child>(){
                {
                    add(new Child("","",null,0,"水果种子","","","",""));
                    add(new Child("","",null,1,"花草类种子","","","",""));
                    add(new Child("","",null,2,"蔬菜种子","","","",""));
                    add(new Child("","",null,3,"水果类种子","","","",""));
                }
            }));
            put(7,new Category(7,"苗木花草","",new ArrayList<Child>(){
                {
                    add(new Child("","",null,0,"乔木","","","",""));
                    add(new Child("","",null,1,"灌木","","","",""));
                    add(new Child("","",null,2,"竹类植物","","","",""));
                    add(new Child("","",null,3,"棕榈类植物","","","",""));
                }
            }));
    }
};


    @Autowired
    private PurchaseDetailService purchaseDetailService;

    @Autowired
    private PurchaseService purchaseService;

    @GetMapping("/getPersonalPurchases")
    public List<Purchase> getPersonalPurchases(String ownName) {
        return purchaseService.getPersonalPurchases(ownName);
    }

    @GetMapping("/getSellPurchase")
    public List<SellPurchase> getSellPurchase(String ownName) {
        return sellPurchaseService.getSellOrders(ownName);
    }

    @GetMapping("/getPurchaseDetailsByPurchaseId")
    public List<PurchaseDetail> getPurchaseDetailsByPurchaseId(int purchaseId) {
        return purchaseDetailService.getPurchaseDetailsByPurchaseId(purchaseId);
    }

    @Autowired
    private OrderService orderService;

    @GetMapping("/selectById/{id}")
    public ResponseEntity<Order> selectById(@PathVariable Integer id) {
        Order order = orderService.selectById(id);
        if (order != null) {
            return ResponseEntity.ok(order);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @GetMapping("/pageOrders")
    public ResponseEntity<?> queryOrderPage(@RequestParam(value = "pageNo", defaultValue = "1") Integer pageNo,
                                            @RequestParam(value = "pageSize", defaultValue = "10") Integer pageSize) {
        Page pageInfo = orderService.selectbyPage(pageNo, pageSize);
        return ResponseEntity.ok(pageInfo);
    }

    @PostMapping("/insert")
    public ResponseEntity<?> insert(@RequestBody Order order) {
        orderService.insert(order);
        Integer generatedId = orderService.selectLastInsertId();
        return ResponseEntity.ok(generatedId);
    }

    @PostMapping("/update")
    public ResponseEntity<?> update(@RequestBody Order order) {
        orderService.update(order);
        return ResponseEntity.ok("修改成功");
    }

    @DeleteMapping("/deleteById/{id}")
    public ResponseEntity<?> deleteById(@PathVariable Integer id) {
        orderService.delete(id);
        return ResponseEntity.ok("删除成功");
    }

    @GetMapping("/selectByTitle/{title}")
    public ResponseEntity<?> selectByTitle(@PathVariable String title) {
        List<Order> orders = orderService.selectByTitle(title);
        return ResponseEntity.ok(orders);
    }

    @GetMapping("/getCategory/{id}")
    public ResponseEntity<?> getCategory(@PathVariable Integer id) {
        List<Order> allOrders = orderService.getAllOrders();
        Category result = new Category();
        Category cate = categories.get(id);
        List<Child> children = new ArrayList<>();
        for (var c : cate.getChildren()) {
            Child child = new Child();
            child.setGoods(new ArrayList<>());
            child.setId(c.getId());
            child.setName(c.getName());
            for (Order good : allOrders) {
                if (good.getCategory_id() == id && good.getChild_id() == c.getId()) {
                    child.getGoods().add(good);
                }
            }
            children.add(child);
        }
        result.setChildren(children);
        result.setId(id);
        result.setName(cate.getName());

        return ResponseEntity.ok(result);

    }
    @GetMapping("/getCategory")
    public ResponseEntity<?> getCategoryAll() {
        List<Order> category = orderService.getAllOrders();
        List<Category> result = new ArrayList<>();
        for (var cate : categories.values()) {
            Category category1 = new Category();
            category1.setChildren(new ArrayList<>());
            category1.setId(cate.getId());
            category1.setName(cate.getName());
            for (var c : cate.getChildren()) {
                Child child = new Child();
                child.setGoods(new ArrayList<>());
                child.setId(c.getId());
                child.setName(c.getName());
                for (Order good : category) {
                    if (good.getCategory_id() == cate.getId() && good.getChild_id() == c.getId()) {
                        child.getGoods().add(good);
                    }
                }
                category1.getChildren().add(child);
            }
            result.add(category1);
        }
        return ResponseEntity.ok(result);

    }
}