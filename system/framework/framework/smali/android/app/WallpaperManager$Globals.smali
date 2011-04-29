.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_WALLPAPER:I = 0x1


# instance fields
.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mLockscreenWallpaper:Landroid/graphics/Bitmap;

.field private mService:Landroid/app/IWallpaperManager;

.field private mWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .parameter "looper"

    .prologue
    .line 179
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 180
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 181
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 182
    new-instance v1, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v1, p0, p1}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    .line 196
    return-void
.end method

.method static synthetic access$002(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$202(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mLockscreenWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "context"
    .parameter "isLockscreen"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 266
    :try_start_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 267
    .local v6, params:Landroid/os/Bundle;
    if-eqz p2, :cond_3

    iget-object v8, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v8, p0}, Landroid/app/IWallpaperManager;->getLockscreenWallpaper(Landroid/app/IWallpaperManagerCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    move-object v2, v8

    .line 270
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    :goto_0
    if-eqz v2, :cond_8

    .line 271
    const-string/jumbo v8, "width"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 272
    .local v7, width:I
    const-string v8, "height"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 274
    .local v3, height:I
    if-eqz p2, :cond_0

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDefaultDisplay(Landroid/view/Display;)Landroid/view/Display;

    move-result-object v1

    .line 276
    .local v1, display:Landroid/view/Display;
    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_4

    move v4, v12

    .line 278
    .local v4, isPortrait:Z
    :goto_1
    if-eqz v4, :cond_5

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v8

    move v7, v8

    .line 279
    :goto_2
    if-eqz v4, :cond_6

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v8

    move v3, v8

    .line 284
    .end local v1           #display:Landroid/view/Display;
    .end local v4           #isPortrait:Z
    :cond_0
    :goto_3
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 285
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 286
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v8, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 288
    if-lez v7, :cond_1

    if-gtz v3, :cond_7

    .line 290
    :cond_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 293
    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 296
    :goto_4
    if-eqz v0, :cond_2

    .line 297
    :try_start_2
    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_2
    move-object v8, v0

    .line 315
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #height:I
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #params:Landroid/os/Bundle;
    .end local v7           #width:I
    :goto_5
    return-object v8

    .line 267
    .restart local v6       #params:Landroid/os/Bundle;
    :cond_3
    iget-object v8, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v8, p0, v6}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    move-object v2, v8

    goto :goto_0

    .restart local v1       #display:Landroid/view/Display;
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v3       #height:I
    .restart local v7       #width:I
    :cond_4
    move v4, v10

    .line 277
    goto :goto_1

    .line 278
    .restart local v4       #isPortrait:Z
    :cond_5
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v8

    move v7, v8

    goto :goto_2

    .line 279
    :cond_6
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v8

    move v3, v8

    goto :goto_3

    .line 303
    .end local v1           #display:Landroid/view/Display;
    .end local v4           #isPortrait:Z
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_7
    const/4 v8, 0x0

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 304
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 307
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 311
    :goto_6
    :try_start_4
    invoke-static {p1, v0, v7, v3}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v8

    goto :goto_5

    .line 313
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #height:I
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #params:Landroid/os/Bundle;
    .end local v7           #width:I
    :catch_0
    move-exception v8

    :cond_8
    move-object v8, v11

    .line 315
    goto :goto_5

    .line 294
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v3       #height:I
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v6       #params:Landroid/os/Bundle;
    .restart local v7       #width:I
    :catch_1
    move-exception v8

    goto :goto_4

    .line 308
    :catch_2
    move-exception v8

    goto :goto_6
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "context"
    .parameter "resId"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    .line 319
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 320
    .local v2, is:Ljava/io/InputStream;
    if-eqz v2, :cond_3

    .line 321
    if-lez p3, :cond_0

    if-gtz p4, :cond_2

    .line 324
    :cond_0
    invoke-static {v2, v5, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 326
    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 329
    :goto_0
    if-eqz v0, :cond_1

    .line 330
    sget v4, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_1
    move-object v4, v0

    .line 353
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :goto_1
    return-object v4

    .line 337
    :cond_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 338
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 339
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 340
    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 342
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 347
    :goto_2
    :try_start_2
    invoke-static {p1, v0, p3, p4}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    goto :goto_1

    .line 348
    :catch_0
    move-exception v1

    .line 349
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid/app/WallpaperManager;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Can\'t generate default bitmap"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v0

    .line 350
    goto :goto_1

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    move-object v4, v5

    .line 353
    goto :goto_1

    .line 327
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v4

    goto :goto_0

    .line 343
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v4

    goto :goto_2
.end method


# virtual methods
.method public onWallpaperChanged()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 205
    return-void
.end method

.method public peekLockscreenBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    .line 211
    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v5, p0, Landroid/app/WallpaperManager$Globals;->mLockscreenWallpaper:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 213
    iget-object v5, p0, Landroid/app/WallpaperManager$Globals;->mLockscreenWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :goto_0
    return-object v5

    .line 216
    :cond_0
    const/4 v5, 0x1

    :try_start_1
    invoke-direct {p0, p1, v5}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Landroid/app/WallpaperManager$Globals;->mLockscreenWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 220
    :goto_1
    :try_start_2
    iget-object v5, p0, Landroid/app/WallpaperManager$Globals;->mLockscreenWallpaper:Landroid/graphics/Bitmap;

    if-nez v5, :cond_5

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDefaultDisplay(Landroid/view/Display;)Landroid/view/Display;

    move-result-object v0

    .line 222
    .local v0, display:Landroid/view/Display;
    const/4 v4, 0x0

    .line 223
    .local v4, width:I
    const/4 v2, 0x0

    .line 224
    .local v2, height:I
    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_2

    move v3, v7

    .line 226
    .local v3, isPortrait:Z
    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    move v4, v5

    .line 227
    :goto_3
    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    move v2, v5

    .line 229
    .end local v3           #isPortrait:Z
    :cond_1
    :goto_4
    const v5, 0x108017f

    invoke-direct {p0, p1, v5, v4, v2}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v5

    monitor-exit p0

    goto :goto_0

    .line 234
    .end local v0           #display:Landroid/view/Display;
    .end local v2           #height:I
    .end local v4           #width:I
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 217
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 218
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManager;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "No memory load current wallpaper"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 225
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .restart local v0       #display:Landroid/view/Display;
    .restart local v2       #height:I
    .restart local v4       #width:I
    :cond_2
    const/4 v5, 0x0

    move v3, v5

    goto :goto_2

    .line 226
    .restart local v3       #isPortrait:Z
    :cond_3
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    move v4, v5

    goto :goto_3

    .line 227
    :cond_4
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    move v2, v5

    goto :goto_4

    .line 233
    .end local v0           #display:Landroid/view/Display;
    .end local v2           #height:I
    .end local v3           #isPortrait:Z
    .end local v4           #width:I
    :cond_5
    iget-object v5, p0, Landroid/app/WallpaperManager$Globals;->mLockscreenWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "returnDefault"

    .prologue
    .line 238
    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 261
    :goto_0
    return-object v1

    .line 242
    :cond_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 243
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 245
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, p1, v1}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 251
    :goto_1
    :try_start_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    .line 253
    const v1, 0x1080180

    :try_start_4
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v2}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v2

    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v3}, Landroid/app/IWallpaperManager;->getHeightHint()I

    move-result v3

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 259
    :goto_2
    :try_start_5
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 249
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid/app/WallpaperManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 261
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_2
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 257
    :catch_1
    move-exception v1

    goto :goto_2
.end method
