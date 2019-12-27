package cn.lxyhome.myintellijandroidproject.model

import android.widget.Toast
import androidx.databinding.Observable
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import cn.lxyhome.myintellijandroidproject.bingdata.MainData
import cn.lxyhome.myintellijandroidproject.entity.User
import cn.lxyhome.myintellijandroidproject.utils.startActivity
import cn.lxyhome.myintellijandroidproject.utils.toast
import cn.lxyhome.myintellijandroidproject.view.JavaActivity
import cn.lxyhome.myintellijandroidproject.view.MainActivity
import org.litepal.LitePal

internal class MainViewModel:ViewModel() {
        var mainActivity:MainActivity? = null

        var mLiveData = MutableLiveData<MainData>()


        fun GoJava(): Unit {
                val mainData = mLiveData.value
                if (mainData!=null) {
                        val user = User(mainData.name,mainData.password)
                        val b = user.save()
                        if (b) {
                                toast(mainActivity,"存储成功")
                                  mainActivity?.startActivity<JavaActivity> {
                                           it.putExtra("message","Welcome from Kotlin")
                                   }
                        }else{
                                toast(mainActivity,"存储失败")
                        }
                }
          /*  val mainData = MainData()
            mainData.buttontext ="GoKotlin"
            mainData.namehint = "HintName"
            mainData.pashint="PassWordHint"
            mLiveData.value = mainData*/
        }

}