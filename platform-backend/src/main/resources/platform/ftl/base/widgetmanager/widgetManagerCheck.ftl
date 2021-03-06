<!DOCTYPE html>
<html>
	<head>
	    <title>控件管理</title>
	    <#include "../../include.ftl">
	</head>
	<body style="overflow-y: hidden"  scroll="no">
	  <table id="widgetTable2" class="easyui-datagrid" pageSize="20" fit ="true"
	            data-options="singleSelect:true,collapsible:false,
				url:'${webRoot}/widgetmanager/listOfNewPage',
				idField:'widgetId',
				method:'get',
				remoteSort:false,
				multiSort:true,
				rownumbers:true ">
	        <thead>
	        <tr>  
	        	<th data-options="field:'fileId',hidden:true"></th>
	        	<th data-options="field:'widgetId',hidden:true"></th>
	    	 	<th data-options="field:'widgetName',width:100,align:'center'">控件名称</th>
	    	 	<th data-options="field:'widgetPath',width:260,align:'center',hidden:'true'">控件下载路径</th>
	    	 	<th data-options="field:'widgetVersion',width:100,align:'center'">新版本号</th>
	    	 	<th data-options="field:'widgetExplain',width:220,align:'center'">说明</th>
	    	 	<th data-options="field:'_operate',width:130,align:'center',formatter:formateWidgetApplicant">操作</th>
	    	 	
            </tr>
	        </thead>
	    </table>
	</body>
	<script type="text/javascript">
	       
			//格式化
			function formateWidgetApplicant(value,row,index){
			    return '<a href="#" onclick="downLoadWidget(\''+row.fileId+'\')">下载</a>';
			}
			
			//格式化控件版本
			function formateWidgetVersion(value){
		 
				if(value == undefined){
					return '无';
				}else{
				  return value;
				}
			}
			
		 	function downLoadWidget(fileId){
			 var link="${webRoot}/file/filedownload?downloadfiles="+fileId;  
            window.open(link);  
            return false;  
			 }
	    </script>
</html>
