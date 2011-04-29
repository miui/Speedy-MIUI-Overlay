.class Landroid/widget/DatePicker$2;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/WheelView$OnWheelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePicker;->setupWheels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePicker;


# direct methods
.method constructor <init>(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Landroid/widget/DatePicker$2;->this$0:Landroid/widget/DatePicker;

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
    .line 132
    iget-object v0, p0, Landroid/widget/DatePicker$2;->this$0:Landroid/widget/DatePicker;

    iget-object v1, p0, Landroid/widget/DatePicker$2;->this$0:Landroid/widget/DatePicker;

    invoke-static {v1}, Landroid/widget/DatePicker;->access$500(Landroid/widget/DatePicker;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/widget/DatePicker;->access$402(Landroid/widget/DatePicker;I)I

    .line 133
    iget-object v0, p0, Landroid/widget/DatePicker$2;->this$0:Landroid/widget/DatePicker;

    invoke-static {v0}, Landroid/widget/DatePicker;->access$200(Landroid/widget/DatePicker;)V

    .line 134
    iget-object v0, p0, Landroid/widget/DatePicker$2;->this$0:Landroid/widget/DatePicker;

    invoke-static {v0}, Landroid/widget/DatePicker;->access$300(Landroid/widget/DatePicker;)V

    .line 135
    return-void
.end method
