.class final Lcom/android/internal/app/ShutdownThread$2;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 122
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 123
    :try_start_0
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$200()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/internal/app/ShutdownThread;->access$302(Z)Z

    .line 125
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/internal/app/ShutdownThread;->access$402(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    :cond_0
    monitor-exit v0

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
