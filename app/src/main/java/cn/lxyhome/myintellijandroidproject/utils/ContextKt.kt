@file:JvmName("ContextUtils")
package cn.lxyhome.myintellijandroidproject.utils

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.view.View
import android.widget.Toast
import cn.lxyhome.myintellijandroidproject.MyApp

/**
 * reified 的kotlin方法不能被java调用
 */
@JvmOverloads
inline fun <reified T : Activity> Context.startActivity(intent: Intent = Intent(), Block: (Intent) -> Unit) {
        intent.setClass(this,T::class.java)
        Block(intent)
        startActivity(intent)
}

fun Context.initView(view: View) {

}

fun toast(context: Context?, message: String = "") {
        if (context!=null) {
                Toast.makeText(context,message,Toast.LENGTH_LONG).show()
        }
}



