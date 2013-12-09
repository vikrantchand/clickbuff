package com.clickbuff.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "MESSAGE_TABLE")
public class Message {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "MSG_ID")
	private Integer msgId;

	@Column(name = "MSG_DATETIME")
	private Date sentDate = new Date();

	@Column(name = "IS_UNREAD")
	private Boolean isUnread = true;

	@Column(name = "ORG_MSG")
	private StringBuilder msg;

	@ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinColumn(name = "SENDER")
	private User sender;

	@ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinColumn(name = "RECEIVER")
	private User receiver;

	@Column(name = "IS_SHOWN_TO_SENDER")
	private Boolean isShownToSender = true;

	@Column(name = "IS_SHOWN_TO_RECEIVER")
	private Boolean isShownToReceiver = true;

	public Date getSentDate() {
		return sentDate;
	}

	public void setSentDate(Date sentDate) {
		this.sentDate = sentDate;
	}

	public StringBuilder getMsg() {
		return msg;
	}

	public void setMsg(StringBuilder msg) {
		this.msg = msg;
	}

	public User getSender() {
		return sender;
	}

	public void setSender(User sender) {
		this.sender = sender;
	}

	public User getReceiver() {
		return receiver;
	}

	public void setReceiver(User receiver) {
		this.receiver = receiver;
	}

	public Boolean getIsShownToSender() {
		return isShownToSender;
	}

	public void setIsShownToSender(Boolean isShownToSender) {
		this.isShownToSender = isShownToSender;
	}

	public Boolean getIsShownToReceiver() {
		return isShownToReceiver;
	}

	public void setIsShownToReceiver(Boolean isShownToReceiver) {
		this.isShownToReceiver = isShownToReceiver;
	}

	public Boolean getIsUnread() {
		return isUnread;
	}

	public void setIsUnread(Boolean isUnread) {
		this.isUnread = isUnread;
	}

	public Integer getMsgId() {
		return msgId;
	}

}
