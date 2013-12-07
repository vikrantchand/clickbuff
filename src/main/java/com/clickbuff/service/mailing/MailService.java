package com.clickbuff.service.mailing;


import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
 

/**
 * The Class MailService.
 */
public class MailService {

	/** The mail sender. */
	private MailSender mailSender;
	 
		/**
		 * Sets the mail sender.
		 *
		 * @param mailSender the new mail sender
		 */
		public void setMailSender(MailSender mailSender) {
			this.mailSender = mailSender;
		}
	 
		/**
		 * Send mail.
		 *
		 * @param from the from
		 * @param to the to
		 * @param subject the subject
		 * @param msg the msg
		 */
		public void sendMail(String from, String to, String subject, String msg) {
			SimpleMailMessage message=new SimpleMailMessage();
			message.setTo(to);
			message.setSubject(subject);
			message.setText(msg);
			mailSender.send(message);	
		}
	}

