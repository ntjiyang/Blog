package com.ys.wg.dao;

import org.springframework.stereotype.Repository;

import com.ys.wg.model.Type;

@Repository
public interface TypeDao {

	Type selectTypeName(int type);

}
