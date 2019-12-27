package cn.lxyhome.myintellijandroidproject.utils


fun TwoNumberPlus(block: (Int, Int) -> Number) {
    val i = block(4, 5)
    logi{"this is $i"}
}