package com.clickbuff.dao.impl;

import org.springframework.stereotype.Repository;

import com.clickbuff.commons.dao.GenericJpaDao;
import com.clickbuff.dao.MessageDao;
import com.clickbuff.model.Message;
@Repository
public class MessageDaoImpl extends GenericJpaDao<Message, Integer> implements
		MessageDao {

	public MessageDaoImpl() {
		super(Message.class);
	}

}
