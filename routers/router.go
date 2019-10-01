package routers

import (
	"github.com/zuhairamahdi/inventerra/controllers"
	"github.com/astaxie/beego"
	"github.com/beego/admin" //admin package
)

func init() {
	admin.Run()
    beego.Router("/", &controllers.MainController{})
}
