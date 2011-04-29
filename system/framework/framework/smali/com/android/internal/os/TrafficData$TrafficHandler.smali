.class Lcom/android/internal/os/TrafficData$TrafficHandler;
.super Landroid/os/Handler;
.source "TrafficData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/TrafficData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrafficHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/TrafficData;


# direct methods
.method private constructor <init>(Lcom/android/internal/os/TrafficData;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/internal/os/TrafficData$TrafficHandler;->this$0:Lcom/android/internal/os/TrafficData;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/TrafficData;Lcom/android/internal/os/TrafficData$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/internal/os/TrafficData$TrafficHandler;-><init>(Lcom/android/internal/os/TrafficData;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 169
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/os/TrafficData$TrafficHandler;->this$0:Lcom/android/internal/os/TrafficData;

    invoke-virtual {v0}, Lcom/android/internal/os/TrafficData;->refresh()V

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
