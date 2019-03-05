package com.manage.common.listener;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @program: common-project
 * @Date: 2018/12/21 13:19
 * @Author: PengPengFei
 * @Description:
 */
public class RequestListener implements ServletRequestListener {
    @Override
    public void requestDestroyed(ServletRequestEvent servletRequestEvent) {

    }

    @Override
    public void requestInitialized(ServletRequestEvent servletRequestEvent) {
        //将所有request请求都携带上httpSession
        HttpSession httpSession= ((HttpServletRequest) servletRequestEvent.getServletRequest()).getSession();
        System.out.println("将所有request请求都携带上httpSession " + httpSession.getId());
    }

    public RequestListener(){

    }
}
