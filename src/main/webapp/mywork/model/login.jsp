<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">登录页面</h4>
      </div>
      <div class="modal-body">
      		<form action="login.do" method="post">
					  <div class="form-group">
					    <label for="inputUserName" class = "col-md-2 control-label">用户名</label>
					    <div class="col-md-10">
					   
					    <input type="text" class="form-control" name = "uname"
					     id="inputUserName" placeholder="请输入用户名"  
					     data-placement="right" data-trigger = 'click'
					     data-content = "5-10位字母，数字，下划线" >			 
					    <span class = "glyphicon glyphicon-ok " style="display:none ;color:green;"></span> 
							<span class = "glyphicon glyphicon-remove" style="display:none;color:red;"></span>
							</div>					
					  </div>
					 			    
					  <div class="form-group">
					    <label for="inputPassword" class = "col-md-2 ">密码</label>
				    	<div class="col-md-10">
						    <input type="password" class="form-control"  name = "pwd"
						    id="inputPassword" placeholder="请输入密码"
						    data-placement="right" data-trigger="click" 
								data-content="密码长度6到12位">
								<span class = "glyphicon glyphicon-ok " style="display:none;color:green;"></span> 
							<span class = "glyphicon glyphicon-remove" style="display:none;color:red;"></span>
							</div>
					  </div>
					  <div class="checkbox">
					    <label>
					      <input type="checkbox"> 自动登录
					    </label>
					    <a href = '#'><span>忘记密码？</span></a>
					  </div>					  
					
      </div>
      <div class="modal-footer">
        <a class="btn btn-default" href = 'register.jsp'>注册</a>
        <button type="submit" class="btn btn-primary">登录</button>
      </div>
      </form>
    </div>
  </div> 
</div>