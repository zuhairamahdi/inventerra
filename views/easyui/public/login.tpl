{{template "../public/header.tpl"}}
<script type="text/javascript">
var URL="/public"
    $(function(){
        $("#dialog").dialog({
            closable:false,
            buttons:[{
            text:'Save',
            iconCls:'icon-save',
            handler:function(){
                fromsubmit();
            }
        },{
            text:'Cancel',
            iconCls:'icon-cancel',
            handler:function(){
                $("#form").from("reset");
            }
        }]
        });
    });
function fromsubmit(){
    $("#form").form('submit',{
        url:URL+'/login?isajax=1',
        onSubmit:function(){
            return $("#form").form('validate');
        },
        success:function(r){
            var r = $.parseJSON( r );
            if(r.status){
                location.href = URL+"/index"
            }else{
                vac.alert(r.info);
            }
        }
    });
}

var SubmitOrHidden = function(evt){
    evt = window.event || evt;
    if(evt.keyCode==13){
          fromsubmit();       
     }
                
}
window.document.onkeydown=SubmitOrHidden;
</script>
<body>
<div style="text-align:center;margin:0 auto;width:350px;height:250px;" id="dialog" title="Login">
<div style="padding:20px 20px 20px 40px;" >
<form id="form" method="post">
<table >
    <tr>
        <td>Username：</td><td><input type="text" class="easyui-validatebox" required="true" name="username" missingMessage="请输入用户名"/></td>
    </tr>
    <tr>
        <td>Password：</td><td><input type="password" class="easyui-validatebox" required="true" name="password" missingMessage="请输入密码"/></td>
    </tr>
</table>
</form>
</div>
</div>
</body>
</html>