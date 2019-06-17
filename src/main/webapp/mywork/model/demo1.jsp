<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>我的收藏</h1>
			<table class = 'table table-bordered table-hover'>
				<tr>
			<th>商品</th>
			<th>单价(元)</th>
			<th>颜色</th>
			<th>库存</th>
			<th>好评率</th>
			<th>操作</th>
		</tr>
		<tr>
			<td>康师傅红烧牛肉面</td>
			<td>4.5</td>
			<td>红</td>
			<td>500</td>
			<td>99.9%</td>
			<td>
				<input type = 'button' value = '加入购物车' onclick = 'add_shoppingcart(this)'>
			</td>
		</tr>
		<tr>
			<td>康师傅老坛酸菜面</td>
			<td>3.5</td>
			<td>紫</td>
			<td>600</td>
			<td>98.9%</td>
			<td>
				<input type = 'button' value = '加入购物车' onclick = 'add_shoppingcart(this)'>
			</td>
		</tr>
			</table>
			<ul class="pagination">
		    <li>
		      <a href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    <li class = "active"><a href="#">1</a></li>
		    <li><a href="#">2</a></li>
		    <li><a href="#">3</a></li>
		    <li><a href="#">4</a></li>
		    <li><a href="#">5</a></li>
		    <li>
		      <a href="#" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>