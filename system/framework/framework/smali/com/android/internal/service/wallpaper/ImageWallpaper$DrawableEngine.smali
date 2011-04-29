.class Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/service/wallpaper/ImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawableEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;,
        Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;
    }
.end annotation


# instance fields
.field mBackground:Landroid/graphics/drawable/Drawable;

.field mBuddySurfaceHolder1:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;

.field mBuddySurfaceHolder2:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;

.field private mFinalOffsetX:I

.field private final mLock:Ljava/lang/Object;

.field private mReceiver:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;

.field mScreenHeight:I

.field mScreenWidth:I

.field mVisible:Z

.field mWallpaperHeight:I

.field mWallpaperWidth:I

.field mXOffset:F

.field mYOffset:F

.field final synthetic this$0:Lcom/android/internal/service/wallpaper/ImageWallpaper;


# direct methods
.method constructor <init>(Lcom/android/internal/service/wallpaper/ImageWallpaper;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/internal/service/wallpaper/ImageWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mVisible:Z

    .line 165
    new-instance v0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;

    invoke-direct {v0, p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;-><init>(Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;)V

    iput-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBuddySurfaceHolder1:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;

    .line 166
    new-instance v0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;

    invoke-direct {v0, p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;-><init>(Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;)V

    iput-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBuddySurfaceHolder2:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;

    .line 168
    return-void
.end method

.method private snapOffset()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, bw:I
    const/4 v1, 0x0

    .line 233
    .local v1, ox:I
    iget-object v2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 234
    iget-object v2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 238
    iget v2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mScreenWidth:I

    mul-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_3

    iget v2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mScreenWidth:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x2

    move v1, v2

    .line 240
    :goto_0
    int-to-float v2, v1

    iget v3, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mXOffset:F

    iget v4, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mScreenWidth:I

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mScreenWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 241
    iget v2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mFinalOffsetX:I

    if-eq v2, v1, :cond_2

    .line 242
    iput v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mFinalOffsetX:I

    .line 243
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 245
    iget-object v2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBuddySurfaceHolder1:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    iget-object v2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBuddySurfaceHolder1:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p0, v2, v1, v6, v6}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->snapOffsetForSurface(Landroid/view/Surface;III)V

    .line 248
    :cond_0
    iget-object v2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBuddySurfaceHolder2:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->isReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    iget-object v2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBuddySurfaceHolder2:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v6, v3}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->snapOffsetForSurface(Landroid/view/Surface;III)V

    .line 252
    :cond_1
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 254
    :cond_2
    return-void

    .line 238
    :cond_3
    iget v2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mScreenWidth:I

    if-ge v0, v2, :cond_4

    iget v2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mScreenWidth:I

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x2

    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v6

    goto :goto_0
.end method

.method private snapOffsetForSurface(Landroid/view/Surface;III)V
    .locals 2
    .parameter "s"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "frameCount"

    .prologue
    .line 257
    iget v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mScreenWidth:I

    mul-int/2addr v0, p4

    sub-int/2addr v0, p2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/Surface;->setPosition(II)V

    .line 258
    const/16 v0, 0x4e20

    invoke-virtual {p1, v0}, Landroid/view/Surface;->setLayer(I)V

    .line 259
    return-void
.end method


# virtual methods
.method SeparateDrawFrame(Landroid/view/SurfaceHolder;I)V
    .locals 3
    .parameter "sh"
    .parameter "frameCount"

    .prologue
    .line 290
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 291
    .local v0, c:Landroid/graphics/Canvas;
    if-nez v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 295
    :cond_0
    iget v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mScreenWidth:I

    mul-int/2addr v1, p2

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 297
    iget-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 300
    :cond_1
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method drawFrame()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBuddySurfaceHolder1:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->SeparateDrawFrame(Landroid/view/SurfaceHolder;I)V

    .line 285
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBuddySurfaceHolder2:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->SeparateDrawFrame(Landroid/view/SurfaceHolder;I)V

    .line 287
    :cond_0
    return-void
.end method

.method public offsetChangedDirectCall(FFFF)V
    .locals 0
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xOffsetStep"
    .parameter "yOffsetStep"

    .prologue
    .line 223
    iput p1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mXOffset:F

    .line 224
    iput p2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mYOffset:F

    .line 225
    invoke-direct {p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->snapOffset()V

    .line 226
    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "surfaceHolder"

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, filter:Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;-><init>(Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;)V

    iput-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mReceiver:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;

    .line 183
    iget-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/internal/service/wallpaper/ImageWallpaper;

    iget-object v2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mReceiver:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/service/wallpaper/ImageWallpaper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->updateWallpaper()V

    .line 185
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 186
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 191
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/internal/service/wallpaper/ImageWallpaper;

    iget-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mReceiver:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$WallpaperObserver;

    invoke-virtual {v0, v1}, Lcom/android/internal/service/wallpaper/ImageWallpaper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 192
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBuddySurfaceHolder1:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->destory()V

    .line 193
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBuddySurfaceHolder2:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->destory()V

    .line 194
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 263
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 264
    iput p3, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mScreenWidth:I

    .line 265
    iput p4, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mScreenHeight:I

    .line 266
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBuddySurfaceHolder1:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;

    iget v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mScreenHeight:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->updateSurface(III)V

    .line 267
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBuddySurfaceHolder2:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;

    iget v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mScreenHeight:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->updateSurface(III)V

    .line 268
    invoke-virtual {p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->drawFrame()V

    .line 269
    invoke-direct {p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->snapOffset()V

    .line 270
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 274
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 275
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 280
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 205
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mVisible:Z

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->drawFrame()V

    .line 200
    return-void
.end method

.method updateWallpaper()V
    .locals 4

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 306
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/internal/service/wallpaper/ImageWallpaper;

    iget-object v2, v2, Lcom/android/internal/service/wallpaper/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getFastDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 311
    return-void

    .line 307
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 308
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "ImageWallpaper"

    const-string v3, "Unable to load wallpaper!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 310
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public visibilityChangedDirectCall(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 209
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 210
    if-eqz p1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBuddySurfaceHolder1:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->show()V

    .line 212
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBuddySurfaceHolder2:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->show()V

    .line 217
    :goto_0
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 218
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBuddySurfaceHolder1:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->hide()V

    .line 215
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;->mBuddySurfaceHolder2:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->hide()V

    goto :goto_0
.end method
