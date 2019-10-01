package routers

import (
	"github.com/zuhairamahdi/inventerra/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("/", &controllers.MainController{})
}
