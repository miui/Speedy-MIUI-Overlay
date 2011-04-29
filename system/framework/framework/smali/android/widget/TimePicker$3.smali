.class Landroid/widget/TimePicker$3;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/widget/WheelView$OnWheelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePicker;->setupWheels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePicker;


# direct methods
.method constructor <init>(Landroid/widget/TimePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/widget/WheelView;II)V
    .locals 3
    .parameter "wheel"
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/16 v2, 0xc

    .line 163
    iget-object v0, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    iget-object v1, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    invoke-static {v1}, Landroid/widget/TimePicker;->access$300(Landroid/widget/TimePicker;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/widget/TimePicker;->access$102(Landroid/widget/TimePicker;I)I

    .line 164
    iget-object v0, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    invoke-static {v0}, Landroid/widget/TimePicker;->access$400(Landroid/widget/TimePicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    invoke-static {v0}, Landroid/widget/TimePicker;->access$100(Landroid/widget/TimePicker;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 166
    iget-object v0, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/TimePicker;->access$102(Landroid/widget/TimePicker;I)I

    .line 168
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    invoke-static {v0}, Landroid/widget/TimePicker;->access$000(Landroid/widget/TimePicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    invoke-static {v0, v2}, Landroid/widget/TimePicker;->access$112(Landroid/widget/TimePicker;I)I

    .line 172
    :cond_1
    iget-object v0, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    invoke-static {v0}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)V

    .line 173
    return-void
.end method
