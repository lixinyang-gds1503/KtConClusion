package cn.lxyhome.myintellijandroidproject.entity

import android.os.Parcel
import android.os.Parcelable
import org.litepal.crud.LitePalSupport
import java.lang.reflect.Parameter


annotation class dataclass

@dataclass
data class TestEntity(
    val command: String,
    val `data`: Data,
    val msg: String,
    val ret_code: Int
) : Parcelable {
    constructor(source: Parcel) : this(
        source.readString()?:"",
        source.readParcelable<Data>(Data::class.java.classLoader)?:Data(ArrayList<X>(),"","",""),
        source.readString()?:"",
        source.readInt()
    )

    override fun describeContents() = 0

    override fun writeToParcel(dest: Parcel, flags: Int) = with(dest) {
        this.writeString(command)
        this.writeParcelable(data,0)
        writeString(msg)
        writeInt(ret_code)
    }

    companion object {
        @JvmField
        val CREATOR: Parcelable.Creator<TestEntity> = object : Parcelable.Creator<TestEntity> {
            override fun createFromParcel(source: Parcel): TestEntity = TestEntity(source)
            override fun newArray(size: Int): Array<TestEntity?> = arrayOfNulls(size)
        }
    }
}

@dataclass
data class Data(
    val list: List<X>,
    val location: String,
    val projectid: String,
    val projname: String
) : Parcelable {
    constructor(source: Parcel) : this(
        ArrayList<X>().apply { source.readList(this as List<*>, X::class.java.classLoader) },
        source.readString()?:"",
        source.readString()?:"",
        source.readString()?:""
    )

    override fun describeContents() = 0

    override fun writeToParcel(dest: Parcel, flags: Int) = with(dest) {
        writeList(list)
        writeString(location)
        writeString(projectid)
        writeString(projname)
    }

    companion object {
        @JvmField
        val CREATOR: Parcelable.Creator<Data> = object : Parcelable.Creator<Data> {
            override fun createFromParcel(source: Parcel): Data = Data(source)
            override fun newArray(size: Int): Array<Data?> = arrayOfNulls(size)
        }
    }
}

@dataclass
data class X(
    val id: Int,
    val question: String,
    val rv: Int
) : Parcelable {
    constructor(source: Parcel) : this(
        source.readInt(),
        source.readString()?:"",
        source.readInt()
    )

    override fun describeContents() = 0

    override fun writeToParcel(dest: Parcel, flags: Int) = with(dest) {
        writeInt(id)
        writeString(question)
        writeInt(rv)
    }

    companion object {
        @JvmField
        val CREATOR: Parcelable.Creator<X> = object : Parcelable.Creator<X> {
            override fun createFromParcel(source: Parcel): X = X(source)
            override fun newArray(size: Int): Array<X?> = arrayOfNulls(size)
        }
    }
}

@dataclass
data class User(var logingname: String?, var password: String?) :LitePalSupport(), Parcelable {
    constructor(parcel: Parcel) : this(
       logingname =  parcel.readString(),
       password =  parcel.readString()
    )

    override fun writeToParcel(parcel: Parcel, flags: Int) {
        parcel.writeString(logingname)
        parcel.writeString(password)
    }

    override fun describeContents(): Int {
        return 0
    }

    companion object CREATOR : Parcelable.Creator<User> {
        override fun createFromParcel(parcel: Parcel): User {
            return User(parcel)
        }

        override fun newArray(size: Int): Array<User?> {
            return arrayOfNulls(size)
        }
    }

}