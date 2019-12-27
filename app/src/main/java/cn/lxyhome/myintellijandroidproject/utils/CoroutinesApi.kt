@file:JvmName("Coroutine")
package cn.lxyhome.myintellijandroidproject.utils

import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.async
import kotlinx.coroutines.launch


fun CoroutuneAsyncFun(spose: CoroutineScope, block: suspend CoroutineScope.() -> Unit) {
        spose.launch {
            logi{"thead name:${Thread.currentThread().name}"}
            async(Dispatchers.IO) {
                logi{"thead name:${Thread.currentThread().name}"}
                block()
            }
        }
}

