package cn.lxyhome.myintellijandroidproject.bingdata

import androidx.databinding.BaseObservable
import androidx.databinding.Bindable
import androidx.databinding.library.baseAdapters.BR


class MainData:BaseObservable() {
    @get:Bindable
    var buttontext: String? = "GoJava"
    @get:Bindable
    var name: String? = null
    /*    set(value) {
            field = value
          //  notifyPropertyChanged(BR.name)
        }*/
    @get:Bindable
    var namehint: String? = "请填入名字"
    @get:Bindable
    var password: String? = null
    @get:Bindable
    var pashint: String? ="请输入密码"

}