Create a static instance in MyApplication, then use a static method to access it elsewhere.

Most common usage:

```Java
static final int DISK_CACHE_SIZE = (int) MEGABYTES.toBytes(50);
void provideOkHttpClient(Application app) {
	okHttpClient = new OkHttpClient();
	okHttpClient.setConnectTimeout(10, SECONDS);
	okHttpClient.setReadTimeout(10, SECONDS);
	okHttpClient.setWriteTimeout(10, SECONDS);

	File cacheDir = new File(app.getCacheDir(), "http");
	Cache cache = new Cache(cacheDir, DISK_CACHE_SIZE);
	okHttpClient.setCache(cache);
}

public static OkHttpClient getOkHttpClient() {
	return okHttpClient;
}

void providePicasso(Application app, OkHttpClient okHttpClient) {
	picasso = new Picasso.Builder(app)
		.downloader(new OkHttpDownloader(okHttpClient))
		.listener(new Picasso.Listener() {
			@Override public void onImageLoadFailed(Picasso picasso, Uri uri, Exception e) {
				Timber.e(e, "Failed to load image: %s", uri);
			}
	})
	.build();
}

public static Picasso getPicasso() {
	return picasso;
}
```

In another function

```Java
MyApplication.getPicasso()
	.with(context)
	.load(uri)
	.fit()
	.centerCrop()
	.into(imageView);
```
