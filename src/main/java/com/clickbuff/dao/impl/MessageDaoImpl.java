package com.clickbuff.dao.impl;

import com.clickbuff.commons.dao.GenericJpaDao;
import com.clickbuff.dao.MessageDao;
import com.clickbuff.model.Message;

public class MessageDaoImpl extends GenericJpaDao<Message, Integer> implements
		MessageDao {

	public MessageDaoImpl() {
		super(Message.class);
	}

}
