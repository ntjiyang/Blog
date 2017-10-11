package com.ys.wg.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ys.wg.dao.TypeDao;
import com.ys.wg.model.Type;
import com.ys.wg.service.TypeService;

@Service
@Transactional(rollbackFor = Exception.class)
public class TypeServiceImpl implements TypeService {

	@Resource
	private TypeDao typeDao;


	public Type selectTypeName(int typeid) {
		
		return typeDao.selectTypeName(typeid);
	}

}
