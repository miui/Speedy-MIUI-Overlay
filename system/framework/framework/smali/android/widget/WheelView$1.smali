.class Landroid/widget/WheelView$1;
.super Landroid/os/Handler;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/WheelView;


# direct methods
.method constructor <init>(Landroid/widget/WheelView;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Landroid/widget/WheelView$1;->this$0:Landroid/widget/WheelView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 359
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 364
    :goto_0
    return-void

    .line 361
    :pswitch_0
    iget-object v0, p0, Landroid/widget/WheelView$1;->this$0:Landroid/widget/WheelView;

    invoke-static {v0}, Landroid/widget/WheelView;->access$000(Landroid/widget/WheelView;)V

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
