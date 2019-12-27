package cn.lxyhome.myintellijandroidproject.view;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import cn.lxyhome.myintellijandroidproject.R;
import cn.lxyhome.myintellijandroidproject.entity.User;
import org.litepal.LitePal;

public class JavaActivity extends AppCompatActivity {
    private TextView tv_message,psw;
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_java);
        tv_message = findViewById(R.id.tv_message);
        psw = findViewById(R.id.psw);
        User user = LitePal.find(User.class, 1);
        if (user!=null) {
            tv_message.setText(user.component1());
            psw.setText(user.component2());
        }
    }
}
