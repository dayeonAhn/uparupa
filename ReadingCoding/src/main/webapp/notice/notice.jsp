<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>��������</title>
    <link rel="stylesheet" href="../resources/style/com.css">
    <link rel="stylesheet" href="../resources/style/temp.css"> <!--�缺 -->
</head>
<body>
<style>
        :root {
            --maincolor: #65508B;
        }
    </style>
    <jsp:include page="../header.jsp"></jsp:include>

    <div class="container">
        <h1 class="notice-title">��������</h1>

        <table class="notice-table">
            <thead>
                <tr>
                    <th>��ȣ</th>
                    <th>����</th>
                    <th>�ۼ���</th>
                    <th>�ۼ���¥</th>
                    <th>��ȸ��</th>
                </tr>
            </thead>
            <tbody>
                <tr>  
                    <td>1</td>
                    <td><a href="noticeBoard.jsp">���������Դϴ�.</a></td>
                    <td>������</td>
                    <td>2024.08.01</td>
                    <td>2</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td><a href="noticeBoard.jsp">�� ��° ���������Դϴ�.</a></td>
                    <td>������</td>
                    <td>2024.08.02</td>
                    <td>5</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td><a href="noticeBoard.jsp">�� ��° ���������Դϴ�.</a></td>
                    <td>������</td>
                    <td>2024.08.03</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td><a href="noticeBoard.jsp">�� ��° ���������Դϴ�.</a></td>
                    <td>������</td>
                    <td>2024.08.04</td>
                    <td>8</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td><a href="noticeBoard.jsp">�ټ� ��° ���������Դϴ�.</a></td>
                    <td>������</td>
                    <td>2024.08.05</td>
                    <td>7</td>
                </tr>
                <tr>
                    <td>6</td>
                    <td><a href="noticeBoard.jsp">���� ��° ���������Դϴ�.</a></td>
                    <td>������</td>
                    <td>2024.08.06</td>
                    <td>4</td>
                </tr>
            </tbody>            
        </table>

        <div class="pagination">
            <a href="#">&lt;</a>
            <a href="#">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <a href="#">&gt;</a>
        </div>
    </div>
    
    <jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>
