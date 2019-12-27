package cn.lxyhome.myintellijandroidproject.utils

import cn.lxyhome.myintellijandroidproject.view.MainActivity
import kotlin.properties.ReadOnlyProperty
import kotlin.reflect.KProperty

class MyLazy : ReadOnlyProperty<MainActivity, String> {
    override fun getValue(thisRef: MainActivity, property: KProperty<*>): String {
        return "from ${thisRef} val kotlin"
    }
}
