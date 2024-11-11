package com.eats.mapper.store;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.eats.store.model.MenuDTO;

@Mapper
public interface storeMenuMapper {
	
	public List<MenuDTO> storeCateList(); //메뉴 카테고리 리스트
	
	public List<MenuDTO> storeMenuList(Integer idx); //메뉴리스트 
	
	public int insertMenu(MenuDTO dto);//메뉴등록
	
	public int deleteMenuCate(String cateName);
	
	public int insertCate(String cateName); //메뉴카테고리 등록
	
	public int deleteMenu(List<Integer> menuIdx);
	
	

}
