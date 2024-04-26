package com.example.kardiology_flutter

import io.flutter.embedding.android.FlutterActivity
import org . devio . flutter . splashscreen . SplashScreen

class MainActivity: FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        // enable full screen
        SplashScreen.show(this, true)
        super.onCreate(savedInstanceState)
    }
}
