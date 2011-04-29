.class Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;
.super Lcom/android/internal/view/BaseSurfaceHolder;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StandaloneSurfaceHolder"
.end annotation


# instance fields
.field mFormat:I

.field mHeight:I

.field mReady:Z

.field mSurfaceChanged:Z

.field private mSurfaceSession:Landroid/view/SurfaceSession;

.field mWidth:I

.field final synthetic this$1:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;


# direct methods
.method constructor <init>(Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 89
    iput-object p1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->this$1:Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine;

    invoke-direct {p0}, Lcom/android/internal/view/BaseSurfaceHolder;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 91
    iput-boolean v2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mReady:Z

    .line 92
    iput-boolean v2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mSurfaceChanged:Z

    .line 93
    iput v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mFormat:I

    .line 94
    iput v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mWidth:I

    .line 95
    iput v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mHeight:I

    return-void
.end method

.method private createSurface()V
    .locals 9

    .prologue
    .line 125
    iget-boolean v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mSurfaceChanged:Z

    if-nez v1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-eqz v1, :cond_2

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->release()V

    .line 135
    :goto_1
    :try_start_0
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mWidth:I

    iget v5, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mHeight:I

    iget v6, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mFormat:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;IIIIII)V

    .line 138
    .local v0, surface:Landroid/view/Surface;
    if-eqz v0, :cond_1

    .line 139
    iget-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V

    .line 140
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mReady:Z

    .line 142
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mSurfaceChanged:Z
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    .end local v0           #surface:Landroid/view/Surface;
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 145
    .local v8, e:Landroid/view/Surface$OutOfResourcesException;
    invoke-virtual {v8}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v8           #e:Landroid/view/Surface$OutOfResourcesException;
    :cond_2
    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mSurfaceSession:Landroid/view/SurfaceSession;

    goto :goto_1
.end method


# virtual methods
.method public destory()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mHeight:I

    iput v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mWidth:I

    iput v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mFormat:I

    .line 155
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 156
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0}, Landroid/view/SurfaceSession;->kill()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 158
    return-void
.end method

.method public isCreating()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAllowLockCanvas()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public onRelayoutContainer()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onUpdateSurface()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mReady:Z

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mSurfaceChanged:Z

    .line 151
    iget-object v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 152
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 0
    .parameter "screenOn"

    .prologue
    .line 103
    return-void
.end method

.method public updateSurface(III)V
    .locals 1
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 117
    iget v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mFormat:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mWidth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mHeight:I

    if-eq v0, p3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mSurfaceChanged:Z

    .line 118
    iput p1, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mFormat:I

    .line 119
    iput p2, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mWidth:I

    .line 120
    iput p3, p0, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->mHeight:I

    .line 121
    invoke-direct {p0}, Lcom/android/internal/service/wallpaper/ImageWallpaper$DrawableEngine$StandaloneSurfaceHolder;->createSurface()V

    .line 122
    return-void

    .line 117
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
