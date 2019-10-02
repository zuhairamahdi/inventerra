package routers

import (
	"github.com/astaxie/beego"
	"github.com/beego/admin" //admin package
	"github.com/zuhairamahdi/inventerra/controllers"
)

func init() {
	admin.Run()
	beego.Router("/", &controllers.MainController{})
}
