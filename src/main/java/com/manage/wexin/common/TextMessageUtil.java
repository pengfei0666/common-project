package com.manage.wexin.common;

import com.thoughtworks.xstream.XStream;

/**
 * @program: common-project
 * @Date: 2019/3/5 17:20
 * @Author: PengPengFei
 * @Description:  发送文本消息xml封装实现
 */
public class TextMessageUtil {


        /**

         * 将发送消息封装成对应的xml格式

         */

        public  String messageToxml(MessageText  message) {

            XStream xstream  = new XStream();

            xstream.alias("xml", message.getClass());

            return xstream.toXML(message);

        }

        /**

         * 封装发送消息对象,封装时，需要将调换发送者和接收者的关系

         * @param FromUserName

         * @param ToUserName

         */

        public  String initMessage(String FromUserName, String ToUserName) {

            MessageText text = new MessageText();

            text.setToUserName(FromUserName);

            text.setFromUserName(ToUserName);

            text.setContent("欢迎关注本部落");

            text.setCreateTime(System.currentTimeMillis());

            text.setMsgType("text");
//            return  messageToxml.messageToxml(text);
            return messageToxml(text);

        }



}
