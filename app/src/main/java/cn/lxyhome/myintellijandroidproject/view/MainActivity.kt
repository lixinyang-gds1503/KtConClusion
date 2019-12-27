package cn.lxyhome.myintellijandroidproject.view


import android.os.Bundle
import androidx.databinding.DataBindingUtil
import androidx.lifecycle.Observer
import androidx.lifecycle.ViewModelProviders
import cn.lxyhome.myintellijandroidproject.R
import cn.lxyhome.myintellijandroidproject.base.BaseActivity
import cn.lxyhome.myintellijandroidproject.bingdata.MainData
import cn.lxyhome.myintellijandroidproject.databinding.ActivityMainBinding
import cn.lxyhome.myintellijandroidproject.model.MainViewModel
import cn.lxyhome.myintellijandroidproject.utils.*
import kotlin.properties.Delegates

class MainActivity :BaseActivity() {
    var varVuale:String by Delegates.notNull()
    val valVuale:String by lazy {
        "Test"
    }
    val valVuale2: String by MyLazy()
    var varInt:Int = 1
    private val contentView:ActivityMainBinding by lazy {
            DataBindingUtil.setContentView<ActivityMainBinding>(this@MainActivity,
                R.layout.activity_main)
    }
    private val mMainViewModel:MainViewModel by lazy {
        ViewModelProviders.of(this@MainActivity).get(MainViewModel::class.java)
    }
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        //setContentView(R.layout.activity_main)
        mMainViewModel.mainActivity = this@MainActivity
        contentView.mainViewModel = mMainViewModel
        contentView.mainViewModel?.mLiveData?.value = MainData()

        contentView.mainViewModel?.mLiveData?.observe(this, Observer<MainData> {
            contentView.mainData = it
        })

    }

    override fun onDestroy() {
        super.onDestroy()
    }



}
