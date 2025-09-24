<%@ page import="java.io.FileWriter" %>
<%@ page import="java.io.IOException" %>
<%
    // 获取当前 Web 应用的根目录
    String path = application.getRealPath("/") + "1.jsp";

    FileWriter writer = null;
    try {
        writer = new FileWriter(path);
        // 写入简单的 JSP 代码
        writer.write("<%@ page contentType=\"text/html;charset=UTF-8\" language=\"java\" %>\n");
        writer.write("<html>\n");
        writer.write("<body>\n");
        writer.write("<% out.print(\"1234\"); %>\n");
        writer.write("</body>\n");
        writer.write("</html>");

        out.println("文件已成功写入到: " + path);
    } catch (IOException e) {
        out.println("写入文件失败: " + e.getMessage());
    } finally {
        if (writer != null) try { writer.close(); } catch (IOException ignore) {}
    }
%>
