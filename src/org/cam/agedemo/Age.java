package org.cam.agedemo;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Age extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html");
		PrintWriter pw = resp.getWriter();
		String date = req.getParameter("ydate");
		int age;
		Calendar now = Calendar.getInstance();
		now.setTime(new Date());
		int nowTime = now.get(Calendar.YEAR);
		age = nowTime-Integer.parseInt(date);
		if (age<0||age>200) {
			pw.print("<font size=20 color=red>年龄异常！！</font>");
		}else {
			pw.print("<font size=20 color=blue>你今年"+age+"岁咯</font>");
		}
		resp.setHeader("refresh", "2;URL=index.jsp");
		pw.flush();
		pw.close();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}
	
}
