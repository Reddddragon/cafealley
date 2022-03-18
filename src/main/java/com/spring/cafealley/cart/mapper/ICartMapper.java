package com.spring.cafealley.cart.mapper;

import java.util.List;

import com.spring.cafealley.command.CartVO;

public interface ICartMapper {

	// 장바구니 추가 카트타입추가x
	void insert(CartVO vo);
	
	// 장바구니 찾기
	List<CartVO> select(String userid);
	
	// 장바구니 삭제
	void delete(int cartno);
	
	//장바구니 추가 카트타입까지 o
	void insertCart(CartVO vo);
	
}

