package com.manage.framework.config;

import com.manage.common.utils.security.ShiroUtils;
import org.apache.shiro.session.Session;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.server.standard.ServerEndpointExporter;

import javax.websocket.HandshakeResponse;
import javax.websocket.server.HandshakeRequest;
import javax.websocket.server.ServerEndpointConfig;

/**
 * @program: common-project
 * @Date: 2018/12/21 10:36
 * @Author: PengPengFei
 * @Description:
 */
@Configuration
public class WebSocketConfig extends ServerEndpointConfig.Configurator {
/*
    @Override
    public void modifyHandshake(ServerEndpointConfig sec, HandshakeRequest request, HandshakeResponse response) {
        *//*如果没有监听器,那么这里获取到的HttpSession是null*//*
        StandardSessionFacade ssf = (StandardSessionFacade) request.getHttpSession();
        if (ssf != null) {
            HttpSession httpSession = (HttpSession) request.getHttpSession();
            //关键操作
            sec.getUserProperties().put("sessionId", httpSession.getId());
            System.out.println("获取到的SessionID：" + httpSession.getId());
        }
    }*/

    /**
     * 引入shiro框架下的session，获取session信息
     */
  @Override
  public void modifyHandshake(ServerEndpointConfig sec, HandshakeRequest request, HandshakeResponse response) {
    Session shiroSession = ShiroUtils.getSubjct().getSession();
    sec.getUserProperties().put("sessionId", shiroSession.getId());
  }

    @Bean
    public ServerEndpointExporter serverEndpointExporter() {
        //这个对象说一下，貌似只有服务器是tomcat的时候才需要配置,具体我没有研究
        return new ServerEndpointExporter();
    }
}
