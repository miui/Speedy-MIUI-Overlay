.class Landroid/widget/TimePicker$2;
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
    .line 136
    iput-object p1, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

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

    .line 140
    rem-int/lit8 v1, p3, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 141
    .local v0, isAm:Z
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    invoke-static {v1}, Landroid/widget/TimePicker;->access$000(Landroid/widget/TimePicker;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 156
    :goto_1
    return-void

    .line 140
    .end local v0           #isAm:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 144
    .restart local v0       #isAm:Z
    :cond_1
    iget-object v1, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    invoke-static {v1}, Landroid/widget/TimePicker;->access$000(Landroid/widget/TimePicker;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    iget-object v1, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    invoke-static {v1}, Landroid/widget/TimePicker;->access$100(Landroid/widget/TimePicker;)I

    move-result v1

    if-ge v1, v2, :cond_2

    .line 147
    iget-object v1, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    invoke-static {v1, v2}, Landroid/widget/TimePicker;->access$112(Landroid/widget/TimePicker;I)I

    .line 154
    :cond_2
    :goto_2
    iget-object v1, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    invoke-static {v1, v0}, Landroid/widget/TimePicker;->access$002(Landroid/widget/TimePicker;Z)Z

    .line 155
    iget-object v1, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    invoke-static {v1}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)V

    goto :goto_1

    .line 150
    :cond_3
    iget-object v1, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    invoke-static {v1}, Landroid/widget/TimePicker;->access$100(Landroid/widget/TimePicker;)I

    move-result v1

    if-lt v1, v2, :cond_2

    .line 151
    iget-object v1, p0, Landroid/widget/TimePicker$2;->this$0:Landroid/widget/TimePicker;

    invoke-static {v1, v2}, Landroid/widget/TimePicker;->access$120(Landroid/widget/TimePicker;I)I

    goto :goto_2
.end method
