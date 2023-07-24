package com.pet.mapper;

import java.util.List;

import com.pet.model.ReviewVO;

public interface ReviewMapper {
	
	// 리뷰 목록
    public List<ReviewVO> getList();
}
