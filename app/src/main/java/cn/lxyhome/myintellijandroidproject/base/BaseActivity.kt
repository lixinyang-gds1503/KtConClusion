package cn.lxyhome.myintellijandroidproject.base

import android.annotation.SuppressLint
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.LifecycleRegistry
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.MainScope

@SuppressLint("Registered")
open class BaseActivity:AppCompatActivity(),CoroutineScope by MainScope(),LifecycleOwner {
    var mLifecyle:LifecycleRegistry  = LifecycleRegistry(this)

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        ( lifecycle as LifecycleRegistry).handleLifecycleEvent(Lifecycle.Event.ON_CREATE)
    }

    override fun getLifecycle(): Lifecycle {
        if (mLifecyle==null) {
            mLifecyle = LifecycleRegistry(this)
        }
        return mLifecyle
    }

    override fun onDestroy() {
        super.onDestroy()
        ( lifecycle as LifecycleRegistry).handleLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    }
}