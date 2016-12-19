<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent">

    <ProgressBar
            android:id="@+id/loadingView"
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            android:padding="150dp"
            android:indeterminate="true"
            android:layout_marginTop="130dp" />

    <TextView
            android:id="@+id/errorView"
            android:text="Error"
            android:layout_marginTop="130dp"
            android:textSize="25dp"
            android:layout_centerHorizontal="true"
            android:textAlignment="center"
            android:layout_centerVertical="true"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"/>

    <LinearLayout
	        android:id="@+id/contentView"
	        android:layout_width="match_parent"
	        android:layout_height="match_parent"
	        android:orientation="vertical"
	        android:visibility="invisible"
	        android:layout_marginTop="130dp"/>

</RelativeLayout>
