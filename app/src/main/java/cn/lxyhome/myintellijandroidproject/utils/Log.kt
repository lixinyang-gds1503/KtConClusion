package cn.lxyhome.myintellijandroidproject.utils

import android.util.Log
import cn.lxyhome.myintellijandroidproject.BuildConfig

var openlog  = BuildConfig.DEBUG
inline fun logi(message: ()->Any?): Unit {
    if(openlog) Log.i("Log-I",message().toString())
}