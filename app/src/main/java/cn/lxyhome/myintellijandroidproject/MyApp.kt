package cn.lxyhome.myintellijandroidproject

import android.app.Application
import org.litepal.LitePal
import org.litepal.tablemanager.Connector

class MyApp:Application() {
    override fun onCreate() {
        super.onCreate()
        myApp = getSelf()
        InitLitePal()
        Connector.getDatabase()
    }

    fun InitLitePal(): Unit {
        LitePal.initialize(this)
    }
    fun getSelf():MyApp {
        return applicationContext as MyApp
    }

    companion object {
       lateinit var myApp:MyApp
    }
}

